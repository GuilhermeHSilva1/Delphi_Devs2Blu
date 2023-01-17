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
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularRendimento;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalcularRendimento;
var
  xReal, xReal2:double;
begin
  xReal:= StrToFloat(Edit1.Text);
  xReal2:= xReal;
  xReal:= xReal * 1.07;

  xReal2:= xReal - xReal2;

  label2.Caption:= 'Seu rendimento ao mês vai dar: ' + FormatFloat('0.00', xReal);
  label3.Caption:= 'Aumento de: R$' + FormatFloat('0.00', xReal2) + ' Ao mes';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  CalcularRendimento;
end;

end.

