unit UBatimento;

interface

uses
  Vcl.Dialogs, SysUtils;

type
  TCoracao = class
    private
      FBatimentos: Integer;

      function GetBatimentos: Integer;
      procedure SetBatimentos(const Value: Integer);

    public
      property Batimentos: Integer read GetBatimentos write SetBatimentos;

      function VerificarBatimentos(const pValor: Integer): String;
  end;

implementation

{ TCora��o }

function TCoracao.GetBatimentos: Integer;
begin
  Result:= FBatimentos;
end;

procedure TCoracao.SetBatimentos(const Value: Integer);
begin
  FBatimentos:= Value;
end;

function TCoracao.VerificarBatimentos(const pValor: Integer): String;
var
  xVerificar: Integer;
begin
  xVerificar := pValor * 4;
  case xVerificar of
    0..39:
      Result:= ('Como vc n�o esta morto ? ' + IntToStr(xVerificar) + ' BPM');
    40..59:
      Result:= ('Cora��o esta lento com: ' + IntToStr(xVerificar) + ' BPM' );
    60..100:
      Result:= ('Cora��o esta batendo normalmente com: ' + IntToStr(xVerificar) + ' BPM');
    101..200:
      Result:= ('Cora��o esta acelerado com: ' + IntToStr(xVerificar) + ' BPM');
    201..10000:
      Result:= ('Amigo vc esta tendo um infarte por acaso ? ' + IntToStr(xVerificar) + ' BPM');
  end;

end;

end.
