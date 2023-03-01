unit UProduto;

interface

type
  TProduto = class
  private
    FId: Integer;
    FDescricao: String;
    FUnidade: String;
    FPrecoVenda: Double;
  public

    [SwagProp('ID do Produto', True)]
    property Id: Integer read FId write FId;

    [SwagProp('Descricao do Produto', True)]
    property Descricao: String read FDescricao write FDescricao;

    [SwagProp('Quantidade de unidades', True)]
    property Unidade: String read FUnidade write FUnidade;

    [SwagProp('Preço do Produto', True)]
    property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
  end;

  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.
