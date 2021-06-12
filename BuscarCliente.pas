unit BuscarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaDebito, UnitCuentaCredito,Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormBuscarCliente = class(TForm)
    txtClaveElector: TEdit;
    btnBuscar: TButton;
    btnVerCuenta: TButton;
    Label1: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    idUsuario : integer;
    nombre: string;
    apellidoPaterno: string;
    apellidoMaterno: string;
    claveElector: string;
    correoElectronico: string;
    telefono: string;
    tipo: integer;
  public
    usuarioCajero : TUsuario;
    usuario : TUsuario;
    cuentaDebito : TCuentaDebito;
    cuentaCredito : TCuentaCredito;
  end;

var
  FormBuscarCliente: TFormBuscarCliente;

implementation

uses PantallaPrincipal, ElegirCuenta, DataModuleDani;

{$R *.dfm}

procedure TFormBuscarCliente.btnBuscarClick(Sender: TObject);
begin
  with DataModuleDaniBD.UsuariobancoTable do
  begin
    Prepare;
    ParamByName('claveElector').AsString := txtClaveElector.Text;
    Open;
    First;
    while not EOF do
    begin
       idUsuario := FieldByName('idUsuario').AsInteger;
       nombre:= FieldByName('nombres').AsString;
       apellidoPaterno := FieldByName('apellidoPaterno').AsString;
       apellidoMaterno := FieldByName('apellidoMaterno').AsString;
       claveElector := FieldByName ('claveElector').AsString;
       correoElectronico := FieldByName('correoElectronico').AsString;
       telefono := FieldByName('telefono').AsString;
       tipo := FieldByName('tipo').AsInteger;
       Next;
    end;

    if not (Length(nombre)= 0) then
    begin
      usuario := TUsuario.Create;
      usuario.idUsuario := idUsuario;
      usuario.nombres := nombre;
      usuario.apellidoPaterno := apellidoPaterno;
      usuario.apellidoMaterno := apellidoMaterno;
      usuario.claveElector := claveElector;
      usuario.correoElectronico := correoElectronico;
      usuario.telefono := telefono;
      usuario.tipo := tipo;

      cuentaDebito := TCuentaDebito.Create;
      cuentaCredito := TCuentaCredito.Create;

      cuentaDebito := usuario.getCuentaDebito;
      cuentaCredito := usuario.getCuentaCredito;

      if ((cuentaDebito.estadoCuenta = 'activa') or (cuentaCredito.estadoCuenta = 'activa')) then
      begin
        FormElegirCuenta.Show;
        FormBuscarCliente.Visible := False;
      end
      Else
      begin
        showmessage('El usuario con la clave dada no tiene cuentas activas')
      end;
    end
    Else
    begin
        showmessage('Usuario no encontrado');
    end;
  end;
end;

procedure TFormBuscarCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;
end.
