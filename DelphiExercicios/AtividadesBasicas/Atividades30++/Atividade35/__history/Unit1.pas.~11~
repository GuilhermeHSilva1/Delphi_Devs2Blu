unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCliente = (Residencia, Comercio, Industria, Fazenda);
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    TeditConsumo: TEdit;
    btnCalcular: TButton;
    Label1: TLabel;
    TeditDesconto: TEdit;
    Label2: TLabel;
    btnLimpar: TButton;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Calcular;
var
  xValor, xConta, xDesconto: double;
begin
  xDesconto := StrToFloatDef(TeditDesconto.Text,0);
  if TeditConsumo.Text = '' then
    showMessage('Por favor digite um valor')
  else if TeditConsumo.Text = '0' then
    showMessage('Por favor digite um valor acima de 0')
  else
  begin
    if not TryStrToFloat(TeditConsumo.Text, xValor) then
    raise Exception.Create('Valor Invalido');

    case TCliente(RadioGroup1.ItemIndex) of
      Residencia:
      begin
        xConta := ((xValor * 0.60) - xDesconto);
        showMessage('Sua conta esse mês é de R$ ' + FormatFloat('0.00',xConta));
      end;
      Comercio:
      begin
        xConta:= ((xValor * 0.48) - xDesconto);
        showMessage('Sua conta esse mês é de R$ ' + FormatFloat('0.00',xConta));
      end;
      Industria:
      begin
        xConta:= ((xValor * 1.29) - xDesconto);
        showMessage('Sua conta esse mês é de R$ ' + FormatFloat('0.00',xConta));
      end;
      Fazenda:
      begin
        xConta := ((xValor * 2.18) - xDesconto);
        showMessage('Sua conta esse mês é de R$ ' + FormatFloat('0.00',xConta));
      end
      else
        showMessage('Informe o tipo de estrutura');
    end;

  end;
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  TeditConsumo.Text  :='';
  TeditDesconto.Text :='';
  RadioGroup1.ItemIndex := -1;
end;

end.
