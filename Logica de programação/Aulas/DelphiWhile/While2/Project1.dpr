program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x,y: integer;

  begin

    try

      x:= 5;
      y:= 0;

      while(x>2) do

      begin
        writeln(x);
        y:= y+x;
        x:= x-1;
      end;

      sleep(4000);
    except
      on E: Exception do
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
