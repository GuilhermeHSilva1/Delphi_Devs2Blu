unit UConcreteDecorator_Usuario;

interface

uses
  UDecorator;

type
  TUsuarioDecorator = class(TDecorator)
    private
      function ObterNomeUsuario: String;
    protected
      function ObterDadosExcecao: String; OVerride;
  end;

implementation

uses
  Winapi.Windows;

{ TUsuarioDecorator }

function TUsuarioDecorator.ObterDadosExcecao: String;
begin
  Result := Inherited ObterDadosExcecao;
  Result := Result + 'Usuário: ' + Self.ObterNomeUsuario;
end;

function TUsuarioDecorator.ObterNomeUsuario: String;
var
  xSize: DWord;
begin
  xSize := 1024;
  SetLength(Result, xSize);
  GetUserName(PChar(Result), xSize);
  SetLength(Result, xSize -1);
end;

end.
