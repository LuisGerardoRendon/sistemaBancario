unit EstadoCuentaDebito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormEstadoCuentaDebito = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    ListBox1: TListBox;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstadoCuentaDebito: TFormEstadoCuentaDebito;

implementation

{$R *.dfm}

procedure TFormEstadoCuentaDebito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

end.
