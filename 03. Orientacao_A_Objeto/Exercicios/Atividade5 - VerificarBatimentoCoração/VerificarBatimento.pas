unit VerificarBatimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UBatimento;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    TempoTela: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TempoTelaTimer(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    xCoracao: TCoracao;
    Tempo: Integer;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if not Timer1.Enabled then
    begin
      xCoracao:= TCoracao.Create;
      xCoracao.batimentos := 0;

      showMessage('Clique na tela no mesmo ritmo que bate o seu coração durante 15 segundos');
      Tempo:= 15;

      TempoTela.Enabled:= True;
      Timer1.Enabled:= True;
      Button1.Visible:= false;
    end;
end;

procedure TForm2.FormClick(Sender: TObject);
begin
   xCoracao.Batimentos := xCoracao.Batimentos + 1;
end;

procedure TForm2.TempoTelaTimer(Sender: TObject);
begin
  Tempo := Tempo - 1;
  label2.caption:= IntToStr(Tempo);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  TempoTela.Enabled:= false;
  label2.Caption:= '15';
  Button1.Visible:= True;
  showMessage(xCoracao.VerificarBatimentos(xCoracao.batimentos));
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xCoracao);
end;

end.
