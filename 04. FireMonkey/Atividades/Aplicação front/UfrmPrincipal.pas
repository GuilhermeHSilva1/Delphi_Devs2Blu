unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  UfrmDescricao;

type
  TfrmPrincipal = class(TForm)
    lytGeral: TLayout;
    lytCabecario: TLayout;
    rect_Cabecario: TRectangle;
    img_Options: TImage;
    img_Cake: TImage;
    Layout1: TLayout;
    rect_Cake: TRectangle;
    rect_Options: TRectangle;
    rect_Search: TRectangle;
    Layout2: TLayout;
    edt_Search: TEdit;
    Rectangle1: TRectangle;
    img_Search: TImage;
    lyt_Body: TLayout;
    rect_cafe3: TRectangle;
    rect_cafe4: TRectangle;
    rect_Cafe6: TRectangle;
    rect_cafe5: TRectangle;
    rect_cafe1: TRectangle;
    rect_cafe2: TRectangle;
    rect_Item2: TRectangle;
    rect_Item3: TRectangle;
    rect_Item1: TRectangle;
    rect_Titulo: TRectangle;
    Label1: TLabel;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Rectangle2: TRectangle;
    lbl_PrecoCafe1: TLabel;
    lbl_PrecoCafe2: TLabel;
    lbl_PrecoCafe3: TLabel;
    lbl_PrecoCafe4: TLabel;
    lbl_PrecoCafe5: TLabel;
    lbl_PrecoCafe6: TLabel;
    lyt_Rodape: TLayout;
    rect_Rodape: TRectangle;
    rect_home: TRectangle;
    Image1: TImage;
    Label8: TLabel;
    img_Bell: TImage;
    img_Heart: TImage;
    img_Profile: TImage;
    Layout6: TLayout;
    lbl_NomeCafe1: TLabel;
    lbl_NomeCafe2: TLabel;
    lbl_NomeCafe3: TLabel;
    Label3: TLabel;
    lbl_NomeCafe4: TLabel;
    lbl_NomeCafe5: TLabel;
    procedure AbrirFormDescricao(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.AbrirFormDescricao(Sender: TObject);
begin

if not Assigned(frmDescricao) then
  begin
    Application.CreateForm(TfrmDescricao, frmDescricao);
  end;

  frmDescricao.Show();
end;

end.
