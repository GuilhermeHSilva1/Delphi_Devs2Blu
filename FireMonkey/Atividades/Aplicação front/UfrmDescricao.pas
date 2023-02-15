unit UfrmDescricao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmDescricao = class(TForm)
    lyt_Geral: TLayout;
    lyt_Cabecario: TLayout;
    rect_Back: TRectangle;
    rect_Options: TRectangle;
    lyt_Body: TLayout;
    lyt_Textos: TLayout;
    lbl_Texto: TLabel;
    lbl_Descricao: TLabel;
    rect_Image: TRectangle;
    lyt_FicarNoTop: TLayout;
    rect_Size: TRectangle;
    cr_Maior: TCircle;
    lbl_Maior: TLabel;
    cr_Menor: TCircle;
    lbl_Menor: TLabel;
    cr_Medio: TCircle;
    lbl_Medio: TLabel;
    lbl_Size: TLabel;
    rect_Quantidade: TRectangle;
    cr_Adicionar: TCircle;
    lbl_Adicionar: TLabel;
    cr_Remover: TCircle;
    lbl_Remover: TLabel;
    lbl_Quantidade: TLabel;
    lyt_CentralizarTudo: TLayout;
    lbl_Number: TLabel;
    rect_Preço: TRectangle;
    Label7: TLabel;
    lbl_Preco: TLabel;
    Circle6: TCircle;
    Image1: TImage;
    procedure rect_BackClick(Sender: TObject);
    procedure cr_AdicionarClick(Sender: TObject);
    procedure cr_RemoverClick(Sender: TObject);
    procedure cr_MaiorClick(Sender: TObject);
    procedure cr_MedioClick(Sender: TObject);
    procedure cr_MenorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescricao: TfrmDescricao;

implementation

{$R *.fmx}



procedure TfrmDescricao.cr_AdicionarClick(Sender: TObject);
var
  xNumero : Integer;
begin
  xNumero := StrToInt(lbl_Number.Text);
  xNumero := xNumero + 1;
  lbl_Number.Text := xNumero.ToString;
  cr_Remover.Fill.Color := $FFECECEC; // Cinza Fraco
  cr_Adicionar.Fill.Color := $FFED8D26; //Laranja
  lbl_Adicionar.TextSettings.FontColor := $FFFFFFFF; //Branco
  lbl_Remover.TextSettings.FontColor := $FF0F0000; //Preto
end;

procedure TfrmDescricao.cr_MaiorClick(Sender: TObject);
begin
  cr_Maior.Fill.Color := $FFED8D26;
  cr_Medio.Fill.Color := $FFECECEC;
  cr_Menor.Fill.Color := $FFECECEC;
  lbl_Maior.TextSettings.FontColor := $FFFFFFFF;
  lbl_Medio.TextSettings.FontColor := $FF0F0000;
  lbl_Menor.TextSettings.FontColor := $FF0F0000;
end;

procedure TfrmDescricao.cr_MedioClick(Sender: TObject);
begin
  cr_Maior.Fill.Color := $FFECECEC;
  cr_Medio.Fill.Color := $FFED8D26;
  cr_Menor.Fill.Color := $FFECECEC;
  lbl_Medio.TextSettings.FontColor := $FFFFFFFF;
  lbl_Maior.TextSettings.FontColor := $FF0F0000;
  lbl_Menor.TextSettings.FontColor := $FF0F0000;
end;

procedure TfrmDescricao.cr_MenorClick(Sender: TObject);
begin
  cr_Maior.Fill.Color := $FFECECEC;
  cr_Medio.Fill.Color := $FFECECEC;
  cr_Menor.Fill.Color := $FFED8D26;
  lbl_Menor.TextSettings.FontColor := $FFFFFFFF;
  lbl_Medio.TextSettings.FontColor := $FF0F0000;
  lbl_Maior.TextSettings.FontColor := $FF0F0000;
end;

procedure TfrmDescricao.cr_RemoverClick(Sender: TObject);
var
  xNumero : Integer;
begin
  xNumero := StrToInt(lbl_Number.Text);
  if xNumero = 0 then
    showMessage('Impossivel Remover')
  else
  begin
    xNumero := xNumero -1;
    lbl_Number.Text := xNumero.ToString;
    cr_Adicionar.Fill.Color := $FFECECEC;
    cr_Remover.Fill.Color := $FFED8D26;
    lbl_Adicionar.TextSettings.FontColor := $FF0F0000;
    lbl_Remover.TextSettings.FontColor := $FFFFFFFF;
  end;
end;

procedure TfrmDescricao.rect_BackClick(Sender: TObject);
begin
  frmDescricao.Close;
end;

end.
