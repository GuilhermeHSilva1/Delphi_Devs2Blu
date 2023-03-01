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
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SomarValores;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.SomarValores;
var
  xNum1, xNum2, xResultado: Double;
begin
  xNum1:= StrToFloat(Edit1.Text);
  xNum2:= StrToFloat(Edit2.Text);
  xResultado:= xNum1 + xNum2;
  Label3.Caption:= 'Soma: ' + FloatToStr(xResultado);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SomarValores;
end;

end.
