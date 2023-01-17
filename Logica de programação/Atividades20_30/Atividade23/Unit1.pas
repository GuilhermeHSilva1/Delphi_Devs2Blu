unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
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

function Verificar(var pNum: Double): Boolean;
begin
  if pNum > 80 then
    showMessage('Esse numero � maior que 80')
  else if pNum < 25 then
    showMessage('Esse numero � menor que 25')
  else if pNum = 40 then
    showMessage('Esse numero � igual a 40')
  else
    showMessage('Esse numero esta entre os numeros 80 e 25');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNum: Double;
begin
  if not TryStrToFloat(Edit1.Text,xNum) then
    raise Exception.Create('Por favor, Digite um numero!!');

  Verificar(xNum);

end;

end.
