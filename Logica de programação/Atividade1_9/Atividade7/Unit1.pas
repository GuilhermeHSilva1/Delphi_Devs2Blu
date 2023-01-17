unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Temperatura = (C�, �F, K);
  TForm1 = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Graus: TLabel;
    Fahren: TLabel;
    Kelvin: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConverterGrau;
    procedure ConverterFahren;
    procedure ConverterKelvin;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ConverterGrau;
var
  xValor, F, K: Integer;
begin
  xValor:= StrToInt(Edit1.Text);

  F:= (xValor*9) div 5 + 32;
  K:= xValor + 273;

  Graus.Caption:= 'C�: ' + IntToStr(xValor);
  Fahren.Caption:= '�F: ' + IntToStr(F);
  Kelvin.Caption:= 'K: ' + IntToStr(K);
end;

procedure TForm1.ConverterFahren;
var
  xValor, C, K: Integer;
begin
  xValor:= StrToInt(Edit1.Text);

  C:= ((xValor - 32) * 5) div 9;
  K:= (((xValor - 32) * 5) div 9) + 273;

  Graus.Caption:= 'C�: ' + IntToStr(C);
  Fahren.Caption:= '�F: ' + IntToStr(xValor);
  Kelvin.Caption:= 'K: ' + IntToStr(K);
end;

procedure TForm1.ConverterKelvin;
var
  xValor, F, C: Integer;
begin
  xValor:= StrToInt(Edit1.Text);

  F:= (((xValor - 273) * 9) div 5) + 32;
  C:= xValor - 273;

  Graus.Caption:= 'C�: ' + IntToStr(C);
  Fahren.Caption:= '�F: ' + IntToStr(F);
  Kelvin.Caption:= 'K: ' + IntToStr(xValor);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  case Temperatura(RadioGroup1.ItemIndex) of
      C�:
    begin
      ConverterGrau;
    end;
      �F:
    begin
      ConverterFahren;
    end;
      K:
    begin
      ConverterKelvin;
    end;
  end;
end;

end.
