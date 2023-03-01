unit UDAO.Intf;

interface

uses
  System.JSON;

type
  IDAO = Interface
    function ObterRegistros: TJSonArray;
    function ProcurarPorID(const aIdentificador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  End;

  IDAOUNIDADE = Interface
    function ObterRegistros: TJSonArray;
    function ProcurarPorID(const aIdentificador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  End;

implementation

end.
