program Outro;

uses
  Vcl.Forms,
  Instru��es in 'Instru��es.pas' {Form1},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
