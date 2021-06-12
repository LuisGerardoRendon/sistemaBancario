program Project1;

uses
  Vcl.Forms,
  PantallaPrincipal in 'PantallaPrincipal.pas' {FormPantallaPrincipal},
  DataAccesModule in 'DataAccesModule.pas' {DataModule1: TDataModule},
  MenuCliente in 'MenuCliente.pas' {FormMenuCliente},
  BuscarCliente in 'BuscarCliente.pas' {FormBuscarCliente},
  CuentaDebito in 'CuentaDebito.pas' {FormCuentaDebito},
  CuentaCredito in 'CuentaCredito.pas' {FormCuentaCredito},
  MenuGerente in 'MenuGerente.pas' {FormMenuGerente},
  InformacionCliente in 'InformacionCliente.pas' {FormInformacionCliente},
  MenuGestionarCuentas in 'MenuGestionarCuentas.pas' {FormMenuGestionarCuentas},
  MenuInteresesRecargos in 'MenuInteresesRecargos.pas' {FormMenuInteresesRecargos},
  RegistrarCliente in 'RegistrarCliente.pas' {FormRegistrarCliente},
  EstadoCuentaCredito in 'EstadoCuentaCredito.pas' {FormEstadoCuentaCredito},
  EstadoCuentaDebito in 'EstadoCuentaDebito.pas' {FormEstadoCuentaDebito},
  DataModuleAldo in 'DataModuleAldo.pas' {DataModuleAldoBD: TDataModule},
  DataModuleDani in 'DataModuleDani.pas' {DataModuleDaniBD: TDataModule},
  UnitUsuario in 'UnitUsuario.pas',
  ElegirCuenta in 'ElegirCuenta.pas' {FormElegirCuenta},
  UnitCuentaDebito in 'UnitCuentaDebito.pas',
  UnitCuentaCredito in 'UnitCuentaCredito.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPantallaPrincipal, FormPantallaPrincipal);
  Application.CreateForm(TFormCuentaDebito, FormCuentaDebito);
  Application.CreateForm(TFormBuscarCliente, FormBuscarCliente);
  Application.CreateForm(TFormCuentaCredito, FormCuentaCredito);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormMenuCliente, FormMenuCliente);
  Application.CreateForm(TFormMenuGerente, FormMenuGerente);
  Application.CreateForm(TFormInformacionCliente, FormInformacionCliente);
  Application.CreateForm(TFormMenuGestionarCuentas, FormMenuGestionarCuentas);
  Application.CreateForm(TFormMenuInteresesRecargos, FormMenuInteresesRecargos);
  Application.CreateForm(TFormRegistrarCliente, FormRegistrarCliente);
  Application.CreateForm(TFormEstadoCuentaCredito, FormEstadoCuentaCredito);
  Application.CreateForm(TFormEstadoCuentaDebito, FormEstadoCuentaDebito);
  Application.CreateForm(TDataModuleAldoBD, DataModuleAldoBD);
  Application.CreateForm(TDataModuleDaniBD, DataModuleDaniBD);
  Application.CreateForm(TFormElegirCuenta, FormElegirCuenta);
  Application.Run;
end.
