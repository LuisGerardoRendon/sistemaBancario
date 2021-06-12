unit UnitCuentaDebito;

interface
uses System.SysUtils, System.Variants,
  System.Classes, Data.DB;

  type
  TCuentaDebito = class
  public
    estadoCuenta : string;
    saldo : Currency;
    idClienteCuenta : integer;
    idCuentaDebito : integer;
    numeroDeCuenta : string;

  end;
  var
  cuentaDebito: TCuentaDebito;

implementation

end.
