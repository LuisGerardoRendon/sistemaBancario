unit MenuCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaCredito, UnitCuentaDebito;

type
  TFormMenuCliente = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cargarLabels(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    id_cuenta_debito : integer;
    id_cuenta_credito : integer;
    estadoCuenta : string;
    saldo : double;
    deudaTotal : double;
    id_cliente_cuenta : integer;
    numeroDeCuenta : string;

    usuarioCliente : TUsuario;
    cuentaDebito : TCuentaDebito;
    cuentaCredito : TCuentaCredito;
    cuentaDebito2 : TCuentaDebito;
    cuentaCredito2 : TCuentaCredito;
    cuentaDebito3 : TCuentaDebito;
    cuentaCredito3 : TCuentaCredito;

  end;

var
  FormMenuCliente: TFormMenuCliente;

implementation

{$R *.dfm}

uses EstadoCuentaDebito, EstadoCuentaCredito, PantallaPrincipal;




procedure TFormMenuCliente.Button1Click(Sender: TObject);
begin
        if not (Length(cuentaDebito.numeroDeCuenta)= 0) then
        begin
            FormEstadoCuentaDebito.Show;
            FormMenuCliente.Visible := False;
        end
        Else
        begin
            showMessage('El cliente no tiene una cuenta de debito');
        end;

end;

procedure TFormMenuCliente.Button2Click(Sender: TObject);
begin

        if not (Length(cuentaCredito.numeroDeCuenta)= 0) then
        begin
            FormEstadoCuentaCredito.Show;
            FormMenuCliente.Visible := False;
        end
        Else
        begin
            showMessage('El cliente no tiene una cuenta de credito');
        end;
end;

procedure TFormMenuCliente.cargarLabels(Sender: TObject);
begin
    usuarioCliente := PantallaPrincipal.FormPantallaPrincipal.usuario;
    cuentaDebito := usuarioCliente.getCuentaDebito;
    cuentaCredito := usuarioCliente.getCuentaCredito;

    Label2.Caption := usuarioCliente.getNombreCompleto;
    

end;

procedure TFormMenuCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Application.Terminate;
end;

end.
