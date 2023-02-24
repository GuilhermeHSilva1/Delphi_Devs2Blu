unit UfrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmLogin = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectLogin: TRectangle;
    rectRegistrar: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    rectSair: TRectangle;
    Label3: TLabel;
    procedure rectSairClick(Sender: TObject);
    procedure rectLoginClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirLoginAuthentication;
    procedure AbrirLoginRegistry;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses UfrmLoginAuthentication, UfrmLoginRegistry;

procedure TfrmLogin.AbrirLoginAuthentication;
begin
  if not assigned(frmLoginAuthentication) then
    frmLoginAuthentication := TfrmLoginAuthentication.Create(Application);

  frmLoginAuthentication.Show;
  Application.MainForm := frmLoginAuthentication;
end;

procedure TfrmLogin.AbrirLoginRegistry;
begin
  if not assigned(frmLoginRegistry) then
    frmLoginRegistry := TfrmLoginRegistry.Create(Application);

  frmLoginRegistry.Show;
  Application.MainForm := frmLoginRegistry;
end;

procedure TfrmLogin.rectLoginClick(Sender: TObject);
begin
  Self.AbrirLoginAuthentication;
end;

procedure TfrmLogin.rectRegistrarClick(Sender: TObject);
begin
  Self.AbrirLoginRegistry;
end;

procedure TfrmLogin.rectSairClick(Sender: TObject);
begin
  FrmLogin.Close;
end;

end.
