program Aula1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  udmPedidos in 'udmPedidos.pas' {dmPedidos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.Run;
end.
