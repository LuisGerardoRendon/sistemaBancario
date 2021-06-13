unit GestionarCuentasDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormCuestionarCuentasDebito = class(TForm)
    DBGridCuentasDebito: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure clicCuentaDebito(Column: TColumn);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicAtras(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    numeroDeCuenta:string;
  end;

var
  FormCuestionarCuentasDebito: TFormCuestionarCuentasDebito;

implementation
uses MenuGerente, GestionarCuentaDebito, DataAccesModule;
{$R *.dfm}

procedure TFormCuestionarCuentasDebito.clicAtras(Sender: TObject);
begin
FormMenuGerente.Show;
FormCuestionarCuentasDebito.Visible := False;
end;

procedure TFormCuestionarCuentasDebito.clicCuentaDebito(Column: TColumn);
begin
numeroDeCuenta := DBGridCuentasDebito.Fields[0].AsString;

FormCuestionarCuentasDebito.Visible:= False;
GestionarCuentaDebito.FormGestionarCuentaDebito.Show;
//fgg
end;

procedure TFormCuestionarCuentasDebito.FormShow(Sender: TObject);
begin
 DataAccesModule.DataAccesModule_.CuentaDebitoTable.Active:= True;
 DataAccesModule.DataAccesModule_.CuentaDebitoTable.Refresh;
end;

procedure TFormCuestionarCuentasDebito.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
