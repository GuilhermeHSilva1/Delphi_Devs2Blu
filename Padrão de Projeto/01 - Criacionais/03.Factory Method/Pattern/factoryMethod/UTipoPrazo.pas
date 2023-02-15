unit UTipoPrazo;

interface

type
  ITipoPrazo = Interface
    ['{EFBC2AFE-2D51-4C82-8B57-11319753054F}']
    function ConstularDescricao: String;
    function ConsultarJuros: String;
    function ConsultarProjecao(const aValor: Real;
      const aQtdParcelas: Integer): String;
    function ConsultarTotal: String;
  End;

  IFactoryMethod = Interface
    ['{A6210875-84C3-4BEB-BFBF-AD5289FACC97}']
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  End;

implementation

end.
