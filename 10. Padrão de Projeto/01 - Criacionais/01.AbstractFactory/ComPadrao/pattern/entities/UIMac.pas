unit UIMac;

interface

uses
  UInterface;

type
  TIMac = class(TInterfacedObject, IDesktop)
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHD: String;
  end;

implementation

{ TIMac }

function TIMac.BuscarNomeProcessador: String;
begin
  Result := 'Inter Core I7';
end;

function TIMac.BuscarTamanhoHD: String;
begin
  Result := '500 GB';
end;

end.
