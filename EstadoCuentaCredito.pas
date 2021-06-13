unit EstadoCuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UnitCuentaCredito,
  Vcl.DBCtrls;

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

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cargarDatos(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    cuentaCredito : TCuentaCredito;
    intereses : string;
  end;

var
  FormEstadoCuentaCredito: TFormEstadoCuentaCredito;

implementation

{$R *.dfm}

uses DataModuleAldo, MenuCliente;
procedure TFormEstadoCuentaCredito.cargarDatos(Sender: TObject);
begin
  cuentaCredito := MenuCliente.FormMenuCliente.cuentaCredito;
  LabelDeuda.Caption := cuentaCredito.deudaTotal.ToString;

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



end.
