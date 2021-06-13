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
    procedure actualizarEstado(estado: string; numeroCuenta: string);
    procedure obtenerId(numeroCuenta: string);

  end;
  var
  cuentaCredito: TCuentaCredito;

implementation

uses DataAccesModule, FireDAC.Stan.Param;
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

end.
