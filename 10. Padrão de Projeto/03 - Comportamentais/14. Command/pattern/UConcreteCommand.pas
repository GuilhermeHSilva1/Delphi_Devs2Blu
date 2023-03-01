unit UConcreteCommand;

interface

uses
  UCommand, UReceiver;

type
  TProcessos = class(TInterfacedObject, ICommand)
    private
      FReceiver: TReceiver;

    public
      constructor Create(aReceiver: TReceiver);

      procedure Execute;
  end;

  TProgramas = class(TInterfacedObject, Icommand)
    private
      FReceiver: TReceiver;

    public
      constructor Create(aReceiver: TReceiver);

      procedure Execute;
  end;

  TVariaveisAmbiente = Class(TInterfacedObject, Icommand)
    private
      FReceiver: TReceiver;

    public
      constructor Create(aReceiver: TReceiver);

      procedure Execute;
  End;

implementation

{ TProcessos }

constructor TProcessos.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProcessos.Execute;
begin
  FReceiver.ExtrairProcessor;
end;

{ TProgramas }

constructor TProgramas.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProgramas.Execute;
begin
  FReceiver.ExtrairProgramas;
end;

{ TVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TVariaveisAmbiente.Execute;
begin
  FReceiver.ExtrairVariaveisAmbiente;
end;

end.
