unit MenuCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormMenuCliente = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuCliente: TFormMenuCliente;

implementation

{$R *.dfm}

procedure TFormMenuCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Application.Terminate;
end;

end.
