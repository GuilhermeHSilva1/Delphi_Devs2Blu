program Project2;

uses
  Vcl.Forms,
  VerificarBatimento in 'VerificarBatimento.pas' {Form2},
  UBatimento in 'UBatimento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
