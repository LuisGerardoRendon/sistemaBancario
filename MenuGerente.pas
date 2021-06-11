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
    procedure cargarLabel(Sender: TObject);
    procedure clicRegistrarCuenta(Sender: TObject);
    procedure clicInteresesRecargos(Sender: TObject);

  private
    { Private declarations }
  public
    usuarioGerente : TUsuario;
    nombreUsuario : string;
    { Public declarations }
  end;

var
  FormMenuGerente: TFormMenuGerente;


implementation

uses PantallaPrincipal, MenuGestionarCuentas, MenuInteresesRecargos, InformacionCliente;

{$R *.dfm}

procedure TFormMenuGerente.cargarLabel(Sender: TObject);
begin
  usuarioGerente := PantallaPrincipal.FormPantallaPrincipal.usuario;
  labelNombreGerente.Caption := usuarioGerente.nombres;
end;

procedure TFormMenuGerente.clicGestionarCuentas(Sender: TObject);
begin
  MenuGestionarCuentas.FormMenuGestionarCuentas.Show;
  FormMenuGerente.Visible := False;
end;

procedure TFormMenuGerente.clicInteresesRecargos(Sender: TObject);
begin
  FormMenuInteresesRecargos.Show;
  FormMenuGerente.Visible := False;
end;

procedure TFormMenuGerente.clicRegistrarCuenta(Sender: TObject);
begin
  FormInformacionCliente.Show;
  FormMenuGerente.Visible := False;
end;

procedure TFormMenuGerente.FormCreate(Sender: TObject);
begin
  usuarioGerente := PantallaPrincipal.FormPantallaPrincipal.usuario;
end;


procedure TFormMenuGerente.onClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;
end.
