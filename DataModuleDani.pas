unit DataModuleDani;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModuleDaniBD = class(TDataModule)
    Banco_databaseConnection: TFDConnection;
    UsuariobancoTable: TFDQuery;
    dsUsuarios: TDataSource;
    CuentacreditoTable: TFDQuery;
    CuentadebitoTable: TFDQuery;
    CRUDCuentaDebito: TFDTable;
    createMovimiento: TFDTable;
    PagoTable: TFDQuery;
    createPago: TFDTable;
    CRUDCuentaCredito: TFDTable;
    CuentainteresesTable: TFDQuery;
    CRUDCuentaIntereses: TFDTable;
    CRUDUsuario: TFDTable;
    isClienteCreated: TFDQuery;
    isCuentaCreditoCreated: TFDQuery;
    isCuentaDebitoCreated: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDaniBD: TDataModuleDaniBD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleDaniBD }
end.
