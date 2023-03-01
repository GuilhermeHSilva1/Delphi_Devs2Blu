{ Invokable interface ICalculadora }

unit CalculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  ICalculadora = interface(IInvokable)
  ['{2F689B52-4300-4233-B727-6B344455980C}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function echoSomar(const aNum1, aNum2: Double): String; stdcall;
    function echoSubtrair(const aNum1, aNum2: Double): String; stdcall;
    function echoMultiplicar(const aNum1, aNum2: Double): String; stdcall;
    function echoDividir(const aNum1, aNum2: Double): String; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadora));

end.