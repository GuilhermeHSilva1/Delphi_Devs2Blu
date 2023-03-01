unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UConcreteObserver_Subject,
  UConcreteObserver_Saldo, UConcreteObserver_Log, UConcreteOBserver_Historico;

type
  TfrmPrincipal = class(TForm)
    fraHistorico1: TfraHistorico;
    fraLog1: TfraLog;
    fraSaldo1: TfraSaldo;
    frmCadastro1: TfrmCadastro;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmCadastro1.AdicionarObserver(fraSaldo1);
  frmCadastro1.AdicionarObserver(fraHistorico1);
  frmCadastro1.AdicionarObserver(fraLog1);
end;

end.
