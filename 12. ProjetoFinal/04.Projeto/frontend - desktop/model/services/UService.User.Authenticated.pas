unit UService.User.Authenticated;

interface

uses
  UEntity.Users;

type
  //Classe utilizando o padr�o Singleton
  //Para armazenar o usu�rio logado
  TUserAuthenticated = class
    private
      FUser: TUser;

      function GetUser: TUser;
      procedure SetUser(const Value: TUser);
    public
      constructor Create;
      destructor Destroy; override;

      class function GetInstance: TUserAuthenticated;
      class function NewInstance: TObject; override;

      property User: TUser read GetUser write SetUser;
  end;

var
  GbInstance: TUserAuthenticated;

implementation

uses
  System.SysUtils;
{ TUserAuthenticated }

constructor TUserAuthenticated.Create;
begin
  //aqui n�o precisamos criar o FUser;
  //Quem passar� o mesmo criado ser� a tela de Login;
end;

destructor TUserAuthenticated.Destroy;
begin
  FreeAndNil(FUser);
  inherited;
end;

class function TUserAuthenticated.GetInstance: TUserAuthenticated;
begin
  Result := TUserAuthenticated.Create;
end;

function TUserAuthenticated.GetUser: TUser;
begin
  Result := FUser;
end;

class function TUserAuthenticated.NewInstance: TObject;
begin
  if not Assigned(GbInstance) then
    GbInstance := TUserAuthenticated(inherited NewInstance);

  Result := GbInstance;
end;

procedure TUserAuthenticated.SetUser(const Value: TUser);
begin
  Fuser := Value;
end;

initialization

finalization
  FreeAndNil(GbInstance);

end.
