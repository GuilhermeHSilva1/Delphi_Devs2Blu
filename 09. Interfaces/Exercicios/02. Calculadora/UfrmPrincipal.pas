unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtPrimeiroNum: TEdit;
    edtSegundoNum: TEdit;
    ComboBox1: TComboBox;
    btnCalcular: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCalculadoraServico, UCalculadora;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  xCalcular: TServicoCalculadora;
  xNum1, xNum2, xResultado: Double;
begin
  try
    xNum1 := StrToFloat(edtPrimeiroNum.Text);
    xNum2 := StrToFloat(edtSegundoNum.Text);

    xCalcular := TServicoCalculadora.Create(xNum1, xNum2, TCalculadora.Create);

    xResultado := xCalcular.ProcessCalc(TEnumOperacao(ComboBox1.ItemIndex));

    lblResultado.Caption := 'Resultado: ' + xResultado.ToString;
  finally
    FreeAndNil(xCalcular);
  end;
end;

end.
