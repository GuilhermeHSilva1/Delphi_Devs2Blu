program API_JWT;

{$APPTYPE CONSOLE}

uses
  Horse,
  JOSE.Core.JWT,
  JOSE.Core.Builder,
  System.SysUtils;

begin

  THorse.Get('/login',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LToken: TJWT;
      LCompactToken: String;
    begin
      LToken := TJWT.Create;

      try
        LToken.Claims.Issuer     := 'Devs2Blu';
        LToken.Claims.Subject    := '123456';
        LToken.Claims.Expiration := Now + 1;

        LToken.Claims.SetClaimOfType<String>('nome', 'armando neto');

        LCompactToken := TJOSE.SHA256CompactToken('key', LToken);

        Res.Send(LCompactToken);
      finally
        LToken.Free;
      end;
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.