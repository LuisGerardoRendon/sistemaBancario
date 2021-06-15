unit EstadoCuentaDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,UnitCuentaDebito, UnitUsuario;

type
  TFormEstadoCuentaDebito = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    LabelEstadoDeCuenta: TLabel;
    Label2: TLabel;
    LabelNombreCliente: TLabel;
    ButtonRegresar: TButton;
    Label3: TLabel;
    LabelNumeroCuenta: TLabel;
    LabelSaldo: TLabel;
    Panel3: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cargarDatos(Sender: TObject);
    procedure RegresarAMenuCliente();
    procedure ButtonRegresarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cuentaDebito : TCuentaDebito;
    usuarioCliente : TUsuario;
    usuarioGerente : TUsuario;
  end;

var
  FormEstadoCuentaDebito: TFormEstadoCuentaDebito;

implementation

{$R *.dfm}
uses DataModuleAldo, MenuCliente, PantallaPrincipal;

procedure TFormEstadoCuentaDebito.ButtonRegresarClick(Sender: TObject);
begin
  regresarAMenuCliente;
end;

procedure TFormEstadoCuentaDebito.cargarDatos(Sender: TObject);
begin

  usuarioCliente := PantallaPrincipal.FormPantallaPrincipal.usuario;

  if usuarioCliente.tipo = 0 then
  begin
       cuentaDebito := MenuCliente.FormMenuCliente.cuentaDebito;
  end
  else
  begin
      // Aqui se agigna la cuenta desde intereses y regacargos
  end;


  LabelSaldo.Caption := CurrToStr(cuentaDebito.saldo);
  LabelEstadoDeCuenta.Caption := cuentaDebito.estadoCuenta;
  LabelNombreCliente.Caption := usuarioCliente.getNombreCompleto;
  LabelNumeroCuenta.Caption := cuentaDebito.numeroDeCuenta;

  with DataModuleAldoBd.MovimientoTable do
  begin
      Close;
      Prepare;
      paramByName('id_cuenta_debito').AsInteger := cuentaDebito.idCuentaDebito;
      Open;
  end;
end;

procedure TFormEstadoCuentaDebito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

procedure TFormEstadoCuentaDebito.regresarAMenuCliente;
begin
  MenuCliente.FormMenuCliente.Show;
  FormEstadoCuentaDebito.Visible := False;
end;

end.
