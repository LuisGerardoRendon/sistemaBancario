unit UnitUsuario;

interface
uses System.SysUtils, System.Variants,
  System.Classes, Data.DB, UnitCuentaDebito, UnitCuentaCredito;

  type
  TUsuario = class
  public
    idUsuario : integer;
    nombres: string;
    apellidoPaterno: string;
    apellidoMaterno: string;
    claveElector: string;
    correoElectronico: string;
    telefono: string;
    contrasenia: string;
    tipo: integer;
    nombreCompleto : string;
    function getCuentaCredito : TCuentaCredito;
    function getCuentaDebito : TCuentaDebito;
    function getNombreCompleto : string;

  end;
  var
  usuario: TUsuario;
  cuentaDebito : TCuentaDebito;
  cuentaCredito : TCuentaCredito;

implementation

uses DataModuleDani, FireDAC.Stan.Param;

function TUsuario.getCuentaCredito : TCuentaCredito;
begin
  with DataModuleDaniBD.CuentacreditoTable do
  begin
    cuentaCredito := TCuentaCredito.Create;
    Prepare;
    ParamByName('idUsuario').AsInteger := idUsuario;
    Open;
    Refresh;
    First;
    while not EOF do
    begin
      cuentaCredito.estadoCuenta := FieldByName('estadoCuenta').AsString;
      cuentaCredito.deudaTotal := FieldByName('deudaTotal').AsCurrency;
      cuentaCredito.idClienteCuenta := FieldByName('id_cliente_cuenta').AsInteger;
      cuentaCredito.idCuentaCredito := FieldByName('id_cuenta_credito').AsInteger;
      cuentaCredito.numeroDeCuenta := FieldByName('numeroDeCuenta').AsString;
      Next;
    end;

    Result := cuentaCredito;
  end;
end;

function TUsuario.getCuentaDebito : TCuentaDebito;
begin
  with DataModuleDaniBD.CuentaDebitoTable do
  begin
    cuentaDebito := TCuentaDebito.Create;
    Prepare;
    ParamByName('idUsuario').AsInteger := idUsuario;
    Open;
    Refresh;
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

function TUsuario.getNombreCompleto: string;
begin
  nombreCompleto := nombres + ' ' + apellidoPaterno + ' ' + apellidoMaterno;
  Result :=  nombreCompleto;
end;

end.
