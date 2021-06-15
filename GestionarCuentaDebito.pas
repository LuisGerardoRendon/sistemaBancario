unit GestionarCuentaDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitCuentaDebito;

type
  TFormGestionarCuentaDebito = class(TForm)
    Button3: TButton;
    Button1: TButton;
    Atrás: TButton;
    Label1: TLabel;
    labelNumeroCuenta: TLabel;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure clicCancelar(Sender: TObject);
    procedure clicCerrarCuenta(Sender: TObject);
    procedure clicCongelarCuenta(Sender: TObject);
    procedure verEstadodeCuenta(Sender: TObject);
    procedure regresarAgestionar();
  private
    { Private declarations }
  public
  numeroDecuenta: string;
  idCuentaDebito : integer;
  cuentaDebito: TCuentaDebito;

    { Public declarations }
  end;

var
  FormGestionarCuentaDebito: TFormGestionarCuentaDebito;

implementation
uses GestionarCuentasDebito, MenuGerente;
{$R *.dfm}

procedure TFormGestionarCuentaDebito.clicCancelar(Sender: TObject);
begin
regresarAgestionar;
end;

procedure TFormGestionarCuentaDebito.clicCerrarCuenta(Sender: TObject);
begin
numeroDecuenta :=GestionarCuentasDebito.FormCuestionarCuentasDebito.numeroDeCuenta;
cuentaDebito.Destroy;
cuentaDebito := TCuentaDebito.Create;

cuentaDebito.numeroDeCuenta := numeroDeCuenta;
cuentaDebito.actualizarEstado('cerrada', numeroDeCuenta);
//TODO CERRAR CUENTA
//actualizarCuenta('cerrada');
showmessage('Cuenta cerrada exitósamente');
regresarAgestionar;
end;

procedure TFormGestionarCuentaDebito.clicCongelarCuenta(Sender: TObject);
begin
//TODO CONGELAR CUENTA
numeroDecuenta :=GestionarCuentasDebito.FormCuestionarCuentasDebito.numeroDeCuenta;
cuentaDebito.Destroy;
cuentaDebito := TCuentaDebito.Create;
cuentaDebito.numeroDeCuenta := numeroDeCuenta;
cuentaDebito.actualizarEstado('congelada', numeroDeCuenta);
showmessage('Cuenta congelada exitósamente');
regresarAgestionar;
end;

procedure TFormGestionarCuentaDebito.FormShow(Sender: TObject);
begin
numeroDecuenta :=GestionarCuentasDebito.FormCuestionarCuentasDebito.numeroDeCuenta;
labelNumeroCuenta.Caption := numeroDeCuenta;
cuentaDebito := TCuentaDebito.Create;


//recuperarIdCuenta;
//ONSHOW
end;

procedure TFormGestionarCuentaDebito.onClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGestionarCuentaDebito.regresarAgestionar;
begin
GestionarCuentasDebito.FormCuestionarCuentasDebito.Show;
FormGestionarCuentaDebito.Visible := False;
end;

procedure TFormGestionarCuentaDebito.verEstadodeCuenta(Sender: TObject);
begin

//todoVerestado de cuenta
end;

end.
