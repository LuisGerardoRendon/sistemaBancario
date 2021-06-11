unit MenuGestionarCuentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormMenuGestionarCuentas = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuGestionarCuentas: TFormMenuGestionarCuentas;

implementation

{$R *.dfm}
uses MenuGerente;



procedure TFormMenuGestionarCuentas.Button2Click(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormMenuGestionarCuentas.Visible := False;
end;

procedure TFormMenuGestionarCuentas.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
