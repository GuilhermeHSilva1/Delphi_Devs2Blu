unit UProdutos;

interface

type
  TProduto = class
    private
    Nome_Produto: String;
    Quantidade: Integer;
    Preco_Unitario: Double;
    Valor_Total: Double;

    function GetNomeProduto: String;
    function GetQuantidade: Integer;
    function GetPreco_Unitario: Double;
    function GetValor_Total: Double;

    procedure SetValor_Total(const Value: Double);
    procedure SetPreco_Unitario(const Value: Double);
    procedure SetQuantidade(const Value: Integer);
    procedure SetNomeProduto(const Value: String);

    public

      property FNome_Produto: String read GetNomeProduto write SetNomeProduto;
      property FQuantidade: Integer read GetQuantidade write SetQuantidade;
      property FPreco_Unitario: Double read GetPreco_Unitario write SetPreco_Unitario;
      property FValor_Total: Double read GetValor_Total write SetValor_Total;


    function ComprarProduto(pQuantidade: Integer): Double;
    function VerificarDesconto(pQuantidade: Integer): Double;
  end;

implementation

uses
  Vcl.Dialogs;

{ TProduto }

function TProduto.ComprarProduto(pQuantidade: Integer): Double;
begin
  if FQuantidade >= pQuantidade then
    begin
      FQuantidade := FQuantidade - pQuantidade;
      Result := pQuantidade * Preco_Unitario;
    end
  else
    showMessage('Quantidade Invalida')
end;

function TProduto.VerificarDesconto(pQuantidade: Integer): Double;
begin
  case pQuantidade of
    0..10:
      Result := 0;
    11..50:
      Result := 0.9;
    51..9999999:
      Result := 0.75;
  end;
end;

function TProduto.GetNomeProduto: String;
begin
  Result := Nome_Produto;
end;

function TProduto.GetPreco_Unitario: Double;
begin
  Result := Preco_Unitario;
end;

function TProduto.GetQuantidade: Integer;
begin
  Result := Quantidade;
end;

function TProduto.GetValor_Total: Double;
begin
  Result := Valor_Total
end;

procedure TProduto.SetNomeProduto(const Value: String);
begin
  Nome_Produto := Value;
end;

procedure TProduto.SetPreco_Unitario(const Value: Double);
begin
  Preco_Unitario := Value;
end;

procedure TProduto.SetQuantidade(const Value: Integer);
begin
  Quantidade := Value;
end;

procedure TProduto.SetValor_Total(const Value: Double);
begin
  Valor_Total := Value;
end;



end.
