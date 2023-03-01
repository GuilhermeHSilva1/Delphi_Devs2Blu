unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TUtils = class
    class function IIF<T>(const aCondicao: Boolean; const aTipo1, aTipo2: T): T; overload;
    class function IIF<T>(const aCondicao, aCondicao2: Boolean; const aTipo1, aTipo2, aTipo3: T): T; overload;
  end;

  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  published
    constructor Create;
    property Descricao: String read FDescricao write SetDescricao;
  end;

  TfrmPrincipal = class(TForm)
    btn: TButton;
    btn2: TButton;
    edt: TEdit;
    procedure btnClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TUtils }

class function TUtils.IIF<T>(const aCondicao: Boolean; const aTipo1,
  aTipo2: T): T;
begin
  if aCondicao then
    Result := aTipo1
  else
    Result := aTipo2;
end;

class function TUtils.IIF<T>(const aCondicao, aCondicao2: Boolean; const aTipo1,
  aTipo2, aTipo3: T): T;
begin
  if aCondicao then
    Result := aTipo1
  else if aCondicao2 then
    Result := aTipo2
  else
    Result := aTipo3;
end;

procedure TfrmPrincipal.btn2Click(Sender: TObject);
var
  xProduto1, xProduto2, xProduto3: TProduto;
begin
  xProduto2 := nil;

  xProduto1 := TProduto.Create;
  xProduto1.Descricao := 'Laranja Pera';

  xProduto3 := TUtils.IIF<TProduto>(Assigned(xProduto1), xProduto1, TProduto.Create);
  xProduto3 := TUtils.IIF<TProduto>(Assigned(xProduto1), 1=1, xProduto1, TProduto.Create, xProduto2);

  ShowMessage(xProduto3.Descricao);
end;

procedure TfrmPrincipal.btnClick(Sender: TObject);
var
  xAux: String;
begin
  {if edt.Text <> EmptyStr then
    xAux := edt.text
  else
    xAux := 'Laranja';}

  xAux := TUtils.IIF<String>(edt.Text <> EmptyStr, edt.Text, 'Laranja');

  showMessage(xAux);
end;

{ TProduto }

constructor TProduto.Create;
begin
  FDescricao := 'Produto Genérico'
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
