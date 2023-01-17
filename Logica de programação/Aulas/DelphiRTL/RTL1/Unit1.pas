unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
  buttonSelected : Integer;
begin
  // Show a confirmation dialog
  buttonSelected := MessageDlg('Confirmation',mtError, mbOkCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK     then ShowMessage('OK pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a custom dialog
  buttonSelected := MessageDlg('Custom dialog',mtCustom,
                              [mbYes,mbAll,mbCancel], 0);

  // Show the button type selected
  if buttonSelected = mrYes    then ShowMessage('Yes pressed');
  if buttonSelected = mrAll    then ShowMessage('All pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  before, after : string;

begin
  // Try to replace all occurrences of a or A to THE
  before := 'This is a way to live A big life';

  after  := StringReplace(before, ' a ', ' THE ',[rfReplaceAll, rfIgnoreCase]);
  ShowMessage('Before = '+before);
  ShowMessage('After  = '+after);
end;

procedure TForm1.Button4Click(Sender: TObject);
const
  PaddedString = '  Letters     ';
begin
  ShowMessage('[' + TrimLeft(PaddedString)  + ']');
  ShowMessage('[' + TrimRight(PaddedString) + ']');
  ShowMessage('[' + Trim(PaddedString)      + ']');
end;
end.
