program SwaggerAPI;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoa in 'models\entities\UPessoa.pas',
  UController.Pessoa in 'models\controllers\UController.Pessoa.pas',
  UCargo in 'models\entities\UCargo.pas',
  UController.Cargo in 'models\controllers\UController.Cargo.pas';

procedure SwaggerConfig;
begin
  //Programa��o Funcional
  //Usa Interfaces
  Swagger
    .Register
      .SchemaOnError(TAPIError)
    .&End
    .Info
      .Title('Minha Primeira API Documentada')
      .Description('API Horse')
      .Contact
        .Name('Guilherme H')
        .Email('email@gmail.com')
        .URL('http://www.mypage.com.br')
      .&End
    .&End
    .BasePath('v1');
end;

procedure Registry;
begin
  //V1 - Versionamento da API

  //Pessoas
  THorse.Group.Prefix('v1')
    .Get('/pessoas', TPessoaController.GetPessoas)
    .Get('/pessoas/:id', TPessoaController.FindUser)
    .Post('/pessoas', TPessoaController.InsertUser)
    .Put('/pessoas/:id', TPessoaController.UpdateUser)
    .Delete('/pessoas/:id', TPessoaController.DeleteUser);

  //Cargos
  THorse.Group.Prefix('v1')
    .Get('/cargo', TCargoController.GetCargo)
    .Get('/cargo/:id', TCargoController.FindCargo)
    .Post('/cargo', TCargoController.InsertCargo)
    .Put('/cargo/:id', TCargoController.UpdateCargo)
    .Delete('/cargo/:id', TCargoController.DeleteCargo)

end;

begin

  THorse
    .Use(CORS)
    .Use(HorseSwagger);

  //http://localhost:9090/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TPessoaController);
  THorseGBSwaggerRegister.RegisterPath(TCargoController);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.