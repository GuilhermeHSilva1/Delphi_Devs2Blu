unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function VerificarNumero(const pNum1, pNum2:double): Integer;
begin
  if (pNum1 = pNum2) then
    showMessage('Os numeros são iguais')
  else if (pNum1 <> pNum2) then
  begin
    showMessage('Os numeros são diferentes');
    if (pNum1 > pNum2) then
      showMessage('O primeiro numero digitado é maior')
    else
      showMessage('O Segundo numero digitado é maior');
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNum1, xNum2: Double;
begin
  if not TryStrToFloat(Edit1.Text ,xNum1) then
    raise Exception.Create('Primeiro valor invalido');

  if not TryStrToFloat(Edit2.Text, xNum2) then
    raise Exception.Create('Segundo valor Invalido');

  VerificarNumero(xNum1, xNum2);
end;

end.
