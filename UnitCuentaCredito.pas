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
    function getCuentaCredito : TCuentaCredito;


  end;
  var
  cuentaCredito: TCuentaCredito;


implementation

uses DataModuleAldo;

function TCuentaCredito.getCuentaCredito : TCuentaCredito;
begin
  with DataModuleAldoBD.CuentaCreditoTable do
  begin
    cuentaCredito := TCuentaCredito.Create;
    Prepare;
    ParamByName('numeroDeCuenta').AsString := numeroDeCuenta;
    Open;
    First;
    while not EOF do
    begin
      cuentaCredito.estadoCuenta := FieldByName('estadoCuenta').AsString;
      cuentaCredito.deudaTotal := FieldByName('deudaTotal').AsInteger;
      cuentaCredito.idClienteCuenta := FieldByName('id_cliente_cuenta').AsInteger;
      cuentaCredito.idCuentaCredito := FieldByName('id_cuenta_credito').AsInteger;
      cuentaCredito.numeroDeCuenta := FieldByName('numeroDeCuenta').AsString;
      Next;
    end;

    Result := cuentaCredito;
  end;
end;


end.
