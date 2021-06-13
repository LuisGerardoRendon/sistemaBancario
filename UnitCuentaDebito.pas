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
    procedure actualizarEstado(estado: string; numeroCuenta: string);
    procedure obtenerId(numeroCuenta: string);

  end;
  var
  cuentaDebito: TCuentaDebito;

implementation
uses DataAccesModule, FireDAC.Stan.Param;
{ TCuentaDebito }

procedure TCuentaDebito.actualizarEstado(estado: string; numeroCuenta: string);
begin
obtenerId(numeroCuenta);
with DataAccesModule.DataAccesModule_.updateCuentaDebito do
  begin
    Open;
    Refresh;
    if FindKey([idCuentaDebito]) then
    begin
      Edit;
      FieldByName('estadoCuenta').AsString := estado;
      Post;
    end;
  end;
end;

procedure TCuentaDebito.obtenerId(numeroCuenta: string);
begin
with DataAccesModule_.getIdCuentaDebitoConNumeroCuenta do
  begin
  Prepare;
  ParamByName('numeroDeCuenta').AsString:= numeroDeCuenta;
  Open;
  Refresh;
  First;
  while not EOF do
    begin
     idCuentaDebito := FieldByName('id_cuenta_debito').AsInteger;
     Next;
    end;
  end;

end;

end.
