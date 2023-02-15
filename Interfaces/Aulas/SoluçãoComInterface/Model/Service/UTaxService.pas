unit UTaxService;

interface

type
  ITaxService = interface
    //CTRL+SHIFT+G
    ['{46FD47B6-6C65-4E0B-B589-BBBD6E4F9EAC}']

    function Tax(const aAmount: Double): Double;
  end;

implementation

end.
