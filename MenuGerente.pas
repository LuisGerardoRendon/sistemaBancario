unit MenuGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario;

type
  TFormMenuGerente = class(TForm)
    LabelMenuGerente: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    labelNombreGerente: TLabel;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure clicGestionarCuentas(Sender: TObject);

  private
    { Private declarations }
  public
    usuarioGerente : TUsuario;
    nombreUsuario : string;
    constructor Create(usuario: TUsuario);
    { Public declarations }
  end;

var
  FormMenuGerente: TFormMenuGerente;


implementation

uses PantallaPrincipal, MenuGestionarCuentas, MenuInteresesRecargos, InformacionCliente;

{$R *.dfm}

procedure TFormMenuGerente.clicGestionarCuentas(Sender: TObject);
begin

  usuarioGerente := PantallaPrincipal.FormPantallaPrincipal.usuario;
  //nombreUsuario :=  PantallaPrincipal.FormPantallaPrincipal.usuario.nombres;
  //nombreUsuario := usuarioGerente.nombres;
  labelNombreGerente.Caption := usuarioGerente.nombres;
  //showmessage(nombreUsuario);
end;

procedure TFormMenuGerente.FormCreate(Sender: TObject);
begin
  usuarioGerente := PantallaPrincipal.FormPantallaPrincipal.usuario;
  labelNombreGerente.Caption := usuarioGerente.nombres;

end;

procedure TFormMenuGerente.onClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;
constructor TFormMenuGerente.Create( usuario: TUsuario);
begin
   usuarioGerente := usuario;
   FormMenuGerente.Show;
   //labelNombreGerente.Caption := usuarioGerente.nombres;
   //showmessage(usuarioGerente.nombres);
end;

end.
