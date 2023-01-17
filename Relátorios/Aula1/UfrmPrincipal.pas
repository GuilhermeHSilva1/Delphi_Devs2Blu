unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Atores1: TMenuItem;
    Cidades1: TMenuItem;
    Filmes1: TMenuItem;
    Relatrios1: TMenuItem;
    procedure Atores1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Filmes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmAtores, UfrmRelCidades, UfrmRelFilmes;

procedure TfrmPrincipal.Atores1Click(Sender: TObject);
begin
  if not assigned(frmAtores) then
    frmAtores := TfrmAtores.Create(Self);

  frmAtores.Show;
end;

procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
begin
  if not Assigned(frmRelCidades) then
    frmRelCidades := TfrmRelCidades.Create(Self);

  frmRelCidades.Show;
end;

procedure TfrmPrincipal.Filmes1Click(Sender: TObject);
begin
  if not Assigned(frmRelFilmes) then
    frmRelFilmes := TfrmRelFilmes.Create(Self);

  frmRelFilmes.Show;
end;

end.
