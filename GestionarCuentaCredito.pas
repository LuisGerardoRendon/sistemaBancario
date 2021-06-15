unit GestionarCuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCuentaCredito, Vcl.StdCtrls;

type
  TFormGestionarCuenta = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    labelNumeroCuenta: TLabel;
    Atrás: TButton;
    Label2: TLabel;
    labelDeudaTotal: TLabel;
    procedure clicAtras(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure onShow(Sender: TObject);
    procedure cerrrarCuentaClic(Sender: TObject);
    procedure clicCongelar(Sender: TObject);
    procedure atras();
  private
    { Private declarations }
  public
  cuentaCredito: TCuentaCredito;
  numeroDeCuenta: string;
  deudaTotal: Currency;
    { Public declarations }
  end;

var
  FormGestionarCuenta: TFormGestionarCuenta;

implementation
uses MenuGerente, GestionarCuentasCredito;

{$R *.dfm}

procedure TFormGestionarCuenta.atras;
begin
  FormGestionarCuenta.Visible:= False;
  FormMenuGerente.Show;
end;

procedure TFormGestionarCuenta.cerrrarCuentaClic(Sender: TObject);
begin
//Cerrar cuenta

cuentaCredito.actualizarEstado('cerrada');
showmessage('La cuenta ha sido cerrada exitosamente');
atras;
end;

procedure TFormGestionarCuenta.clicAtras(Sender: TObject);
begin
atras;
end;

procedure TFormGestionarCuenta.clicCongelar(Sender: TObject);
begin
cuentaCredito.actualizarEstado('congelada');
showmessage('La cuenta ha sido congelada exitosamente');
atras;
end;

procedure TFormGestionarCuenta.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGestionarCuenta.onShow(Sender: TObject);
begin
//toto
numeroDeCuenta := GestionarCuentasCredito.FormGestionarCuentasCredito.numeroDeCuenta;
labelNumeroCuenta.Caption := numeroDeCuenta;
cuentaCredito := TCuentaCredito.Create;
cuentaCredito.numeroDeCuenta := numeroDeCuenta;
deudaTotal := GestionarCuentasCredito.FormGestionarCuentasCredito.deudaTotal;
labelDeudaTotal.Caption := CurrToStrF(deudaTotal, ffCurrency, 2);
end;

end.
