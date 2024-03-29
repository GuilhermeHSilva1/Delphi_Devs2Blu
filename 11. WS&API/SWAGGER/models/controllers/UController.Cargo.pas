unit UController.Cargo;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UCargo;

type
  [SwagPath('cargo', 'Cargos')]
  TCargoController = class
    private
    public

    [SwagGet('Listar Cargos'), True]
    [SwagParamQuery('id', 'id do Cargo')]
    [SwagResponse(200, TCargo, 'Informações do cargo', True)]
    class procedure GetCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagGet('{id}', 'Procurar um cargo')]
    [SwagParamPath('id', 'id do cargo')]
    [SwagResponse(200, TCargo, 'Informações do cargo')]
    [SwagResponse(404)]
    class procedure FindCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagPOST('Adicionar Novo cargo')]
    [SwagParamBody('Informações do cargo', TCargo)]
    [SwagResponse(201, TCargo)]
    [SwagResponse(400)]
    class procedure InsertCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagPUT('{id}', 'Atualizar um cargo')]
    [SwagParamPath('id', 'Id do cargo')]
    [SwagParamBody('Informações do cargo', TCargo)]
    [SwagResponse(204)]
    [SwagResponse(400)]
    class procedure UpdateCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagDelete('{id}', 'Deletar um cargo')]
    [SwagParamPath('id', 'Id do cargo')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure DeleteCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

  end;

implementation


{ TPessoaController }

class procedure TCargoController.DeleteCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TCargoController.FindCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id": 1, "cargo: Programador"}');
end;

class procedure TCargoController.GetCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('[{"id": 1, "cargo: Programador"}]');
end;

class procedure TCargoController.InsertCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TCargoController.UpdateCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.
