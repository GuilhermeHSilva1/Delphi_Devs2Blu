program Observer;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  USubject in 'pattern\USubject.pas',
  UObserver in 'pattern\UObserver.pas',
  UNotificacao in 'pattern\UNotificacao.pas',
  UConcreteObserver_Log in 'pattern\UConcreteObserver_Log.pas' {fraLog: TFrame},
  UConcreteObserver_Saldo in 'pattern\UConcreteObserver_Saldo.pas' {fraSaldo: TFrame},
  UConcreteOBserver_Historico in 'pattern\UConcreteOBserver_Historico.pas' {fraHistorico: TFrame},
  UConcreteObserver_Subject in 'pattern\UConcreteObserver_Subject.pas' {frmCadastro: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
