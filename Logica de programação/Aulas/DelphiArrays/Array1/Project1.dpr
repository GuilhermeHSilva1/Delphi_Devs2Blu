program Project1;

uses
  Vcl.Forms,
  ArraysRecords in '..\DelphiArrays\ArraysRecords.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
