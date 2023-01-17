unit ArraysRecords;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDayTemperatures = array [1..31] of Integer;
  //TMonthTemps = array [1..31] of TDayTemperatures;
  //TMatrizDinamica = array of string;

  TForm1 = class(TForm)
    Gravar: TButton;
    btnCosultar: TButton;
    Dia: TEdit;
    Temperatura: TEdit;
    mmHistorico: TMemo;
    procedure GravarClick(Sender: TObject);
    procedure btnCosultarClick(Sender: TObject);
  private
    { Private declarations }
    FDayTemperatures: TDayTemperatures;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.GravarClick(Sender: TObject);
var
  xDia: Integer;
  xTemperatura: Integer;
begin
  xDia := StrToIntDef(Dia.Text, 0);
  xTemperatura := StrToIntDef(Temperatura.Text, 0);

  FDayTemperatures[xDia] := xTemperatura;
end;

procedure TForm1.btnCosultarClick(Sender: TObject);
var
  I: Integer;
begin
     mmHistorico.Lines.Clear;

     for I := 1 to Length(FDayTemperatures) do
       begin
         if FDayTemperatures[I] > 0 then
          mmHistorico.Lines.Add('Dia ' + IntToStr(I) + ' fez ' + IntToStr(FDayTemperatures[I]) + ' graus.');
       end;
end;

end.
