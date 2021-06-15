unit CuentaDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaDebito;

type
  TFormCuentaDebito = class(TForm)
    Label1: TLabel;
    txtNombre: TEdit;
    txtNumCuenta: TEdit;
    txtSaldo: TEdit;
    btnRetirar: TButton;
    btnAbonar: TButton;
    txtMonto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnAtras: TButton;
    procedure FormShow(Sender: TObject);
    procedure FillTextBoxes;
    procedure btnRetirarClick(Sender: TObject);
    function validarMonto () : boolean;
    procedure btnAbonarClick(Sender: TObject);
    procedure updateTextBoxes;
    procedure crearMovimiento (tipoMovimiento : string);
    procedure btnAtrasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    monto : integer;
    currentDate : TDateTime;
    procedure updateSaldo;
  public
    usuario : TUsuario;
    cuentaDebito : TCuentaDebito;
  end;

var
  FormCuentaDebito: TFormCuentaDebito;

implementation

{$R *.dfm}
uses ElegirCuenta, DataModuleDani;

procedure TFormCuentaDebito.FormShow(Sender: TObject);
begin
  usuario := ElegirCuenta.FormElegirCuenta.usuario;
  cuentaDebito := ElegirCuenta.FormElegirCuenta.cuentaDebito;
  FillTextBoxes;
end;

procedure TFormCuentaDebito.btnAbonarClick(Sender: TObject);
begin
  monto := Strtoint(txtMonto.Text);
  cuentaDebito.saldo := cuentaDebito.saldo + monto;
  updateSaldo;
  crearMovimiento('abono');
end;

procedure TFormCuentaDebito.btnRetirarClick(Sender: TObject);
begin
  monto := Strtoint(txtMonto.Text);
  if validarMonto then
  begin
    cuentaDebito.saldo := cuentaDebito.saldo - monto;
    updateSaldo;
    crearMovimiento('retiro');
  end
  Else
  begin
    showmessage('La cantidad que se desea retirar es mayor que el saldo');
  end;
end;

procedure TFormCuentaDebito.updateSaldo;
begin
  with DataModuleDaniBD.CRUDCuentaDebito do
  begin
    Open;
    Refresh;
    if FindKey([cuentaDebito.idCuentaDebito]) then
    begin
      Edit;
      FieldByName('saldo').AsCurrency := cuentaDebito.saldo;
      Post;
    end;
  end;
  updateTextBoxes;
end;

procedure TFormCuentaDebito.FillTextBoxes;
begin
  txtNombre.Text := usuario.getNombreCompleto;
  txtNumCuenta.Text := cuentaDebito.numeroDeCuenta;
  txtSaldo.Text := CurrToStrF(cuentaDebito.saldo, ffCurrency, 2);
end;

procedure TFormCuentaDebito.updateTextBoxes;
begin
  txtSaldo.Text := CurrToStrF(cuentaDebito.saldo, ffCurrency, 2);
  txtMonto.Clear;
end;

function TFormCuentaDebito.validarMonto: boolean;
begin
  if monto <= cuentaDebito.saldo then
  begin
    Result := true;
  end
  Else
  begin
    Result := false;
  end;
end;

procedure TFormCuentaDebito.crearMovimiento(tipoMovimiento: string);
begin
  currentDate := Now;
  with DataModuleDaniBD.createMovimiento do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('tipo_movimiento').AsString := tipoMovimiento;
    FieldByName('monto').AsCurrency := monto;
    FieldByName('id_cuenta_movimiento').AsInteger := cuentaDebito.idCuentaDebito;
    FieldByName('fecha').AsDateTime := currentDate;
    Post;
  end;
  showmessage('El '+tipoMovimiento+' se realizó con éxito');
end;

procedure TFormCuentaDebito.btnAtrasClick(Sender: TObject);
begin
  elegirCuenta.FormElegirCuenta.cuentaDebito := cuentaDebito;
  FormCuentaDebito.Visible := False;
  FormElegirCuenta.Show;
end;

procedure TFormCuentaDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;
end.
