unit InformacionCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormInformacionCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtCorreo: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clicAtras(Sender: TObject);
    procedure clicRegistrarCliente(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInformacionCliente: TFormInformacionCliente;

implementation
uses MenuGerente, RegistrarCliente;

{$R *.dfm}

procedure TFormInformacionCliente.clicAtras(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormInformacionCliente.Visible := False;
end;

procedure TFormInformacionCliente.clicRegistrarCliente(Sender: TObject);
begin
   FormRegistrarCliente.Show;
   FormInformacionCliente.Visible := False;
end;

procedure TFormInformacionCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Application.Terminate;
end;

end.
