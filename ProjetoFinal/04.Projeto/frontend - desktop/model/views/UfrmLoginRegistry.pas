unit UfrmLoginRegistry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmLoginRegistry = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectLogin: TRectangle;
    rectRegistrar: TRectangle;
    Label1: TLabel;
    rectVoltar: TRectangle;
    Label3: TLabel;
    rectNome: TRectangle;
    rectPassword: TRectangle;
    edtNome: TEdit;
    edtPassword: TEdit;
    edtLogin: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rectRegistrarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
      procedure VoltarTela;
      procedure Registrar;
  public
    { Public declarations }
  end;

var
  frmLoginRegistry: TfrmLoginRegistry;

implementation

uses
  UfrmLogin,
  Uservice.User,
  Uservice.Intf,
  UEntity.Users;

{$R *.fmx}

{ TfrmLoginRegistry }

procedure TfrmLoginRegistry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmLoginRegistry := nil;
end;

procedure TfrmLoginRegistry.rectRegistrarClick(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TfrmLoginRegistry.rectVoltarClick(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TfrmLoginRegistry.Registrar;
var
  xServiceUser: IService;
begin

  if Trim(edtLogin.Text)= EmptyStr then
    raise Exception.Create('Informe o Login');

  if Trim(edtNome.Text) = EmptyStr then
    raise Exception.Create('Informe o Nome.');

  if Trim(edtPassword.Text) = EmptyStr then
    raise Exception.Create('Informe a Senha.');

  xServiceUser := TServiceUser.Create(
    TUser.Create(Trim(edtNome.Text),
                 Trim(edtLogin.Text),
                 Trim(edtPassword.Text)));

    try
      xServiceUser.Registrar;
      ShowMessage('Usu�rio registrado com sucesso.');
      Self.VoltarTela;
    except on E: Exception do
      raise Exception.Create('Erro: ' + E.Message);
    end;
end;

procedure TfrmLoginRegistry.VoltarTela;
begin
  if not Assigned(frmLogin) then
    frmLogin := TfrmLogin.Create(Application);

    frmLogin.Show;
    Application.MainForm := frmLogin;
    Self.Close;
end;

end.
