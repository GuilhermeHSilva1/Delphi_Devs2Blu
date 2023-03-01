unit ICalculadoraService;

interface

type
  ICalculadora = Interface
    ['{5ACD48E5-649F-464F-848D-1456AFD90B98}']
      function Somar(aNum1, aNum2: Double): Double;
      function Subtrair(aNum1, aNum2: Double): Double;
      function Multiplicar(aNum1, aNum2: Double): Double;
      function Dividir(aNum1, aNum2: Double): Double;
  End;

implementation

end.
