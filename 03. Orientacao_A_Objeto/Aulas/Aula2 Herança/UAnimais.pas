unit UAnimais;

interface

type
  TENumAnimal = (stCachorro, stGato, stPassaro);

  TAnimal = class //Clasee abstrata ou classe base
    private

      FPatas: Integer; //Tipos primitivos o delphi limoa da memoria

      function GetPatas:Integer;
      procedure SetPatas(const aValue:Integer);

    public
      function RetornarSom: String; virtual; abstract;
      property Patas: Integer read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
    private
    public
      //Método Abstrato
      //Virtual Abstract sempre são as filhas que terão a implementação
      constructor Create;
      function RetornarSom: String; override; //Sobrescrita do método da classe
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

implementation

uses
  System.SysUtils;

{ TPassaro }

procedure TAnimal.SetPatas(const aValue: Integer);
begin
  if aValue <= 0 then
    raise Exception.Create('Valor invalido');
  FPatas:= aValue;
end;

function TAnimal.GetPatas: Integer;
begin
  Result:= FPatas;
end;

function TCachorro.RetornarSom: string;
begin
  Result:= 'Au au';
end;

constructor TCachorro.Create;
begin
  Patas:= 4;
end;

function TGato.RetornarSom: string;
begin
  result:= 'Miau Miauuuuuu';
end;

constructor TGato.Create;
begin
  Patas:= -1;
end;

function TPassaro.RetornarSom: string;
begin
  result := 'Piuu piuu ps:(não sou um pintinho)';
end;

constructor TPassaro.Create;
begin
  Patas:= 2;
end;

end.
