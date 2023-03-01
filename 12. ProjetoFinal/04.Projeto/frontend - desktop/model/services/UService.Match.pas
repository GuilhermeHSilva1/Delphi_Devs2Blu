unit UService.Match;

interface

uses
  UEntity.Matchs,
  Uservice.base,
  Generics.Collections;

type
  TServiceMatch = class(TServiceBase)
    private
      FMatch: TMatch;
      FMatchs: TObjectList<TMatch>;

    function GetMatchs: TObjectList<TMatch>;

    procedure PreencherMatchs(const aJsonMatchs: String);

    public
      constructor Create; overload;
      constructor Create(aMatch: TMatch); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar; override;
      procedure Excluir; override;

      function ObterRegistro(const aId: Integer): TObject; override;

      property Matchs: TObjectList<TMatch> read GetMatchs;
  end;

implementation

{ TServiceMatch }

uses
  REST.Types,
  System.JSON, System.SysUtils, System.Classes, FireDac.comp.Client, DataSet.Serialize,
  UUtils.Constants, UEntity.Teams, UUtils.Functions;

{ TServiceMatch }

constructor TServiceMatch.Create;
begin
  Inherited Create;

  FMatchs := TObjectList<TMatch>.Create;
end;

constructor TServiceMatch.Create(aMatch: TMatch);
begin
  FMatch := aMatch;

  Self.Create;
end;

destructor TServiceMatch.Destroy;
begin
  FreeAndNil(FMatch);
  FreeAndNil(FMatchs);
  inherited;
end;

procedure TServiceMatch.Excluir;
begin
  if (not Assigned(FMatch)) or (FMatch.Id = 0) then
    raise Exception.Create('Nenhum time foi escolhido para exclus�o.');

  try
    FRestClient.BaseURL := format(URL_BASE_MATCH + '/%d', [FMatch.Id]);
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

function TServiceMatch.GetMatchs: TObjectList<TMatch>;
begin
  Result := FMatchs;
end;

procedure TServiceMatch.Listar;
begin
  try
    FRESTClient.BaseURL := URL_BASE_MATCH;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    case FRESTResponse.StatusCode of
      API_SUCESSO:
        Self.PreencherMatchs(FRESTResponse.Content);
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usu�rio n�o autorizado.');
      else
        raise Exception.Create('Erro ao carregar a lista de Times. C�digo do Erro: ' + FRESTResponse.StatusCode.ToString);
    end;
  except
    on e: exception do
      raise Exception.Create(e.Message);
  end;
end;

function TServiceMatch.ObterRegistro(const aId: Integer): TObject;
var
  xMemTable: TFDMemTable;
begin
  Result := nil;

  xMemTable := TFDMemTable.Create(nil);

  try
    FRESTClient.BaseURL := URL_BASE_MATCH + '/' + aId.ToString;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = API_SUCESSO then
    begin
      xMemTable.LoadFromJSON(FRESTResponse.Content);

      if xMemTable.FindFirst then
        Result := TMatch.Create(xMemTable.FieldByName('id').AsInteger);
    end;
  finally
    FreeAndNil(xMemTable);
  end;
end;

procedure TServiceMatch.PreencherMatchs(const aJsonMatchs: String);
var
  xMemTable: TFDMemTable;
  xMemTableTeam: TFDMemTable;
  xTeamA, xTeamB: TTeam;
  xStatus: Byte;
begin
  FMatchs.Clear;

  xMemTable     := TFDMemTable.Create(nil);
  xMemTableTeam := TFDMemTable.Create(nil);

  try
    xMemTable.LoadFromJSON(FRESTResponse.Content);

    while not xMemTable.Eof do
    begin
      xMemTableTeam.LoadFromJSON(xMemTable.FieldByName('team_A').AsString);
      xTeamA := TTeam.Create(xMemTableTeam.FieldByName('name').AsString);

      xMemTableTeam.LoadFromJSON(xMemTable.FieldByName('team_B').AsString);
      xTeamB := TTeam.Create(xMemTableTeam.FieldByName('name').AsString);

      xStatus := TUtilsFunctions.IIF<Byte>(
        xMemTable.FieldByName('status').AsString = 'true',
        1, 0);

      FMatchs.Add(TMatch.Create(xMemTable.FieldByName('id').AsInteger,
                                xMemTable.FieldByName('date').AsDateTime,
                                xMemTable.FieldByName('hour').AsDateTime,
                                xTeamA,
                                xTeamB,
                                xMemTable.FieldByName('result_Team_A').AsInteger,
                                xMemTable.FieldByName('result_Team_B').AsInteger,
                                xStatus));

      xMemTable.Next;
    end;
  finally
    FreeAndNil(xMemTable);
    FreeAndNil(xMemTableTeam);
  end;
end;

procedure TServiceMatch.Registrar;
begin
  try
    FRESTClient.BaseURL := URL_BASE_MATCH;
    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(FMatch.JSON);
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
