unit RegistrarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitCuentaCredito;

type
  TFormRegistrarCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtNombre: TEdit;
    txtApellidoPaterno: TEdit;
    txtApellidoMaterno: TEdit;
    txtClaveElector: TEdit;
    txtCorreoElectronico: TEdit;
    txtTelefono: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbTipoCuenta: TComboBox;
    lbSaldoInicial: TLabel;
    txtSaldoInicial: TEdit;
    btnRegistrar: TButton;
    lbNumCuenta: TLabel;
    txtNumeroCuenta: TEdit;
    btnAtras: TButton;
    Label11: TLabel;
    txtContrasenia: TEdit;
    procedure clicAtras(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbTipoCuentaChange(Sender: TObject);
    function VerificateFields : boolean;
    procedure btnRegistrarClick(Sender: TObject);
    function isValidEmail (email : string) :boolean;
    procedure letterOnlyKeyPress(Sender: TObject; var Key: Char);
    procedure crearUsuario;
    procedure crearCuentaDebito;
    procedure crearCuentaCredito;
    function isClienteCreated : boolean;
    function isCuentaCreada : boolean;
    procedure getIdUsuario;
    procedure getIdCuentaDebito;
    procedure crearMovimiento;
    procedure crearCuentaIntereses;

  private
    tipoCuenta : string;
    procedure crearCuenta;
  public
    idUsuario : integer;
    idCuentaDebito : integer;
    cuentaCredito : TCuentaCredito;
    saldo : integer;
  end;

var
  FormRegistrarCliente: TFormRegistrarCliente;

implementation
uses InformacionCliente, DataModuleDani, MenuGerente, System.Hash;

{$R *.dfm}

procedure TFormRegistrarCliente.FormShow(Sender: TObject);
begin
  cbTipoCuenta.Items.Clear;
  cbTipoCuenta.Items.Add('Credito');
  cbTipoCuenta.Items.Add('Debito');
  txtNombre.Clear;
  txtApellidoPaterno.Clear;
  txtApellidoMaterno.Clear;
  txtClaveElector.Clear;
  txtCorreoElectronico.Clear;
  txtTelefono.Clear;
  txtSaldoInicial.Clear;
  txtNumeroCuenta.Clear;
  txtContrasenia.Clear;
end;

procedure TFormRegistrarCliente.cbTipoCuentaChange(Sender: TObject);
begin
  if (cbTipoCuenta.Text = 'Debito') then
  begin
    lbSaldoInicial.Visible := true;
    txtSaldoInicial.Visible := true;
    tipoCuenta := 'Debito'
  end
  else
  begin
    lbSaldoInicial.Visible := false;
    txtSaldoInicial.Visible := false;
    tipoCuenta := 'Credito'
  end;
end;

procedure TFormRegistrarCliente.btnRegistrarClick(Sender: TObject);
begin
  if VerificateFields then
  begin
    if not isClienteCreated then
    begin
      if not isCuentaCreada then
      begin
        crearCuenta;
      end;
    end
  end;
end;

function TFormRegistrarCliente.VerificateFields : boolean;
begin
  if (txtNombre.Text = '')
  or (txtApellidoPaterno.Text = '')
  or (txtApellidoMaterno.Text = '')
  or (txtTelefono.Text = '')
  or (txtClaveElector.Text = '')
  or (txtCorreoElectronico.Text = '')
  or (txtContrasenia.Text = '')
  or (txtNumeroCuenta.Text = '')
  or (cbTipoCuenta.Text = '') then
  begin
    showmessage('Campos incompletos. Asegurate de no dejar campos vacíos');
    Result:= false;
  end
  else
  begin
    if not isValidEmail(txtCorreoElectronico.text) then
    begin
      showmessage('Ingrese un correo electrónico valido');
      Result := false;
    end
    else
    begin
      Result:= true;
    end;
  end;
end;

procedure TFormRegistrarCliente.letterOnlyKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key in ['0'..'9']) then
  begin
    ShowMessage('Solo se aceptan letras');
    Key := #0;
  end;
