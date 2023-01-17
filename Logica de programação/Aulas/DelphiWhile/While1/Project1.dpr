program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var xSaldo, xSangria: Currency;
    xContinuar: Byte;

begin
  try

    writeln('Retirado de dinheiro na conta');
    write('Entre com o saldo da sua conta: ');
    read(xSaldo);

    while (xSaldo > 0) do
      begin
       write('Qual ser� o valor da sua retirada: ');
       readln(xSangria);

       xSaldo := xSaldo - xSangria;

       write('Deseja continuar com as retiradas ? (1-sim 2-n�o): ');
       readln(xContinuar);

       if (xContinuar <> 1) then
          break;
      end;

      writeln('Seu saldo atual �: ' + FloatToStr(xSaldo));
      Readln;

    except
      on E: exception do
      writeln(E.ClassName, ': ', E.Message);
  end;
end.

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
