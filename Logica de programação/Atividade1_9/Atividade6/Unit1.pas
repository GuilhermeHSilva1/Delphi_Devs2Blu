unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Label3: TLabel;
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
function TrocarVariavel (var pNum1, pNum2: double): Double;
var
  xVar: Double;
begin
  xVar:= pNum2;
  pNum2:= pNum1;
  pNum1:= xVar;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNum1, xNum2: double;
begin
  xNum1:= StrToFloat(Edit1.Text);
  xNum2:= StrToFloat(Edit2.Text);

  TrocarVariavel(xNum1, xNum2);

  label3.Caption:= 'N�1 Ficou: ' + FloatToStr(xNum1);
  label4.Caption:= 'N�2 Ficou: ' + FloatToStr(xNum2);
end;
end.
