program ComAbstract;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UInterface in '..\pattern\factorys\UInterface.pas',
  UIMac in '..\pattern\entities\UIMac.pas',
  UInspiron in '..\pattern\entities\UInspiron.pas',
  UMacBook in '..\pattern\entities\UMacBook.pas',
  UVostro in '..\pattern\entities\UVostro.pas',
  UApple in '..\pattern\factorys\UApple.pas',
  UDell in '..\pattern\factorys\UDell.pas',
  UFactoryMethod in '..\pattern\factorys\UFactoryMethod.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
