unit UInterfaceViaCEP;

interface

type
  IWebServiceViaCEP = Interface
    ['{09310AD5-A88F-4755-984D-1AF153DF1B45}']
    procedure ConsultarEnderecoWebService(const aCep: String);
    function ObterLogradouro: String;
    function ObterBairro: String;
    function ObterCidade: String;
  End;

implementation

end.
