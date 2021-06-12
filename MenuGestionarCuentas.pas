unit MenuGestionarCuentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormMenuGestionarCuentas = class(TForm)
    DBGridCuentasCredito: TDBGrid;
    DBGridCuentasDebito: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure onShow(Sender: TObject);
    procedure clicCongelar(Sender: TObject);
    procedure onCelCredito(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuGestionarCuentas: TFormMenuGestionarCuentas;

implementation

{$R *.dfm}
uses MenuGerente, DataAccesModule;



procedure TFormMenuGestionarCuentas.Button2Click(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormMenuGestionarCuentas.Visible := False;
end;

procedure TFormMenuGestionarCuentas.clicCongelar(Sender: TObject);
begin
  showmessage(DBGridCuentasCredito.Fields[0].AsString);
 //Holaaa
end;

procedure TFormMenuGestionarCuentas.onCelCredito(
  Column: TColumn);
begin
  showmessage(DBGridCuentasCredito.Fields[0].AsString);
end;

procedure TFormMenuGestionarCuentas.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormMenuGestionarCuentas.onShow(Sender: TObject);
begin
  with DataAccesModule_.CuentadebitoTable do
  begin
    Close;
    Prepare;
    Open;
    Refresh;
  end;

end;

end.
