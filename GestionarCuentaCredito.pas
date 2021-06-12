unit GestionarCuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormGestionarCuenta = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    labelNumeroCuenta: TLabel;
    Atrás: TButton;
    procedure clicAtras(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure onShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGestionarCuenta: TFormGestionarCuenta;

implementation
uses MenuGerente, GestionarCuentasCredito;

{$R *.dfm}

procedure TFormGestionarCuenta.clicAtras(Sender: TObject);
begin
FormGestionarCuenta.Visible:= False;
FormMenuGerente.Show;
end;

procedure TFormGestionarCuenta.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGestionarCuenta.onShow(Sender: TObject);
begin
//toto
labelNumeroCuenta.Caption := GestionarCuentasCredito.FormGestionarCuentasCredito.numeroDeCuenta;
end;

end.
