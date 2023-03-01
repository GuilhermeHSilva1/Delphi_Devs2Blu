unit UMacBook;

interface

uses
  UInterface;

type
  TMacBook = class(TInterfacedObject, INotebook)
    function BuscarTamnhoTela: String;
    function BuscarMemoriaRam: String;
  end;

implementation

{ TMacBook }

function TMacBook.BuscarMemoriaRam: String;
begin
  Result := '4GB DDR3';
end;

function TMacBook.BuscarTamnhoTela: String;
begin
  Result := '11.6 Polegadas';
end;

end.
