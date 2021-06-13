unit DataAccesModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataAccesModule_ = class(TDataModule)
    Banco_databaseConnection: TFDConnection;
    UsuariobancoTable: TFDQuery;
    CuentadebitoTable: TFDQuery;
    CuentacreditoTable: TFDQuery;
    dsCuentaCredito: TDataSource;
    dsCuentaDebito: TDataSource;
    actualizarEstadoCuenta: TFDQuery;
    updateCuentaDebito: TFDTable;
    getIdCuentaDebitoConNumeroCuenta: TFDQuery;
    updateCuentaCredito: TFDTable;
    getIdCuentaCreditoNumeroCuenta: TFDQuery;
    CuentaCreditoInteresesRecargos: TFDQuery;
    dsInteresesRecargos: TDataSource;
    crearRecargo: TFDTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataAccesModule_: TDataAccesModule_;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
