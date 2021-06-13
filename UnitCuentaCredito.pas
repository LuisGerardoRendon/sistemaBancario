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
    procedure actualizarEstado(estado: string; numeroCuenta: string);
    procedure obtenerId(numeroCuenta: string);
    function getPagos : integer;
    function getIntereses : Currency;

  end;
  var
  cuentaCredito: TCuentaCredito;
  pagos : integer;
  intereses : currency;

implementation

uses DataAccesModule, FireDAC.Stan.Param, DataModuleDani;
{ TCuentaCredito }

procedure TCuentaCredito.actualizarEstado(estado: string; numeroCuenta:string);
begin
  obtenerId(numeroCuenta);
with DataAccesModule.DataAccesModule_.updateCuentaCredito do
  begin
    Open;
    Refresh;
    if FindKey([idCuentaCredito]) then
    begin
      Edit;
      FieldByName('estadoCuenta').AsString := estado;
      Post;
    end;
  end;
end;

procedure TCuentaCredito.obtenerId(numeroCuenta: string);
begin
  with DataAccesModule_.getIdCuentaCreditoNumeroCuenta do
  begin
  Prepare;
  ParamByName('numeroDeCuenta').AsString:= numeroDeCuenta;
  Open;
  Refresh;
  First;
  while not EOF do
    begin
     idCuentaCredito := FieldByName('id_cuenta_credito').AsInteger;
     Next;
    end;
  end;
end;

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
