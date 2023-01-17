unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.Effects, FMX.Filter.Effects;

type
  TfrmPrincipal = class(TForm)
    ltyPrincipal: TLayout;
    lytCabecario: TLayout;
    rect_Cabecario: TRectangle;
    lblTitulo: TLabel;
    lytInformacoes: TLayout;
    edtAltura: TEdit;
    lblAltura: TLabel;
    edtKg: TEdit;
    lblKg: TLabel;
    lblPesoIdeal: TLabel;
    btnCalcular: TButton;
    rect_Botao: TRectangle;
    ShadowEffect1: TShadowEffect;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificarIMC(pIMC: Double);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  xAltura: Double;
  xPeso: Double;
  xIMC: Double;
begin

  //Caso tiver . será substituido pela ,
  edtKg.Text := StringReplace(edtKg.Text, '.', ',', []);
  //Caso a Altura tiver . o ponto sera retirado
  edtAltura.Text := StringReplace(edtAltura.Text, '.', '', []);

  if not TryStrToFloat(edtAltura.Text, xAltura) then
    raise Exception.Create('Altura Invalida');
  if not TryStrToFloat(edtKg.Text, xPeso) then
    raise Exception.Create('Peso Invalido');

  xAltura := xAltura / 100;
  xIMC := xPeso / (xAltura * xAltura);

  VerificarIMC(xIMC);
end;

procedure TfrmPrincipal.VerificarIMC(pIMC: Double);
begin

  if pIMC < 18.5 then
    showMessage('Classificação: Magreza || Obesidade(GRAU) 0')
  else if (pIMC >= 18.5) and (pIMC <= 24.9) then
    showMessage('Classificação: Normal || Obesidade(GRAU) 0')
  else if (pIMC >= 25) and (PIMC <= 29.9)then
    showMessage('Classificação: SobrePeso || Obesidade(GRAU) I')
  else if (pIMC >= 30) and (pIMC <= 39.9) then
    showMessage('Classificação: Obesidade || Obesidade(GRAU) II')
  else
    showMessage('Classificação: Obesidade Grave || Obesidade(GRAU) III');

  lblPesoIdeal.Text := 'SEU IMC (' + formatFloat('##.#', pIMC) + ')';
end;

end.
