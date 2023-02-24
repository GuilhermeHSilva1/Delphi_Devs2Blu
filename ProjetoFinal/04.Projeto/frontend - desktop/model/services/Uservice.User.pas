unit Uservice.User;

interface

uses
  UEntity.Users, UService.Base;

type
  TServiceUser = class(TServiceBase)
    private
      FUser: TUser;
    public
      constructor Create; overload;
      constructor Create(aUser: TUser); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar; override;
      procedure Excluir; override;

      function ObterRegistro(const aID: Integer): TObject; override;
  end;

implementation

uses
  Rest.Types, System.SysUtils, FireDAC.Comp.Client, Dataset.Serialize, System.JSON,
  UUTils.Constants, System.Classes;

{ TServiceUser }

constructor TServiceUser.Create;
begin
  Inherited Create;
end;

constructor TServiceUser.Create(aUser: TUser);
begin
  FUser := aUser;

  Self.Create;
end;

destructor TServiceUser.Destroy;
begin
  FreeAndNil(FUSer);
  inherited;
end;

procedure TServiceUser.Excluir;
begin
  inherited;
  //M�todo sem implementa��o no momento
end;

procedure TServiceUser.Listar;
begin
  inherited;
  //M�todo sem implementa��o no momento
end;

function TServiceUser.ObterRegistro(const aID: Integer): TObject;
var
  xMemTable: TFDMemTable;
begin
  Result := nil;

  xMemTable := TFDMemTable.Create(nil);

  try
    FRESTClient.BaseURL := URL_BASE_USER + '/' + aID.ToString;
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
        raise Exception.Create('Usu�rio n�o autorizado');
      else
        raise Exception.Create('Erro n�o catalogado');
    end;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
  inherited;
end;

end.
