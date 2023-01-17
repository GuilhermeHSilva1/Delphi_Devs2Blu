program Project2;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  UElevador in 'UElevador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