end;

function TFormRegistrarCliente.isClienteCreated: boolean;
var
  correoElectronico : string;
  claveElector : string;
begin
  with DataModuleDaniBD.isClienteCreated do
  begin
    Prepare;
    ParamByName('correoElectronico').AsString:= txtCorreoElectronico.Text;
    ParamByName('claveElector').AsString:= txtClaveElector.Text;
    Open;
    Refresh;
    First;
    while not EOF do
      begin
      correoElectronico := FieldByName('correoElectronico').AsString;
      claveElector := FieldByName('claveElector').AsString;
      Next;
      end;
  end;

  if (correoElectronico = txtCorreoElectronico.Text)
  or (claveElector = txtClaveElector.Text) then
  begin
    result := true;
    showmessage('El correo o la clave de elector que ingreso ya está vinculado a otro cliente');
  end
  else
  begin
    result := false;
  end;

  (*if claveElector = txtClaveElector.Text then
  begin
    result := true;
    showmessage('La clave de elector que ingreso ya está vinculada a otro cliente');
  end
  else
  begin
    result := false;
  end;*)
end;

function TFormRegistrarCliente.isCuentaCreada: boolean;
var
numeroCuentaCredito : string;
numeroCuentaDebito : string;
begin
  with DataModuleDaniBD.isCuentaCreditoCreated do
  begin
    Prepare;
    ParamByName('numeroDeCuenta').AsString := txtNumeroCuenta.Text;
    Open;
    Refresh;
    First;
    while not EOF do
      begin
      numeroCuentaCredito := FieldByName('numeroDeCuenta').AsString;
      Next;
      end;
  end;

  with DataModuleDaniBD.isCuentaDebitoCreated do
  begin
    Prepare;
    ParamByName('numeroDeCuenta').AsString := txtNumeroCuenta.Text;
    Open;
    Refresh;
    First;
    while not EOF do
      begin
      numeroCuentaDebito := FieldByName('numeroDeCuenta').AsString;
      Next;
      end;
  end;

  if (numeroCuentaCredito = txtNumeroCuenta.Text)
  or (numeroCuentaDebito = txtNumeroCuenta.Text)then
  begin
    result := true;
    showmessage ('Ya existe una cuenta con el número de cuenta dado');
  end
  else
  begin
    result := false;
  end;

end;

function TFormRegistrarCliente.isValidEmail(email: string) : boolean;
const
  charslist = ['_', '-', '.', '0'..'9', 'A'..'Z', 'a'..'z'];
var
  Arobasc, lastpoint : boolean;
  i, n : integer;
  c : char;
begin
  n := Length(email);
  i := 1;
  Arobasc := false;
  lastpoint := false;
  result := true;
  while (i <= n) do begin
    c := email[i];
    if c = '@' then
    begin
      if Arobasc then
      begin
        result := false;
        exit;
      end;
      Arobasc := true;
    end
    else if (c = '.') and Arobasc then
    begin
      lastpoint := true;
    end
    else if not(c in charslist) then
    begin
      result := false;
      exit;
    end;
    inc(i);
  end;
  if not(lastpoint) or (email[n] = '.')then
    result := false;
end;

procedure TFormRegistrarCliente.crearUsuario;
begin
  with DataModuleDaniBD.CRUDUsuario do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('apellidoPaterno').AsString := txtApellidoPaterno.Text;
    FieldByName('apellidoMaterno').AsString := txtApellidoMaterno.Text;
    FieldByName('claveElector').AsString := txtClaveElector.Text;
    FieldByName('correoElectronico').AsString := txtCorreoElectronico.Text;
    FieldByName('nombres').AsString := txtNombre.Text;
    FieldByName('telefono').AsString := txtTelefono.Text;
    FieldByName('contrasenia').AsString := THashMD5.GetHashString(txtContrasenia.Text);
    FieldByName('tipo').AsInteger := 0;
    Post;
  end;
