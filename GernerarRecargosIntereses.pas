unit GernerarRecargosIntereses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitCuentaCredito;

type
  TFormGenerarRecargosI = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    LabelNumeroDeCuenta: TLabel;
    procedure onShow(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicCancelar(Sender: TObject);
  private
    { Private declarations }
  public
  numeroDeCuenta: string;
  cuentaCredito: TCuentaCredito;
    { Public declarations }
  end;

var
  FormGenerarRecargosI: TFormGenerarRecargosI;

implementation
uses MenuInteresesRecargos;

{$R *.dfm}

procedure TFormGenerarRecargosI.clicCancelar(Sender: TObject);
begin
MenuInteresesRecargos.FormMenuInteresesRecargos.Show;
FormGenerarRecargosI.Visible:= False;
end;

procedure TFormGenerarRecargosI.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGenerarRecargosI.onShow(Sender: TObject);
begin
//Todo on show
numeroDeCuenta := MenuInteresesRecargos.FormMenuInteresesRecargos.numeroDeCuenta;
LabelNumeroDeCuenta.Caption := numeroDeCuenta;
cuentaCredito := TCuentaCredito.Create;
end;

end.
