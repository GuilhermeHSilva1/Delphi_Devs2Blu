unit UInvoker;

interface

uses
  System.Classes, UCommand;

type
  TInvoker = class
    private
      FComandos: TInterfaceList;

    public
      constructor Create;
      procedure Add(aComando: Icommand);
      procedure ExtrairInformacoes;
  end;

implementation

{ TInvoker }

procedure TInvoker.Add(aComando: Icommand);
begin
  FComandos.Add(aComando);
end;

constructor TInvoker.Create;
begin
  FComandos := TInterfaceList.Create;
end;

procedure TInvoker.ExtrairInformacoes;
var
  xContador: Integer;
begin
  for xContador := 0 to Pred(FComandos.Count) do
  begin
    ICommand(FComandos[xContador]).Execute;
  end;
end;

end.
