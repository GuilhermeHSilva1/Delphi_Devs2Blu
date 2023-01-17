unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Inicializar: TButton;
    Adicionar: TButton;
    AndarAgora: TLabel;
    AndarMax: TLabel;
    PessoasAgora: TLabel;
    PessoasMax: TLabel;
    RadioGroup1: TRadioGroup;
    Mover: TButton;
    procedure InicializarClick(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure MoverClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FElevador: TElevador;
    procedure AtualizarForm;
    procedure AtualizarLabels;
    procedure Criar;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AtualizarForm;
begin
  Inicializar.Visible:=  False;
  RadioGroup1.Visible:=  True;
  Mover.Visible:=        True;
  PessoasMax.Visible:=   True;
  PessoasAgora.Visible:= True;
  AndarMax.Visible:=     True;
  AndarAgora.Visible:=   True;
  Adicionar.Visible:=    True;
end;

procedure TForm2.AtualizarLabels;
begin
  PessoasMax.Caption:= 'Pessoas Maxima: ' + FElevador.PessoasMax.ToString;
  PessoasAgora.Caption:= 'Pessoas no elevador: ' + FElevador.PessoasAgora.ToString;
  AndarMax.Caption:= 'Andar Maximo: '  + FElevador.AndarMax.ToString;
  AndarAgora.Caption:= 'Andar atual: ' + FElevador.AndarAgora.ToString;
end;

procedure TForm2.Criar;
var
  xAndarMax, xPessoasMax, I: Integer;
begin
    try
      xAndarMax:= StrToIntDef(InputBox('Informar','Informe quantos Andares existe no predio',''),0);
      xPessoasMax:= StrToIntDef(InputBox('Informar','Informe quantas pessoas cabem no elevador',''),0);
      if (xAndarMax <= 0) or (xPessoasMax <= 0) or (xAndarMax > 163)then
        raise Exception.Create('Digite Valores vaildos, e que seja acima de 0 e abaixo de 164')
      else
      begin
        for I := 0 to xAndarMax do
          begin
            RadioGroup1.Items.Add(I.ToString);
          end;
        if xAndarMax >= 75 then
          RadioGroup1.Columns:= 8;
          FElevador:= TElevador.Create(xAndarMax, xPessoasMax);
          AtualizarForm;
          AtualizarLabels;
      end;
    except
      on E: Exception do
        raise Exception.Create('Erro ao criar: ' + E.Message);
    end;
end;

procedure TForm2.InicializarClick(Sender: TObject);
begin
  Criar;
end;

procedure TForm2.MoverClick(Sender: TObject);
begin
  try
    FElevador.MoverElevador(RadioGroup1.ItemIndex);
  except
    On E: Exception do
      raise Exception.Create('Erro ao usar elevador: ' + E.Message);
  end;
    AtualizarLabels;
end;

procedure TForm2.AdicionarClick(Sender: TObject);
begin
    try
      FElevador.Adicionar(StrToIntDef(InputBox('Informar','Digite qual andar deseja Sair:',''),-1));
    except
      on E: Exception do
        raise Exception.Create('Erro ao adicionar: ' + E.Message);
    end;

  AtualizarLabels;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FElevador);
end;

end.
