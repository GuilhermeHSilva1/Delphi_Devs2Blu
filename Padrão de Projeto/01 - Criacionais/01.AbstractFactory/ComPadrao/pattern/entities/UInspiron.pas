unit UInspiron;

interface

uses
  UInterface;

type
  TInspiron = class(TInterfacedObject, IDesktop)
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHD: String;
  end;

implementation

{ TInspiron }

function TInspiron.BuscarNomeProcessador: String;
begin
  Result := 'Intel Core I5';
end;

function TInspiron.BuscarTamanhoHD: String;
begin
  Result := '1 TB';
end;

end.
