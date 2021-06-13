unit DataModuleAldo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModuleAldoBD = class(TDataModule)
    Banco_databaseConnection: TFDConnection;
    CuentaCreditoTable: TFDQuery;
    CuentaDebitoTable: TFDQuery;
    CuentainteresesTable: TFDQuery;
    dsIntereses: TDataSource;
    PagoTable: TFDQuery;
    dspagos: TDataSource;
    RecargoTable: TFDQuery;
    dsRecargos: TDataSource;
    MovimientoTable: TFDQuery;
    dsMovimientos: TDataSource;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleAldoBD: TDataModuleAldoBD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
