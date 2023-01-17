program DelphiRepeat;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
    celsius: integer;
    farem: double;
    resp: string;

  begin
    try
      repeat
        write('Digite a temperatura em Celsius: ');
        readln(celsius);

        farem := 9*celsius / 5 + 32;

        writeln('Equivalente em Farem: ' + FloatToStr(farem));

        write('Deseja repetir (s/n)? : ');
        readln(resp);
      until (resp = 'n');
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
