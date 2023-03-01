unit UFactoryMethod;

interface

uses UInterface;

type
  TFactortMethod  = class(TInterfacedObject, IFactoryMethod)
  public
    FMarca : IFactoryMarca;
    function ConsultarMarca(const aValor: String) : IFactoryMarca;
  end;

implementation

{ TFactortMethod }

uses UDell, UApple;

function TFactortMethod.ConsultarMarca(const aValor: String): IFactoryMarca;
begin
  if aValor = 'Dell' then
    Result := TDell.Create
  else if aValor = 'Apple' then
    Result := TApple.Create;
end;

end.
