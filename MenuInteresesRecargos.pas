unit MenuInteresesRecargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormMenuInteresesRecargos = class(TForm)
    Label1: TLabel;
    DBGridCuentasActivas: TDBGrid;
    Label2: TLabel;
    Button3: TButton;
    labelTitulo: TLabel;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicAtras(Sender: TObject);
    procedure onShow(Sender: TObject);
    procedure onCellClic(Column: TColumn);

  private
    { Private declarations }
  public
  numeroDeCuenta:String;
  deudaTotal: Currency;
  totalIntereses : Currency;
    { Public declarations }
  end;

var
  FormMenuInteresesRecargos: TFormMenuInteresesRecargos;

implementation
uses MenuGerente, DataAccesModule, GernerarRecargosIntereses;

{$R *.dfm}

procedure TFormMenuInteresesRecargos.clicAtras(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormMenuInteresesRecargos.Visible := False;
end;



procedure TFormMenuInteresesRecargos.onCellClic(Column: TColumn);
begin
numeroDeCuenta := DBGridCuentasActivas.Fields[0].AsString;
deudaTotal := DBGridCuentasActivas.Fields[1].AsCurrency;
totalIntereses :=  DBGridCuentasActivas.Fields[2].AsCurrency;
GernerarRecargosIntereses.FormGenerarRecargosI.Show;
FormMenuInteresesRecargos.Visible := False;
//Cliqueo una celda.
end;

procedure TFormMenuInteresesRecargos.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormMenuInteresesRecargos.onShow(Sender: TObject);
begin
 DataAccesModule.DataAccesModule_.CuentaCreditoInteresesRecargos.Active := True;
 DataAccesModule.DataAccesModule_.CuentaCreditoInteresesRecargos.Refresh;

end;

end.
