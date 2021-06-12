unit CuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaCredito;

type
  TFormCuentaCredito = class(TForm)
    Label1: TLabel;
    txtDeuda: TEdit;
    txtNombre: TEdit;
    txtMonto: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FillTextBoxes;
  private
    { Private declarations }
  public
    usuario : TUsuario;
    cuentaCredito : TCuentaCredito;
  end;

var
  FormCuentaCredito: TFormCuentaCredito;

implementation

{$R *.dfm}
uses ElegirCuenta;

procedure TFormCuentaCredito.FormShow(Sender: TObject);
begin
  usuario := ElegirCuenta.FormElegirCuenta.usuario;
  cuentaCredito := ElegirCuenta.FormElegirCuenta.cuentaCredito;

  FillTextBoxes;
end;

procedure TFormCuentaCredito.FillTextBoxes;
begin
  txtNombre.Text := usuario.getNombreCompleto;
  txtDeuda.Text := inttostr (cuentaCredito.deudaTotal);
end;

procedure TFormCuentaCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCuentaCredito.Visible := False;
  FormElegirCuenta.Show;
end;

end.
