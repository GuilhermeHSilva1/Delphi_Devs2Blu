unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure VerificarNumero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.VerificarNumero;
var xNumTotal,xPositivo, xNegativo, I: Integer;
    xNum1: Double;
begin
  if not TryStrToInt(InputBox('Informar','Quantos numeros deseja digitar? :','0'),xNumTotal) then
    raise Exception.Create('Digite apenas numeros inteiros');

  xPositivo:=0;
  xNegativo:=0;
  I:= 0;
  while (I <> xNumtotal) do
  begin
    if not TryStrToFloat(InputBox('Informar','Digite um numero:','0'), xNum1) then
      raise Exception.Create('Digite um numero valido');

      if xNum1 > 0 then
      begin
        Memo1.Lines.Add('N°: ' + Formatfloat('0.00', xNum1) + ' / É Positivo');
        xPositivo:= xPositivo + 1;
      end
      else if xNum1 < 0 then
      begin
        Memo1.Lines.Add('N°: ' + Formatfloat('0.00', xNum1) + ' / É Negativo');
        xNegativo:= xNegativo + 1;
      end
      else
        Memo1.Lines.Add('N°: ' + Formatfloat('0.00', xNum1) + ' / É 0');
        I:= I + 1;
  end;
    label2.Caption:= 'Total de numeros Positivos: ' + IntToStr(xPositivo);
    label3.Caption:= 'Total de numeros Negativos: ' + IntToStr(xNegativo);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  VerificarNumero;
end;

end.
