program Records;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TRegCliente = record
    Codigo: Integer;
    Nome: String;
    Idade: Byte;
end;

var
xCliente: TRegCliente;
begin
  try
    write('Entre com o Codigo do cliente: ');
    readln(xCliente.Codigo);

    write('Entre com o Nome do Cliente: ');
    readln(xCliente.Nome);

    write('Entre com a Idade do Cliente: ');
    readln(xCliente.Idade);

    writeln('Codigo: ' + xCliente.Codigo.ToString);
    writeln('Nome: ' + xCliente.Nome);
    writeln('Idade: ' + xCliente.Idade.ToString);

    sleep(4000);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
