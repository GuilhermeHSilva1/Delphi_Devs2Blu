program Project2;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  UTime in 'UTime.pas',
  UJogador in 'UJogador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
