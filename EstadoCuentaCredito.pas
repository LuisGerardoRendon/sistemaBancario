unit EstadoCuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UnitCuentaCredito,
  Vcl.DBCtrls, UnitUsuario;

type
  TFormEstadoCuentaCredito = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    LabelDeuda: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    LabelNombreCliente: TLabel;
    ButtonCancelar: TButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cargarDatos(Sender: TObject);
    procedure regresarAMenuCliente();
    procedure ButtonCancelarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    cuentaCredito : TCuentaCredito;
    intereses : string;
    usuarioCliente : TUsuario;
  end;

var
  FormEstadoCuentaCredito: TFormEstadoCuentaCredito;

implementation

{$R *.dfm}

uses DataModuleAldo, MenuCliente, PantallaPrincipal;

procedure TFormEstadoCuentaCredito.ButtonCancelarClick(Sender: TObject);
begin
  regresarAMenuCliente;
end;

procedure TFormEstadoCuentaCredito.cargarDatos(Sender: TObject);
begin

  usuarioCliente := PantallaPrincipal.FormPantallaPrincipal.usuario;
  cuentaCredito := MenuCliente.FormMenuCliente.cuentaCredito;
  LabelDeuda.Caption := CurrToStr(cuentaCredito.deudaTotal);
  LabelNombreCliente.Caption := usuarioCliente.getNombreCompleto;

  with DataModuleAldoBD.PagoTable do
  begin
      Close;
      Prepare;
      paramByName('id_cuenta_credito').AsInteger := cuentaCredito.idCuentaCredito;
      Open;

  with DataModuleAldoBD.RecargoTable do
  begin
      Close;
      Prepare;
      paramByName('id_cuenta_credito').AsInteger := cuentaCredito.idCuentaCredito;
      Open;

  with DataModuleAldoBD.CuentainteresesTable do
  begin
      Close;
      Prepare;
      paramByName('id_cuenta_credito').AsInteger := cuentaCredito.idCuentaCredito;
      Open;
      while not EOF do
    begin
         intereses := FieldByName('totalInteresesAcumulados').AsString;
         Next;
    end;
  DBText1.Caption := intereses;

  end;

  end;
  end;
end;

procedure TFormEstadoCuentaCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       Application.Terminate;
end;

procedure TFormEstadoCuentaCredito.regresarAMenuCliente;
begin
  MenuCliente.FormMenuCliente.Show;
  FormEstadoCuentaCredito.Visible := False;
end;


end.
