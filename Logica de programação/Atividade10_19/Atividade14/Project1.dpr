program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
var xNum1, xNum2: double;
  try
    write('Digite um numero: ');
    readln(xNum1);
    write('Digite outro numero: ');
    readln(xNum2);

    if xNum1 > xNum2 then
      write('O primeiro numero digitado é maior!!')
    else if xNum2 > xNum1 then
      write('O Segundo numero digitado é maior!!')
    else
      write('Os numeros digitados são iguais!!');

      readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
