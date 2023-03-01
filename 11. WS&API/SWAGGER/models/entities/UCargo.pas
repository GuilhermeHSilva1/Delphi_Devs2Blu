unit UCargo;

interface

uses
  GBSwagger.Model.Attributes;

type
  TCargo = class
    private
      FID: Integer;
      FCargo: String;
    public
      [SwagProp('ID Do Cargo', True)]
      property ID: Integer read FID write FID;

      [SwagProp('Cargo', True)]
      property Cargo: String read FCargo write FCargo;
  end;

  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.

