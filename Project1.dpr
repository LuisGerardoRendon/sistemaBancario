program Project1;

uses
  Vcl.Forms,
  PantallaPrincipal in 'PantallaPrincipal.pas' {Form4},
  DataAccesModule in 'DataAccesModule.pas' {DataModule1: TDataModule},
  MenuCliente in 'MenuCliente.pas' {Form1},
  MenuCajero in 'MenuCajero.pas' {Form2},
  MenuGerente in 'MenuGerente.pas' {Form3},
  MenuGestionarCuentas in 'MenuGestionarCuentas.pas' {Form5},
  InformacionCliente in 'InformacionCliente.pas' {Form6},
  RegistrarCliente in 'RegistrarCliente.pas' {Form7},
  MenuInteresesRecargos in 'MenuInteresesRecargos.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
