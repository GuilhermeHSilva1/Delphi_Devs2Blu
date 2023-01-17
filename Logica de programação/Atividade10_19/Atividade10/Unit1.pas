unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularPrestacao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalcularPrestacao;
var
  xReal:Double;
begin
  xReal:= StrToFloat(Edit1.Text);
  xReal:= xReal / 5;
  label2.Caption:= 'O valor de cada prestação sera: R$:' + FormatFloat('0.##' ,xReal);
  label3.Caption:= 'Reais Sem Juros';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  CalcularPrestacao;
end;

end.
