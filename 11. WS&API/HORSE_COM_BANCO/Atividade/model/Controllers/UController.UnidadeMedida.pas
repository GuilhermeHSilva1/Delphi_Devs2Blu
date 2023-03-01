unit UController.UnidadeMedida;

interface

uses
  Horse;

type
  TControllerUnidadeMedida = class
    private
    public
      class procedure GetProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure GetProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure PostProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  System.SysUtils, UDAO.Intf, UDAO.UnidadeMedida, System.JSON;

{ TControllerUnidadeMedida }

class procedure TControllerUnidadeMedida.DeleteProduto(Req: THorseRequest;Res: THorseResponse; Next: TProc);
var
  xDAO: IDAOUNIDADE;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'],0);

  xDAO := TDAOUnidadeMedida.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerUnidadeMedida.GetProduto(Req: THorseRequest;Res: THorseResponse; Next: TProc);
var
  xDAO: IDAOUNIDADE;
  xId: Integer;
begin
  if (Req.Params.Count <> 1 ) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'],0);

  xDAO := TDaoUnidadeMedida.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorID(xID));
end;

class procedure TControllerUnidadeMedida.GetProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  xDAO: IDAOUNIDADE;
begin
  xDAO := TDAOUnidadeMedida.Create;

  Res.Send<TJSONArray>(xDAO.ObterRegistros);
end;

class procedure TControllerUnidadeMedida.PostProduto(Req: THorseRequest;Res: THorseResponse; Next: TProc);
var
  xDAO: IDAOUNIDADE;
begin
  xDAO := TDAOUnidadeMedida.Create;

  if xDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPStatus.Created)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

end.
