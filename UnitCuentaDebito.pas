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
    function getCuentaDebito : TCuentaDebito;


  end;
  var
  cuentaDebito: TCuentaDebito;

implementation

uses DataModuleAldo;

function TCuentaDebito.getCuentaDebito : TCuentaDebito;
begin
  with DataModuleAldoBD.CuentaDebitoTable do
  begin
    cuentaDebito := TCuentaDebito.Create;
    Prepare;
    ParamByName('numeroDeCuenta').AsString := numeroDeCuenta;
    Open;
    First;
    while not EOF do
    begin
      cuentaDebito.estadoCuenta := FieldByName('estadoCuenta').AsString;
      cuentaDebito.saldo := FieldByName('saldo').AsCurrency;
      cuentaDebito.idClienteCuenta := FieldByName('id_cliente_cuenta').AsInteger;
      cuentaDebito.idCuentaDebito := FieldByName('id_cuenta_debito').AsInteger;
      cuentaDebito.numeroDeCuenta := FieldByName('numeroDeCuenta').AsString;
      Next;
    end;

    Result := cuentaDebito;
  end;
end;
end.
