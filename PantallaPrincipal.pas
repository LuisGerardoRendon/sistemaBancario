unit PantallaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Param;

type
  TFormPantallaPrincipal = class(TForm)
    labelCorreoElectronico: TLabel;
    labelContrasenia: TLabel;
    txtCorreoElectronico: TEdit;
    txtContrasenia: TEdit;
    Button1: TButton;
    txtNombre: TEdit;
    procedure loginClick(Sender: TObject);
  private
    nombre: string;
    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  FormPantallaPrincipal: TFormPantallaPrincipal;

implementation
{$R *.dfm}

uses DataAccesModule, MenuCliente;

procedure TFormPantallaPrincipal.loginClick(Sender: TObject);
begin
  with DataModule1.ClienteTable do
  begin
    Prepare;
    ParamByName('correoElectronico').AsString:= txtCorreoElectronico.Text;
    ParamByName('contrasenia').AsString:= txtContrasenia.Text;
    Open;
    First;
    while not EOF do
    begin
         nombre:= FieldByName('nombre').AsString;
         Next;
    end;
    txtCorreoElectronico.Text:= 'Consultado';
    txtNombre.Text := nombre;
    if (nombre.Equals('')) then
    begin
      Form1.Show;
      FormPantallaPrincipal.Visible := False;
    end;

    
    
  end;




  
end;

end.