end;

procedure TFormRegistrarCliente.crearCuenta;
begin
  if tipoCuenta = 'Debito' then
  begin
    if (txtSaldoInicial.Text = '') then
    begin
      saldo := 0;
    end
    else
    begin
      saldo := Strtoint(txtSaldoInicial.Text);
    end;

    if saldo > 0 then
    begin
      crearUsuario;
      crearCuentaDebito;
      crearMovimiento;
      showmessage('La cuenta se creó con éxito');
      FormMenuGerente.Show;
      FormRegistrarCliente.Visible := False;
    end
    else
    begin
      showmessage('No se puede crear una cuenta sin saldo');
    end;
  end
  else
  begin
    if (tipoCuenta = 'Credito') then
    begin
      crearUsuario;
      crearCuentaCredito;
      crearCuentaIntereses;
      showmessage('La cuenta se creó con éxito');
      FormMenuGerente.Show;
      FormRegistrarCliente.Visible := False;
    end;
  end;
end;

procedure TFormRegistrarCliente.crearCuentaCredito;
begin
  getIdUsuario;
  with DataModuleDaniBD.CRUDCuentaCredito do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('estadoCuenta').AsString := 'activa';
    FieldByName('deudaTotal').AsCurrency := 8100;
    FieldByName('id_cliente_cuenta').AsInteger := idUsuario;
    FieldByName('numeroDeCuenta').AsString := txtNumeroCuenta.Text;
    Post;
  end;
end;

procedure TFormRegistrarCliente.crearCuentaDebito;
begin
  getIdUsuario;
  with DataModuleDaniBD.CRUDCuentaDebito do
    begin
      Open;
      Refresh;
      Insert;
      FieldByName('estadoCuenta').AsString := 'activa';
      FieldByName('saldo').AsCurrency := Strtoint(txtSaldoInicial.Text);
      FieldByName('id_cliente_cuenta').AsInteger := idUsuario;
      FieldByName('numeroDeCuenta').AsString := txtNumeroCuenta.Text;
      Post;
    end;
end;

procedure TFormRegistrarCliente.crearCuentaIntereses;
begin
  cuentaCredito := TCuentaCredito.Create;
  cuentaCredito.obtenerId(txtNumeroCuenta.Text);
  with DataModuleDaniBD.CRUDCuentaIntereses do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('idCuentaCredito').AsInteger := cuentaCredito.idCuentaCredito;
    Post;
  end;
end;

procedure TFormRegistrarCliente.crearMovimiento;
var
currentDate : TDateTime;
begin
  getIdCuentaDebito;
  currentDate := Now;
  with DataModuleDaniBD.createMovimiento do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('tipo_movimiento').AsString := 'abono';
    FieldByName('monto').AsCurrency := Strtoint(txtSaldoInicial.Text);
    FieldByName('id_cuenta_movimiento').AsInteger := idCuentaDebito;
    FieldByName('fecha').AsDateTime := currentDate;
    Post;
  end;
end;

procedure TFormRegistrarCliente.getIdUsuario;
begin
  with DataModuleDaniBD.UsuariobancoTable do
  begin
    Prepare;
    ParamByName('claveElector').AsString:= txtClaveElector.Text;
    Open;
    Refresh;
    First;
    while not EOF do
      begin
      idUsuario := FieldByName('idUsuario').AsInteger;
      Next;
      end;
  end;
end;

procedure TFormRegistrarCliente.getIdCuentaDebito;
begin
  with DataModuleDaniBD.CuentadebitoTable do
  begin
    Prepare;
    ParamByName('idUsuario').AsInteger := idUsuario;
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

procedure TFormRegistrarCliente.clicAtras(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormRegistrarCliente.Visible := False;
end;

procedure TFormRegistrarCliente.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Application.Terminate;
end;
end.
