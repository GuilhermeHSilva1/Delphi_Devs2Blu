unit UFraBet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.Layouts,

  UEntity.Bets;

type
  TFraBet = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstPalpites: TListView;
    rectToolBar: TRectangle;
    rectExcluir: TRectangle;
    Label2: TLabel;
    rectNovo: TRectangle;
    Label1: TLabel;
    lytPartidas: TLayout;
    procedure rectNovoClick(Sender: TObject);
    procedure rectExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarRegistros;
    procedure AbrirBetRegistry;
    procedure PrepararListView(aBet: TBet);
    procedure ExcluirRegistro;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraBet: TFraBet;

implementation

uses
  Uservice.Intf,
  Uservice.Bet,
  UEntity.Matchs,
  UFraBet.Registry,
  UService.User.Authenticated;

{$R *.fmx}

{ TFraBet }

procedure TFraBet.AbrirBetRegistry;
begin
  if not Assigned(FraBetRegistry) then
    FraBetRegistry := TFraBetRegistry.Create(Application);

  FraBetRegistry.Align := TAlignLayout.Center;

  Self.Parent.AddObject(FraBetRegistry);
  FreeAndNil(FraBet);
end;

procedure TFraBet.CarregarRegistros;
var
  xServiceBet: IService;
  xBet: TBet;
begin
  lstPalpites.Items.Clear;

  xServiceBet := TServiceBet.Create;
  xServiceBet.Listar;
  for xBet in TServiceBet(xServiceBet).Bets do
    Self.PrepararListView(xBet);
end;

constructor TFraBet.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;
end;

procedure TFraBet.ExcluirRegistro;
var
  xServiceBet : IService;
  xBet: TBet;
  xItem : TListViewItem;
  xUserAuthenticeted: TUserAuthenticated;
begin
  if lstPalpites.ItemIndex = -1 then
    Exit;

  xItem := lstPalpites.Items[lstPalpites.ItemIndex];

  xUserAuthenticeted := TUserAuthenticated.GetInstance;
  if xItem.TagString <> xUserAuthenticeted.User.Id.ToString then
    raise Exception.Create('N�o � poss�vel excluir o palpite de outro usu�rio.');

  xBet := TBet.Create(xItem.Tag);

  xServiceBet := TServiceBet.Create(xBet);
  try
    xServiceBet.Excluir;
    showMessage('Registro Excluido');
  finally
    Self.CarregarRegistros;
  end;
end;

procedure TFraBet.PrepararListView(aBet: TBet);
var
  xItem : TListViewItem;
  xMatch: TMatch;
begin
  xItem := lstPalpites.Items.Add;
  xItem.Tag := aBet.Id;
  xItem.TagString := aBet.User.Id.ToString;
  xMatch := aBet.Match;

  TListItemText(xItem.Objects.FindDrawable('txtUsuario')).Text := aBet.User.Login;
  TListItemText(xItem.Objects.FindDrawable('txtHora')).Text := TimeToStr(xMatch.Hour);
  TListItemText(xItem.Objects.FindDrawable('txtData')).Text := DateToStr(xMatch.Date);
  TListItemText(xItem.Objects.FindDrawable('txtTimeA')).Text := xMatch.TeamA.Name;
  TListItemText(xItem.Objects.FindDrawable('txtTimeB')).Text := xMatch.TeamB.Name;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeA')).Text := aBet.ResultTeamA.ToString;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeB')).Text := aBet.ResultTeamB.ToString;
end;

procedure TFraBet.rectExcluirClick(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TFraBet.rectNovoClick(Sender: TObject);
begin
  Self.AbrirBetRegistry;
end;

end.
