program Calculadora;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UCalculadora in 'UCalculadora.pas',
  ICalculadoraService in 'ICalculadoraService.pas',
  UCalculadoraServico in 'UCalculadoraServico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
