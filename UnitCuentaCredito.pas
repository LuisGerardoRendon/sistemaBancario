unit UnitCuentaCredito;

interface
uses System.SysUtils, System.Variants,
  System.Classes, Data.DB;

  type
  TCuentaCredito = class
  public
    estadoCuenta : string;
    deudaTotal : currency;
    idClienteCuenta : integer;
    idCuentaCredito : integer;
    numeroDeCuenta : string;
    function getPagos : integer;
    function getIntereses : Currency;

  end;
  var
  cuentaCredito: TCuentaCredito;
  pagos : integer;
  intereses : currency;

implementation

{ TCuentaCredito }
uses DataModuleDani;

function TCuentaCredito.getIntereses: Currency;
begin
  intereses := 0.0;
  with DataModuleDaniBD.CuentainteresesTable do
  begin
    Prepare;
    ParamByName('idCuentaCredito').AsInteger := idCuentaCredito;
    Open;
    Refresh;
    First;
    while not EOF do
    begin
      intereses := FieldByName('totalInteresesAcumulados').AsCurrency;
      Next;
    end;
  end;
  Result := intereses;
end;

function TCuentaCredito.getPagos: integer;
begin
  pagos := 0;
  with DataModuleDaniBD.PagoTable do
  begin
    Prepare;
    ParamByName('idCuentaCredito').AsInteger := idCuentaCredito;
    Open;
    Refresh;
    First;
    while not EOF do
    begin
      pagos := pagos + 1;
      Next;
    end;
  end;
  Result := pagos;
end;

end.
