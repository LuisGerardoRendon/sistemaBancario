unit EstadoCuentaDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,UnitCuentaDebito;

type
  TFormEstadoCuentaDebito = class(TForm)
    Label1: TLabel;
    LabelSaldo: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    LabelEstadoDeCuenta: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cargarDatos(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cuentaDebito : TCuentaDebito;

  end;

var
  FormEstadoCuentaDebito: TFormEstadoCuentaDebito;

implementation

{$R *.dfm}
uses DataModuleAldo, MenuCliente;

procedure TFormEstadoCuentaDebito.cargarDatos(Sender: TObject);
begin

  cuentaDebito := MenuCliente.FormMenuCliente.cuentaDebito;
  LabelSaldo.Caption := CurrToStr(cuentaDebito.saldo);
  LabelEstadoDeCuenta.Caption := cuentaDebito.estadoCuenta;

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

end.
