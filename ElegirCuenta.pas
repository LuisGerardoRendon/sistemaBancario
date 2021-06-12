unit ElegirCuenta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormElegirCuenta = class(TForm)
    btnVerCuentaDebito: TButton;
    btnVerCuentaCredito: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormElegirCuenta: TFormElegirCuenta;

implementation

{$R *.dfm}

procedure TFormElegirCuenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
