program DevsBets_FrontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmLogin in 'model\views\UfrmLogin.pas' {frmLogin},
  UfrmLoginRegistry in 'model\views\UfrmLoginRegistry.pas' {frmLoginRegistry},
  UfrmLoginAuthentication in 'model\views\UfrmLoginAuthentication.pas' {frmLoginAuthentication},
  UEntity.Bets in '..\backend\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\backend\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\backend\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\backend\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\backend\model\entities\UEntity.Users.pas',
  Ufrmhome in 'model\views\Ufrmhome.pas' {frmhome},
  UService.Intf in 'model\services\UService.Intf.pas',
  Uservice.Base in 'model\services\Uservice.Base.pas',
  Uservice.User in 'model\services\Uservice.User.pas',
  UUtils.Constants in 'model\utils\UUtils.Constants.pas',
  UService.Login in 'model\services\UService.Login.pas',
  UService.User.Authenticated in 'model\services\UService.User.Authenticated.pas',
  UUtils.Enums in 'model\utils\UUtils.Enums.pas',
  Uservice.Bet in 'model\services\Uservice.Bet.pas',
  UService.Match in 'model\services\UService.Match.pas',
  UService.Team in 'model\services\UService.Team.pas',
  UUtils.Functions in 'model\utils\UUtils.Functions.pas',
  UFraMatch in 'model\views\UFraMatch.pas' {FraMatch: TFrame},
  UFraMatch.Registry in 'model\views\UFraMatch.Registry.pas' {FraMatchRegistry: TFrame},
  UFraTeams in 'model\views\UFraTeams.pas' {FraTeams: TFrame},
  UFraTeam.Registry in 'model\views\UFraTeam.Registry.pas' {FraTeamsRegistry: TFrame},
  UFraBet in 'model\views\UFraBet.pas' {FraBet: TFrame},
  UFraBet.Registry in 'model\views\UFraBet.Registry.pas' {FraBetRegistry: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tfrmhome, frmhome);
  Application.Run;
end.
