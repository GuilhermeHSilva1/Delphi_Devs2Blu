unit URentalService;

interface

uses UCarRental, UTaxService;

type
  TRentalService = class
    private
      FPricePerDay: Double;
      FPricePerHour: Double;

      FTaxService: ITaxService;
    public
      constructor Create(const aPricePerDay, aPricePerHour: Double;
      aTaxService: ITaxService);
      destructor Destroy; override;

      procedure ProcessInvoice(aCarRental: TCarRental);
  end;

implementation

uses
  Math, DateUtils, UInvoice, System.SysUtils;

{ TRentalService }

constructor TRentalService.Create(const aPricePerDay, aPricePerHour: Double;
  aTaxService: ITaxService);
begin
  FPricePerDay := aPricePerDay;
  FPricePerHour := aPricePerHour;
  FTaxService := aTaxService;
end;

destructor TRentalService.Destroy;
begin
  //Variaveis/Atributos do Tipo interface n�o precisa liberar da memoria
  //O Delphi faz isso pra gente
  //FreeAndNil(FTaxService);
  inherited;
end;

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
  xHours: Double;
  xBasicPayment: Double;
  xTax: Double;
begin

  xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start) / 1000 / 60 / 60;

  if xHours <= 12 then
    xBasicPayment := FPricePerHour * Math.Ceil(xHours)
  else
    xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

  xTax := FTaxService.Tax(xBasicPayment);

  aCarRental.Invoice := TInvoice.Create(xBasicPayment, xTax);

end;

end.
