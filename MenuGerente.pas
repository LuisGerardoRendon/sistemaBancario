unit MenuGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario;

type
  TFormMenuGerente = class(TForm)
    LabelMenuGerente: TLabel;
    Button1: TButton;
    btnRegistrarCuenta: TButton;
    Button3: TButton;
    labelNombreGerente: TLabel;
    Button4: TButton;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure clicGestionarCuentasCredit(Sender: TObject);
    procedure cargarLabel(Sender: TObject);
    procedure clicRegistrarCuenta(Sender: TObject);
    procedure clicInteresesRecargos(Sender: TObject);
    procedure clicGestionarCuentasDebito(Sender: TObject);
    procedure btnRegistrarCuentaClick(Sender: TObject);
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

uses PantallaPrincipal,GestionarCuentasDebito, RegistrarCliente ,GestionarCuentasCredito, MenuInteresesRecargos, InformacionCliente;

{$R *.dfm}

procedure TFormMenuGerente.btnRegistrarCuentaClick(Sender: TObject);
begin
  FormRegistrarCliente.Show;
  FormMenuGerente.Visible := False;
end;

procedure TFormMenuGerente.cargarLabel(Sender: TObject);
begin
  usuarioGerente := PantallaPrincipal.FormPantallaPrincipal.usuario;
  labelNombreGerente.Caption := usuarioGerente.nombres;
end;

procedure TFormMenuGerente.clicGestionarCuentasCredit(Sender: TObject);
begin
  FormGestionarCuentasCredito.Show;
  FormMenuGerente.Visible := False;
end;

procedure TFormMenuGerente.clicGestionarCuentasDebito(Sender: TObject);
begin
  GestionarCuentasDebito.FormCuestionarCuentasDebito.Show;
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
