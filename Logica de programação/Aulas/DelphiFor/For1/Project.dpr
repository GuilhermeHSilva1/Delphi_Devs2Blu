program Project;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xQtdeEntrada: Integer;
  xNumero:Integer;
  I: Integer;
  xSoma: Integer;

  begin
    try
      xSoma := 0;

      writeln('Entre com a quantidade total de numeros');
      readln(xQtdeEntrada);

      for I:= 0 to xQtdeEntrada-1 do
        begin
          writeln('Entre com o ' + IntToStr(I+1) + '� numero: ');
          readln(xNumero);

          xSoma := xSoma + xNumero;
        end;

        writeln('A soma dos numeros �: ' + IntToStr(xSoma));
        readln;

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
