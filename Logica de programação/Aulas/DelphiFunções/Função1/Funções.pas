unit Fun��es;

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
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Dateutils;

{$R *.dfm}

procedure OlaMundo;
begin
  ShowMessage('�l� Mundo!!!');
end;

procedure Hello; forward;
procedure DoubleHello; forward;

procedure Hello;
begin
  if MessageDlg('Do you want a double message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DoubleHello
  else
    ShowMessage('Hello');
end;

procedure DoubleHello;
begin
  Hello;
  Hello;
end;

procedure DoubleTheValue(var Value: integer);
begin
  Value := Value * 2;
end;

procedure NewMessage(aMsg: String; aCaption: String = 'Message'; aSeparator: String = SlineBreak);
var
  xMensagem: String;
begin
  xMensagem := aCaption;
  xMensagem := xMensagem + ': ';
  xMensagem := xMensagem + aMsg;
  xMensagem := xMensagem + aSeparator;

  ShowMessage(xMensagem);
end;

function DoubleTheValue2(const Value: integer): Integer;
begin
  // Value := Value * 2 // compiler error
  Result := Value;
end;

function RetornarNomeSobrenome: String;
begin
  Result := 'Armando Neto';
end;

function Min(A, B: Integer): Integer; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Double): Double; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Extended): Extended; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function sum(const A: Array of integer): integer;
var
  I: integer;
begin
  Result := 0;

  for I := Low (A)to High (A)do
    Result := Result + A[I];
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  OlaMundo;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xNomeSobreNome: String;
begin
  xNomeSobreNome := RetornarNomeSobrenome;
  ShowMessage(xNomeSobrenome);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  num: integer;
begin
  num := 10;
  DoubleTheValue(num);
  ShowMessage(IntToStr(num));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  num: integer;
begin
  num := 10;
  DoubleTheValue2(num);
  ShowMessage(IntToStr(num));
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 xSoma: Integer;
begin
  xSoma := sum([1,2,3]);
  ShowMessage(IntToStr(xSoma));
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  num1: Integer;
  num2: Double;
begin
  num1 := 20;
  num2 := 1500.50;

  ShowMessage(
    Format('Total do caixa � de: %d', [num1]));

  ShowMessage(
    Format('Ol� %s, money: %f', ['Armando', num2]));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  text : string;
begin
  // Just 1 data item
  ShowMessage(Format('%s', ['Hello']));

  // A mix of literal text and a data item
  ShowMessage(Format('String = %s', ['Hello']));
  ShowMessage('');

  // Examples of each of the data types
  ShowMessage(Format('Decimal          = %d', [-123]));
  ShowMessage(Format('Exponent         = %e', [12345.678]));
  ShowMessage(Format('Fixed            = %f', [12345.678]));
  ShowMessage(Format('General          = %g', [12345.678]));
  ShowMessage(Format('Number           = %n', [12345.678]));
  ShowMessage(Format('Money            = %m', [12345.678]));
  ShowMessage(Format('Pointer          = %p', [addr(text)]));
  ShowMessage(Format('String           = %s', ['Hello']));
  ShowMessage(Format('Unsigned decimal = %u', [123]));
  ShowMessage(Format('Hexadecimal      = %x', [140]));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  myDate : TDateTime;

begin
  // Set up our TDateTime variable with a full date and time :
  // 5th of June 2000 at 01:02:03.004  (.004 milli-seconds)
  myDate := EncodeDateTime(2000,6, 5,1,2,3,4);

  // Date only - numeric values with no leading zeroes (except year)
  ShowMessage('              d/m/y = '+
              FormatDateTime('d/m/y', myDate));

  // Date only - numeric values with leading zeroes
  ShowMessage('           dd/mm/yy = '+
              FormatDateTime('dd/mm/yy', myDate));

  // Use short names for the day, month, and add freeform text ('of')
  ShowMessage('  ddd d of mmm yyyy = '+
              FormatDateTime('ddd d of mmm yyyy', myDate));

  // Use long names for the day and month
  ShowMessage('dddd d of mmmm yyyy = '+
              FormatDateTime('dddd d of mmmm yyyy', myDate));

  // Use the ShortDateFormat settings only
  ShowMessage('              ddddd = '+
              FormatDateTime('ddddd', myDate));

  // Use the LongDateFormat settings only
  ShowMessage('             dddddd = '+
              FormatDateTime('dddddd', myDate));

  // Use the ShortDateFormat + LongTimeFormat settings
  ShowMessage('                  c = '+
              FormatDateTime('c', myDate));
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  num1, num2: Integer;
  num3, num4: Double;
  num5, num6: Extended;
begin
  num1 := 1; num2 := 2;
  num3 := 1; num4 := 2;
  num5 := 1; num6 := 2;

  ShowMessage(Min(num1, num2).ToString);
  ShowMessage(Min(num3, num4).ToString);
  ShowMessage(Min(num5, num6).ToString);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  NewMessage('Something wrong here!');
  NewMessage('Something wrong here!', 'Attention');
  NewMessage('Hello', 'Message', '--');
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Hello;
end;


end.
