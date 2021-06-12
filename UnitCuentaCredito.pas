unit UnitCuentaCredito;

interface
uses System.SysUtils, System.Variants,
  System.Classes, Data.DB;

  type
  TCuentaCredito = class
  public
    estadoCuenta : string;
    deudaTotal : integer;
    idClienteCuenta : integer;
    idCuentaCredito : integer;
    numeroDeCuenta : string;

  end;
  var
  cuentaCredito: TCuentaCredito;

implementation

end.
