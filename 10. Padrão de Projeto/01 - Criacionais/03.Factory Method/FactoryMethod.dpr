program FactoryMethod;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UTipoPrazo in 'Pattern\factoryMethod\UTipoPrazo.pas',
  UPrazoMensal in 'Pattern\factoryMethod\UPrazoMensal.pas',
  UPrazoAnual in 'Pattern\factoryMethod\UPrazoAnual.pas',
  UFabricaPrazos in 'Pattern\factoryMethod\UFabricaPrazos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
