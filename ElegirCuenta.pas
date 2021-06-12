unit ElegirCuenta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaDebito, UnitCuentaCredito,
  Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TFormElegirCuenta = class(TForm)
    btnVerCuentaDebito: TButton;
    btnVerCuentaCredito: TButton;
    Label1: TLabel;
    txtNombre: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure changeButtonVisibility();
    procedure btnVerCuentaDebitoClick(Sender: TObject);
    procedure btnVerCuentaCreditoClick(Sender: TObject);
  private
    { Private declarations }
  public
    usuario : TUsuario;
    cuentaDebito : TCuentaDebito;
    cuentaCredito : TCuentaCredito;
  end;

var
  FormElegirCuenta: TFormElegirCuenta;

implementation

{$R *.dfm}
uses BuscarCliente, CuentaDebito, CuentaCredito;

procedure TFormElegirCuenta.FormShow(Sender: TObject);
begin
  usuario := BuscarCliente.FormBuscarCliente.usuario;
  cuentaDebito := BuscarCliente.FormBuscarCliente.cuentaDebito;
  cuentaCredito := BuscarCliente.FormBuscarCliente.cuentaCredito;

  changeButtonVisibility();

  txtNombre.Text := usuario.getNombreCompleto;
end;

procedure TFormElegirCuenta.changeButtonVisibility;
begin
  if not (cuentaDebito.estadoCuenta = 'activa') then
  begin
    btnVerCuentaDebito.Hide;
  end;

  if not (cuentaCredito.estadoCuenta = 'activa') then
  begin
    btnVerCuentaCredito.Hide;
  end;
end;

procedure TFormElegirCuenta.btnVerCuentaCreditoClick(Sender: TObject);
begin
  FormCuentaCredito.Show;
  FormElegirCuenta.Visible := False;
end;

procedure TFormElegirCuenta.btnVerCuentaDebitoClick(Sender: TObject);
begin
  FormCuentaDebito.Show;
  FormElegirCuenta.Visible := False;
end;

procedure TFormElegirCuenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;
end.
