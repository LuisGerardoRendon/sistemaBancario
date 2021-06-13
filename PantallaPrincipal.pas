unit PantallaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Param, UnitUsuario;

type
  TFormPantallaPrincipal = class(TForm)
    labelCorreoElectronico: TLabel;
    labelContrasenia: TLabel;
    txtCorreoElectronico: TEdit;
    txtContrasenia: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure loginClick(Sender: TObject);




  private


    { Private declarations }
  public
    { Public declarations }
    idUsuario : integer;
    nombre: string;
    apellidoPaterno: string;
    apellidoMaterno: string;
    claveElector: string;
    correoElectronico: string;
    telefono: string;
    tipo: integer;
    usuario : TUsuario;
  end;

var
  FormPantallaPrincipal: TFormPantallaPrincipal;


implementation
{$R *.dfm}

uses DataAccesModule, MenuCliente, MenuGerente, BuscarCliente;

procedure TFormPantallaPrincipal.loginClick(Sender: TObject);
begin
  with DataAccesModule_.UsuarioBancoTable do
  begin
    Prepare;
    ParamByName('correoElectronico').AsString:= txtCorreoElectronico.Text;
    ParamByName('contrasenia').AsString:= txtContrasenia.Text;
    Open;
    Refresh;
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
    txtCorreoElectronico.Text:= nombre;
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

      case usuario.tipo of
        0:
        begin
          FormMenuCliente.Show;
          FormPantallaPrincipal.Visible := False;

        end;
        1:
        begin
           FormBuscarCliente.Show;
           FormPantallaPrincipal.Visible := False;
        end;
        2:
        begin
              FormMenuGerente.Show;
              FormPantallaPrincipal.Visible := False;
        end;
      end;

    end
    Else
    begin
        showmessage('Usuario no encontrado');
    end;

    
    
  end;




  
end;





end.
