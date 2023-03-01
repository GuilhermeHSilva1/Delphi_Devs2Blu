unit UFraTeams;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.Layouts,

  UEntity.Teams;

type
  TFraTeams = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    rectToolBar: TRectangle;
    rectExcluir: TRectangle;
    Label2: TLabel;
    rectNovo: TRectangle;
    Label1: TLabel;
    lstTimes: TListView;
    procedure rectExcluirClick(Sender: TObject);
    procedure rectNovoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirTeamRegistry;
    procedure CarregarRegistros;
    procedure ExcluirRegistros;
    procedure PreencherTeams(aTeam: TTeam);
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  FraTeam : TFraTeams;

implementation

uses
  UFraTeam.Registry,
  UService.Intf,
  UService.Team;

{$R *.fmx}

{ TFraTeams }

procedure TFraTeams.AbrirTeamRegistry;
begin
  if not Assigned(FraTeamRegistry) then
    FraTeamRegistry := TFraTeamsRegistry.Create(Application);

  FraTeamRegistry.Align := TAlignLayout.Center;

  Self.Parent.AddObject(FraTeamRegistry);
  FreeAndNil(FraTeam);
end;

procedure TFraTeams.CarregarRegistros;
var
  xServiceTeam: IService;
  xTeam: TTeam;
begin
  lstTimes.Items.Clear;

  xServiceTeam := TServiceTeam.Create;
  xServiceTeam.Listar;

  for xTeam in TServiceTeam(xServiceTeam).Teams do
    Self.PreencherTeams(xTeam);
end;

constructor TFraTeams.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;
end;

procedure TFraTeams.ExcluirRegistros;
var
  xServiceTeam : IService;
  xTeam: TTeam;
  xItem: TListViewItem;
begin
  if lstTimes.ItemIndex = -1 then
    exit;

  xItem := lstTimes.Items[lstTimes.ItemIndex];
  xTeam := TTeam.Create(xItem.Tag);

  xServiceTeam := TServiceTeam.Create(xTeam);
  try
    xServiceTeam.Excluir;
    ShowMessage('Registro Excluido!');
  finally
    Self.CarregarRegistros;
  end;

end;

procedure TFraTeams.PreencherTeams(aTeam: TTeam);
var
  xItem : TListViewItem;
begin
  xItem := lstTimes.Items.Add;
  xItem.Tag := aTeam.Id;

  TListItemText(xItem.Objects.FindDrawable('txtTime')).Text := aTeam.Name;
end;

procedure TFraTeams.rectExcluirClick(Sender: TObject);
begin
  Self.ExcluirRegistros;
end;

procedure TFraTeams.rectNovoClick(Sender: TObject);
begin
  Self.AbrirTeamRegistry;
end;

end.
