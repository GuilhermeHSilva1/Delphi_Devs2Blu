unit UDAO.Produtos;

interface

uses
  System.JSON,
  DataSET.Serialize,
  UDAO.Intf;

type
  TDAOProdutos = class (TInterfacedObject, IDAO)
    function ObterRegistros: TJSonArray;
    function ProcurarPorID(const aIdentificador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

uses
  FireDAC.comp.Client,
  System.SysUtils,
  UUTil.Banco;

{ TDAOProdutos }

function TDAOProdutos.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilBanco.AdicionarRegistro('PRODUTOS', aRegistro.ToJSON);
  except on E: Exception do
    raise Exception.Create('Erro ao Adicionar Registro: ' + e.Message);
  end;
end;

function TDAOProdutos.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilBanco.RemoverRegistro('PRODUTOS', aIdentificador);
  except on E: Exception do
    raise Exception.Create('Erro ao Remover Registro: ' + E.Message);
  end;
end;

function TDAOProdutos.ObterRegistros: TJSonArray;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
    try
      try
        xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM PRODUTOS');

        Result := xQuery.ToJSONArray();
      except on E: Exception do
         raise Exception.Create('Erro ao obter registros: ' + e.Message);
      end;
    finally
      FreeAndNil(xQuery);
    end;
end;

function TDAOProdutos.ProcurarPorID(const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := Nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta(
      Format('SELECT * FROM PRODUTOS WHERE ID = %d', [aIdentificador]));

      Result := xQuery.ToJSONObject();

    except on E: Exception do
      raise Exception.Create('Erro ao Obter Registros: ' + E.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.
