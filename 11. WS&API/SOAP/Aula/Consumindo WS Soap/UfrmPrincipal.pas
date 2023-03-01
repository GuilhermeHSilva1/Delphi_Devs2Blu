unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtValor: TEdit;
    btnEchoDouble: TButton;
    btnHelloWorld: TButton;
    Label1: TLabel;
    lblResultado: TLabel;
    procedure btnEchoDoubleClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
    procedure EchoDouble;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses IHello_World1;

procedure TForm2.btnEchoDoubleClick(Sender: TObject);
begin
  Self.EchoDouble;
end;

procedure TForm2.btnHelloWorldClick(Sender: TObject);
begin
  lblResultado.Caption := GetIHello_World.echoHelloWorld;
end;

procedure TForm2.EchoDouble;
var
  xValor: Double;
  xResultado: Double;
begin
  if not TryStrToFloat(edtValor.Text, xValor) then
    raise Exception.Create('Valor Inválido');

  xResultado := GetIHello_World.echoDouble(xValor);
  lblResultado.Caption := 'Resultado: ' + xResultado.ToString;
end;

end.
