program Project1;

uses
  Vcl.Forms,
  PantallaPrincipal in 'PantallaPrincipal.pas' {Form4},
  DataAccesModule in 'DataAccesModule.pas' {DataModule1: TDataModule},
  MenuCliente in 'MenuCliente.pas' {Form1},
  MenuCajero in 'MenuCajero.pas' {Form2},
  BuscarCliente in 'BuscarCliente.pas' {Form3},
  CuentaDebito in 'CuentaDebito.pas' {Form5},
  CuentaCredito in 'CuentaCredito.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
