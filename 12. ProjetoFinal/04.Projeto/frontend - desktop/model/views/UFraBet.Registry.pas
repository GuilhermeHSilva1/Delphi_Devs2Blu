unit UFraBet.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView,

  UEntity.Matchs;

type
  TFraBetRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    ImgLogo: TImage;
    lytBotoes: TLayout;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectVoltar: TRectangle;
    Label3: TLabel;
    lstPartidas: TListView;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    edtResultadoTeamA: TEdit;
    edtResultadoTeamB: TEdit;
    lblX: TLabel;
    procedure rectSalvarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
    procedure VoltarTela;
    procedure CarregarMatchs;
    procedure Registrar;
    procedure PreencherMatchs(const aMatch: TMatch);
  public
    constructor Create(aOwner: TComponent); override;
end;

var
  fraBetRegistry: TFraBetRegistry;

implementation

uses
  UFraBet,
  UService.Intf,
  UService.Team,
  UService.Match,
  UEntity.Bets,
  UService.Bet,
  UService.User.Authenticated;

{$R *.fmx}

{ TFraBetRegistry }

procedure TFraBetRegistry.CarregarMatchs;
var
  xServiceMath: IService;
  xMatch: TMatch;
begin
  lstPartidas.Items.Clear;

  xServiceMath := TServiceMatch.Create;
  xServiceMath.Listar;
  for xMatch  in TServiceMatch(xServiceMath).Matchs do
    Self.PreencherMatchs(xMatch);

end;

constructor TFraBetRegistry.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarMatchs;
end;

procedure TFraBetRegistry.PreencherMatchs;
var
  xItem: TListViewItem;
const
  PARTIDA = '%s X %s - %s �s %s';
begin
  xItem := lstPartidas.Items.Add;
  xItem.Tag := aMatch.Id;

  TListItemText(xItem.Objects.FindDrawable('txtPartida')).Text :=
    Format(PARTIDA, [aMatch.TeamA.Name,
                     aMatch.TeamB.Name,
                     DateToStr(aMatch.Date),
                     TimeToStr(aMatch.Hour)]);
end;

procedure TFraBetRegistry.rectSalvarClick(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TFraBetRegistry.rectVoltarClick(Sender: TObject);
begin
  Self.VoltarTela
end;

procedure TFraBetRegistry.Registrar;
var
  xServiceBet: IService;
  xBet: TBet;
  xMatch: TMatch;
  xUserAuthenticated: TUserAuthenticated;
begin
  if lstPartidas.ItemIndex < 0  then
    raise Exception.Create('Selecione uma Partida');

  if Trim(edtResultadoTeamA.Text) = EmptyStr then
    raise Exception.Create('Informe o placar do Time A');

  if Trim(edtResultadoTeamB.Text) = EmptyStr then
    raise Exception.Create('Informe o placar do Time B');

    xMatch := TMatch.Create(lstPartidas.Items[lstPartidas.ItemIndex].Tag);
    xUserAuthenticated := TUserAuthenticated.GetInstance;

    xBet := TBet.Create(
      xMatch,
      StrToIntDef(Trim(edtResultadoTeamA.Text), 0),
      StrToIntDef(Trim(edtResultadoTeamB.Text), 0),
      xUserAuthenticated.User);

    xServiceBet := TServiceBet.Create(xBet);
    xServiceBet.Registrar;
    Self.VoltarTela;
end;

procedure TFraBetRegistry.VoltarTela;
begin
  if not Assigned(FraBet) then
    FraBet := TFraBet.Create(Application);

    FraBet.Align := TAlignLayout.Center;

    Self.Parent.AddObject(FraBet);
    FreeAndNil(FraBetRegistry);
end;

end.
