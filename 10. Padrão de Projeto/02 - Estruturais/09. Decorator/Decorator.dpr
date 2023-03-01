program Decorator;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UInterfaceComponent in 'pattern\Decorator\UInterfaceComponent.pas',
  UDecorator in 'pattern\Decorator\UDecorator.pas',
  UConcreteDecorator_Windows in 'pattern\Decorator\UConcreteDecorator_Windows.pas',
  UConcreteDecorator_Usuario in 'pattern\Decorator\UConcreteDecorator_Usuario.pas',
  UConcreteDecorator_DataHora in 'pattern\Decorator\UConcreteDecorator_DataHora.pas',
  UConcreteComponent in 'pattern\Decorator\UConcreteComponent.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
