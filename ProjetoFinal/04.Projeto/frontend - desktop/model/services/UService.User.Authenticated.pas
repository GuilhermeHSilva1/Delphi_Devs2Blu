unit UService.User.Authenticated;

interface

uses
  UEntity.Users;

type
  //Classe utilizando o padr�o Singleton
  //s
  TUserAuthenticated = class
    private
      FUser: TUser;

      function GetUser: TUSer;
      procedure SetUser(const Value: TUSer);
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
  //Aqui n�o precisamos criar o FUser
  //Quem passar� o mesmo criado ser� a tela de login
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

function TUserAuthenticated.GetUser: TUSer;
begin
  Result := FUser;
end;

class function TUserAuthenticated.NewInstance: TObject;
begin
  if not Assigned(gbInstance) then
    GbInstance := TUserAuthenticated(Inherited NewInstance);

  Result := GbInstance;
end;

procedure TUserAuthenticated.SetUser(const Value: TUSer);
begin
  FUser := Value;
end;

initialization

finalization
  FreeAndNil(GbInstance);

end.
