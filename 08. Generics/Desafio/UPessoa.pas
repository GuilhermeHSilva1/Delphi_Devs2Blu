unit UPessoa;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TPessoa = class
    private
      CPF: String;
      Nome: String;
      Especialidade: String;

    function GetCPF: String;
    function GetEspecialidade: String;
    function GetNome: String;

    procedure SetCPF(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetEspecialidade(const Value: String);

    public
      property FCPF: String read GetCPF write SetCPF;
      property FNome: String read GetNome write SetNome;
      property FEspecialidade: String read GetEspecialidade write SetEspecialidade;

  end;

  TFila = class
    private
      Paciente : TQueue<TPessoa>;

    public

      constructor Create;
      destructor Destroy; override;

      procedure Adicionar(aPessoa: TPessoa);
      function Proximo : TPessoa;
  end;


implementation

{ TPessoa }

function TPessoa.GetCPF: String;
begin
  Result := CPF;
end;

function TPessoa.GetEspecialidade: String;
begin
  Result := Especialidade;
end;

function TPessoa.GetNome: String;
begin
  Result := Nome;
end;

procedure TPessoa.SetCPF(const Value: String);
begin
  CPF := Value;
end;

procedure TPessoa.SetEspecialidade(const Value: String);
begin
  Especialidade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  Nome := Value;
end;

{ TFila }

procedure TFila.Adicionar(aPessoa: TPessoa);
begin
  Paciente.Enqueue(aPessoa);
end;

constructor TFila.Create;
begin
  Paciente := TQueue<TPessoa>.Create;
end;

destructor TFila.Destroy;
begin
  Paciente.Clear;
  FreeAndNil(Paciente);
  inherited;
end;

function TFila.Proximo : TPessoa;
begin
  if Paciente.Count <> 0 then
   Result := Paciente.Extract
  else
    Result := nil;
end;

end.
