unit UTime;

interface

uses
  UJogador, System.Generics.Collections;

type
    TTime = class
    private
        FnomeTime: String;
        Ftecnico: String;
        FanoFundacao: TDate;
        FJogadores: Tlist<TJogador>;

    function GetNomeTime: String;
    function GetTecnico: String;
    function GetJogadores: TList<TJogador>;
    function GetAnoFundacao: TDate;

    procedure SetNomeTime(const Value: String);
    procedure SetTecnico(const Value: String);
    procedure SetAnoFundacao(const Value: TDate);

    public
        constructor Create(aJogadores: TList<TJogador>);

        property AnoFundacao: TDate         read GetAnoFundacao write SetAnoFundacao;
        property NomeTime: String           read GetNomeTime    write SetNomeTime;
        property Tecnico: String            read GetTecnico     write SetTecnico;
        property Jogadores: TList<TJogador> read GetJogadores;
    end;

implementation

{ TTime }

constructor TTime.Create(aJogadores: TList<TJogador>);
begin
  inherited Create;

  FJogadores:= aJogadores;
end;

function TTime.GetAnoFundacao: TDate;
begin
  Result:= FanoFundacao;
end;

function TTime.GetJogadores: TList<TJogador>;
begin
  Result:= FJogadores;
end;

function TTime.GetNomeTime: String;
begin
  Result:= FNomeTime;
end;

function TTime.GetTecnico: String;
begin
  Result:= Ftecnico;
end;

procedure TTime.SetAnoFundacao(const Value: TDate);
begin
  FanoFundacao:= Value;
end;

procedure TTime.SetNomeTime(const Value: String);
begin
  FNomeTime:= Value;
end;

procedure TTime.SetTecnico(const Value: String);
begin
  FTecnico:= Value;
end;

end.
