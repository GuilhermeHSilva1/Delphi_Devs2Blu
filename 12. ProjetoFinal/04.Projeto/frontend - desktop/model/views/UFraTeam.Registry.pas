unit UFraTeam.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TFraTeamsRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    ImgLogo: TImage;
    rectVoltar: TRectangle;
    Label3: TLabel;
    lytBotoes: TLayout;
    rectNome: TRectangle;
    rectSalvar: TRectangle;
    edtNome: TEdit;
    Label1: TLabel;
    procedure rectSalvarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
    procedure VoltarTela;
    procedure Registrar;
  public
    { Public declarations }
  end;

var
  FraTeamRegistry: TFraTeamsRegistry;


implementation


uses
  UFraTeams,
  UEntity.Teams,
  UService.Intf,
  Uservice.Team;

{$R *.fmx}

{ TFraTeamsRegistry }

procedure TFraTeamsRegistry.rectSalvarClick(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TFraTeamsRegistry.rectVoltarClick(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TFraTeamsRegistry.Registrar;
var
  xServiceTeam: IService;
begin
  if Trim(edtNome.Text) = EmptyStr then
    raise Exception.Create('Informe o Nome do Time');

  xServiceTeam := TServiceTeam.Create(TTeam.Create(Trim(edtNome.Text)));

  xServiceTeam.Registrar;
  Self.VoltarTela;
end;

procedure TFraTeamsRegistry.VoltarTela;
begin
  if not Assigned(FraTeam) then
    FraTeam := TFraTeams.Create(Application);

    FraTeam.Align := TAlignLayout.Center;

    Self.Parent.AddObject(FraTeam);
    FreeAndNil(FraTeamRegistry);
end;

end.
