unit UPessoas;

interface

type
 TPessoas = class
  private
    FNome: String;
    FAltura: String;
    FData_de_Nascimento: TDate;

    function GetNome: String;
    procedure SetNome(const Value: String);

    function GetAltura: String;
    procedure SetAltura(const Value: String);

    function GetNascimento: TDate;
    procedure SetNascimento(const value: TDate);


  public

    function Calcular(const PNascimento: TDate): Integer;
    function RetornarDados: String;
    property Nome: String read GetNome write SetNome;
    property Altura: String read GetAltura write SetAltura;
    property Data: TDate read GetNascimento write SetNascimento;

end;


implementation

uses
  System.SysUtils;

{ Pessoas }

function TPessoas.Calcular(const pNascimento: TDate): Integer;
var
  xAno, xMes, xDia: word;
  xAno2, xMes2, xDia2: word;
  xDate : TDate;
begin
  xDate:= Date();
  DecodeDate(xDate, xAno2, xMes2, xDia2);
  DecodeDate(pNascimento, xAno, xMes, xDia);

  if (xAno <= xAno2) then
  begin
    if(xMes < xMes2) then
      Result:= xAno2 - xAno

    else if (xMes = xMes2) then
      begin
        if(xDia <= xDia2) then
          Result:= xAno2 - xAno
        else
          Result:= (xAno2 - xAno)-1
      end
    else
    Result:= (xAno2 - xAno)-1;
  end
  else
    Result:= 0;
end;

function TPessoas.GetAltura: String;
begin
  Result:= FAltura;
end;

function TPessoas.GetNascimento: TDate;
begin
  Result:= FData_de_Nascimento;
end;

function TPessoas.GetNome: String;
begin
  Result:= FNome;
end;

function TPessoas.RetornarDados;
begin
  Result:= (FNome + ' / Altura: ' + FAltura);
end;

procedure TPessoas.SetAltura(const Value: String);
begin
  FAltura:= Value;
end;

procedure TPessoas.SetNascimento(const value: TDate);
begin
  FData_de_Nascimento:= Value;
end;

procedure TPessoas.SetNome(const Value: String);
begin
  FNome:= Value;
end;

end.
