program Adapter;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UAdapter in 'Pattern\Adapter\UAdapter.pas',
  UWebServiceCorreios in 'Pattern\Adapter\UWebServiceCorreios.pas',
  UAdaptee in 'Pattern\Adapter\UAdaptee.pas',
  UInterfaceViaCEP in 'Pattern\Adapter\UInterfaceViaCEP.pas',
  UTarget in 'Pattern\Adapter\UTarget.pas',
  UWebServiceViaCEP in 'Pattern\Adapter\UWebServiceViaCEP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
