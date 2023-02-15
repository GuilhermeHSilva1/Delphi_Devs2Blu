unit ICalcular;

interface

type
  ICalculadora = interface
    function Somar(const pNum1, pNum2: Double): Double;
    function Subtrair(const pNum1, pNum2: Double): Double;
    function Dividir(const pNum1, pNum2: Double): Double;
    function Multiplicar(const pNum1, pNum2: Double): Double;
  end;

implementation

end.
