unit UService.User;

interface

uses
  UEntity.Users, UService.Base, Generics.Collections;

type
  TServiceUser = class(TServiceBase)
    private
      FUser: TUser;
      FUsers: TObjectList<TUser>;

    function GetUsers: TObjectList<TUser>;

    public
      constructor Create; overload;
      constructor Create(aUser: TUser); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar; override;
      procedure Excluir; override;

      function ObterRegistro(const aId: Integer): TObject; override;

      property Users: TObjectList<TUser> read GetUsers;
  end;

implementation

{ TServiceUser }

uses
  REST.Types,
  System.JSON, System.SysUtils, System.Classes, FireDac.comp.Client, DataSet.Serialize,
  UUtils.Constants, UEntity.Matchs;

constructor TServiceUser.Create;
begin
  Inherited Create;

  FUsers := TObjectList<TUser>.Create;
end;

constructor TServiceUser.Create(aUser: TUser);
begin
  FUser := aUser;

  Self.Create;
end;

destructor TServiceUser.Destroy;
begin
  FreeAndNil(FUsers);
  FreeAndNil(FUser);
  inherited;
end;

procedure TServiceUser.Excluir;
begin
  if (not Assigned(FUser)) or (FUser.Id = 0) then
    raise Exception.Create('Nenhum time foi escolhido para exclus�o.');

  try
    FRestClient.BaseURL := format(URL_BASE_USER + '/%d', [FUser.Id]);
    FRESTRequest.Method := rmDelete;
    FRESTRequest.execute;

    case FRESTResponse.StatusCode of
      API_SUCESSO_SEM_RETORNO:
        Exit;
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usu�rio n�o autorizado.');
      else
        raise Exception.Create('Erro n�o catalogado');
    end;
  except on E: Exception do
    raise Exception.Create(e.message);
  end;
end;

function TServiceUser.GetUsers: TObjectList<TUser>;
begin
  Result := FUsers;
end;

procedure TServiceUser.Listar;
var
  xMemTable: TFDMemTable;
begin
  FUsers.Clear;

  xMemTable := TFDMemTable.Create(nil);

  try
    try
      FRESTClient.BaseURL := URL_BASE_USER;
      FRESTRequest.Method := rmGet;
      FRESTRequest.Execute;

      case FRESTResponse.StatusCode of
        API_SUCESSO:
        begin
          xMemTable.LoadFromJSON(FRESTResponse.Content);

          while not xMemTable.Eof do
          begin
            FUsers.add(TUser.Create(xMemTable.FieldByName('id').AsInteger,
                                    xMemTable.FieldByName('name').AsString,
                                    xMemTable.FieldByName('login').AsString,
                                    xMemTable.FieldByName('password').AsString,
                                    xMemTable.FieldByName('status').AsInteger));

            xMemTable.Next;
          end;
        end;
        API_NAO_AUTORIZADO:
          raise Exception.Create('Usu�rio n�o autorizado.');
        else
          raise Exception.Create('Erro ao carregar a lista de Times. C�digo do Erro: ' + FRESTResponse.StatusCode.ToString);
      end;
    except on E: Exception do
      raise Exception.Create(e.Message);
    end;
  finally
    FreeAndNil(xMemTable);
  end;
end;

function TServiceUser.ObterRegistro(const aId: Integer): TObject;
var
  xMemTable: TFDMemTable;
begin
  Result := nil;

  xMemTable := TFDMemTable.Create(nil);

  try
    FRESTClient.BaseURL := URL_BASE_USER + '/' + aId.ToString;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = API_SUCESSO then
    begin
      xMemTable.LoadFromJSON(FRESTResponse.Content);

      if xMemTable.FindFirst then
        Result := TUser.Create(xMemTable.FieldByName('id').AsInteger);
    end;
  finally
    FreeAndNil(xMemTable);
  end;
end;

procedure TServiceUser.Registrar;
begin
  try
    FRESTClient.BaseURL := URL_BASE_USER;
    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(FUser.JSON);
    FRESTRequest.Execute;

    case FRESTResponse.StatusCode of
      API_CRIADO:
        Exit;
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usu�rio n�o autorizado.');
      else
        raise Exception.Create('Erro n�o catalogado.');
    end;
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

end.
