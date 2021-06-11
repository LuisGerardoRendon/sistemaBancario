unit UnitUsuario;

interface
uses System.SysUtils, System.Variants,
  System.Classes;

  type
  TUsuario = class
  public
    nombres: string;
    apellidoPaterno: string;
    apellidoMaterno: string;
    claveElector: string;
    correoElectronico: string;
    telefono: string;
    contrasenia: string;
    tipo: integer;

  end;
  var
  usuario: TUsuario;

implementation

end.
