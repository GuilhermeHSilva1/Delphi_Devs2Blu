unit UfrmRelFilmes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TfrmRelFilmes = class(TForm)
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    LookUpAtor: TFDTable;
    dtsAtor: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelFilmes: TfrmRelFilmes;

implementation

{$R *.dfm}

uses UdmConexao;

procedure TfrmRelFilmes.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelFilmes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmRelFilmes := nil;
end;

procedure TfrmRelFilmes.FormCreate(Sender: TObject);
begin
  LookUpAtor.Open;
end;

procedure TfrmRelFilmes.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('ACTOR_ID').AsInteger := 0;

  if DBLookupComboBox1.Text <> EmptyStr then
    FDQuery1.ParamByName('ACTOR_ID').AsInteger := LookUpAtor.FieldByName('ACTOR_ID').AsInteger;

  FDQuery1.Open;
end;

end.
