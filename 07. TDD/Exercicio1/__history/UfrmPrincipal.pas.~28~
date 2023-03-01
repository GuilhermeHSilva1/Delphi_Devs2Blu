unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UUCalculadora;

type
  TfrmPrincipal = class(TForm)
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    cmbOperacao: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCalcular: TButton;
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

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  xCalculadora : TCalculadora;
  xResultado : Double;
begin
  xCalculadora := TCalculadora.Create;

  edtPrimeiroNumero.Text := StringReplace(edtPrimeiroNumero.Text, '.', ',', [rfReplaceAll]);
  edtSegundoNumero.text := StringReplace(edtSegundoNumero.Text, '.', ',', [rfReplaceAll]);

  try

    case TEnumOperacao(cmbOperacao.ItemIndex) of
      opSomar:
        xResultado := xCalculadora.Somar(StrToFloat(edtPrimeiroNumero.Text),
                                         StrToFloat(edtSegundoNumero.Text));

      opSubtrair:
        xResultado := xCalculadora.Subtrair(StrToFloat(edtPrimeiroNumero.Text),
                                            StrToFloat(edtSegundoNumero.Text));

      opMultiplicar:
        xResultado := xCalculadora.Multiplicar(StrToFloat(edtPrimeiroNumero.Text),
                                               StrToFloat(edtSegundoNumero.Text));

      opDividir:
        xResultado := xCalculadora.Dividir(StrToFloat(edtPrimeiroNumero.Text),
                                           StrToFloat(edtSegundoNumero.Text));
    end;

    lblResultado.Caption := 'Resultado: ' + FormatFloat('#.##',xResultado);

  finally
    FreeAndNil(xCalculadora);
  end;

end;

end.
