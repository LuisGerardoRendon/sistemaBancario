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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCuestionarCuentasDebito: TFormCuestionarCuentasDebito;

implementation
uses MenuGerente;
{$R *.dfm}

procedure TFormCuestionarCuentasDebito.clicAtras(Sender: TObject);
begin
FormMenuGerente.Show;
FormCuestionarCuentasDebito.Visible := False;
end;

procedure TFormCuestionarCuentasDebito.clicCuentaDebito(Column: TColumn);
begin
//fgg
end;

procedure TFormCuestionarCuentasDebito.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
