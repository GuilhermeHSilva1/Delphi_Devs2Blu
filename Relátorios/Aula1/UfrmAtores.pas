unit UfrmAtores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet;

type
  TfrmAtores = class(TForm)
    GroupBox1: TGroupBox;
    edtNome: TEdit;
    Label1: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmAtores: TfrmAtores;

implementation

{$R *.dfm}

uses UdmConexao;

procedure TfrmAtores.btnExportarClick(Sender: TObject);
var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%s\Atores.pdf',[xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.export(frxPDFExport1);
end;

procedure TfrmAtores.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmAtores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmATores := Nil;
end;

procedure TfrmAtores.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('lName').AsString := '';

  if edtNome.Text <> EmptyStr then
    FDQuery1.ParamByName('lName').AsString := Trim(edtNome.Text);

  FDQuery1.Open;
end;

end.
