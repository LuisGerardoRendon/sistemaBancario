unit GestionarCuentasCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, UnitCuentaCredito,
  Vcl.StdCtrls;

type
  TFormGestionarCuentasCredito = class(TForm)
    DBGridCuentasCredito: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure clicCuenta(Column: TColumn);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicAtras(Sender: TObject);
    procedure onShow(Sender: TObject);
    procedure cargarDatos(Sender: TObject);

  private
    { Private declarations }
  public
  numeroDeCuenta:string;
  deudaTotal: Currency;

    { Public declarations }
  end;

var
  FormGestionarCuentasCredito: TFormGestionarCuentasCredito;


implementation
uses MenuGerente, GestionarCuentaCredito, DataAccesModule;

{$R *.dfm}

procedure TFormGestionarCuentasCredito.cargarDatos(Sender: TObject);
begin
  DataAccesModule.DataAccesModule_.CuentadebitoTable.Active:= True;
end;

procedure TFormGestionarCuentasCredito.clicAtras(Sender: TObject);
begin
FormMenuGerente.Show;
FormGestionarCuentasCredito.Visible:= False;
end;

procedure TFormGestionarCuentasCredito.clicCuenta(Column: TColumn);
begin
numeroDeCuenta := DBGridCuentasCredito.Fields[0].AsString;
deudaTotal := DBGridCuentasCredito.Fields[1].AsCurrency;
FormGestionarCuentasCredito.Visible:= False;
GestionarCuentaCredito.FormGestionarCuenta.Show;
end;




procedure TFormGestionarCuentasCredito.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGestionarCuentasCredito.onShow(Sender: TObject);
begin
DataAccesModule.DataAccesModule_.CuentaCreditoTable.Active:= True;
DataAccesModule.DataAccesModule_.CuentaCreditoTable.Refresh;
end;

end.
