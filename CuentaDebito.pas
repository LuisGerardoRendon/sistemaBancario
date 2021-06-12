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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FillTextBoxes;
    procedure btnRetirarClick(Sender: TObject);
    function validarMonto () : boolean;
    procedure btnAbonarClick(Sender: TObject);
    procedure updateTextBoxes;
  private
    monto : integer;
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
  with DataModuleDaniBD.updateSaldoCuenta do
  begin
    Open;
    if FindKey([cuentaDebito.idCuentaDebito]) then
    Edit;
    FieldByName('saldo').AsCurrency := cuentaDebito.saldo;
    Post;
  end;
  updateTextBoxes;
end;

procedure TFormCuentaDebito.btnRetirarClick(Sender: TObject);
begin
  monto := Strtoint(txtMonto.Text);
  if validarMonto then
  begin
    cuentaDebito.saldo := cuentaDebito.saldo - monto;
    with DataModuleDaniBD.updateSaldoCuenta do
    begin
      if FindKey([cuentaDebito.idCuentaDebito]) then
      Edit;
      FieldByName('saldo').AsCurrency := cuentaDebito.saldo;
      Post;
    end;
  end
  Else
  begin
    showmessage('La cantidad que se desea retirar es mayor que el saldo');
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

procedure TFormCuentaDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  elegirCuenta.FormElegirCuenta.cuentaDebito := cuentaDebito;
  FormCuentaDebito.Visible := False;
  FormElegirCuenta.Show;
end;

end.
