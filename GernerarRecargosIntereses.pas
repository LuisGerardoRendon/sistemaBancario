unit GernerarRecargosIntereses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitCuentaCredito;

type
  TFormGenerarRecargosI = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    LabelNumeroDeCuenta: TLabel;
    Label2: TLabel;
    LabelDeudaTotal: TLabel;
    Label3: TLabel;
    LabelNumeroDePagos: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelMontoDelInteres: TLabel;
    LabelMontoDelRecargo: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure onShow(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicCancelar(Sender: TObject);
    procedure clicGenerarInteres(Sender: TObject);
    procedure clicGenerarRecargo(Sender: TObject);
    procedure sumarRecargoAcuenta();
    procedure regresarMenuIntereses();
  private
    { Private declarations }
  public
  numeroDeCuenta: string;
  cuentaCredito: TCuentaCredito;
  deudaTotal : Currency;
  pagosRealizados : integer;
  pagosFaltantes : integer;
  pagoMensual : Currency;
  montoRecargo : Currency;
  montoInteres : Currency;
  porcentageInteres : Currency;
  porcengeRecargo : Currency;
  currentDate : TDateTime;
  totalIntereses : Currency;
  deudaTotalIntereses: Currency;
    { Public declarations }
  end;

var
  FormGenerarRecargosI: TFormGenerarRecargosI;

implementation
uses MenuInteresesRecargos, DataAccesModule;

{$R *.dfm}

procedure TFormGenerarRecargosI.clicCancelar(Sender: TObject);
begin
regresarMenuIntereses;
end;

procedure TFormGenerarRecargosI.clicGenerarInteres(Sender: TObject);
begin
//GENERAR INTERES
deudaTotalIntereses := totalIntereses + montoInteres;
with DataAccesModule.DataAccesModule_.crearInteres do
  begin
    Open;
    Refresh;
    if FindKey([cuentaCredito.idCuentaCredito]) then
    begin
      Edit;
      deudaTotal := deudaTotal + montoRecargo;
      FieldByName('totalInteresesAcumulados').AsCurrency := deudaTotalIntereses;
      Post;
    end;
  end;
  showMessage('Interés generado exitosamente');
  regresarMenuIntereses;

end;

procedure TFormGenerarRecargosI.clicGenerarRecargo(Sender: TObject);
begin
//Generar recargo
//showmessage(CurrToStrF(montoRecargo, ffCurrency, 2));
//cuentaCredito.registrarRecargo(montoRecargo);
//showmessage('Se ha generado el recargo con éxito');


currentDate := Now;
  with DataAccesModule_.crearRecargo do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('fecha').AsDateTime := currentDate;
    FieldByName('monto').AsCurrency := montoRecargo;
    FieldByName('idCuentaCredito').AsInteger := cuentaCredito.idCuentaCredito;
    Post;
  end;
sumarRecargoAcuenta;
showMessage('Recargo generado exitósamente');
regresarMenuIntereses;

end;

procedure TFormGenerarRecargosI.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormGenerarRecargosI.onShow(Sender: TObject);
begin
//Todo on show

numeroDeCuenta := MenuInteresesRecargos.FormMenuInteresesRecargos.numeroDeCuenta;
deudaTotal := MenuInteresesRecargos.FormMenuInteresesRecargos.deudaTotal;
LabelNumeroDeCuenta.Caption := numeroDeCuenta;
LabelDeudaTotal.Caption := CurrToStrF(deudaTotal, ffCurrency, 2);
cuentaCredito := TCuentaCredito.Create;
cuentaCredito.obtenerId(numeroDeCuenta);
pagosRealizados := cuentaCredito.getPagos;
LabelNumeroDePagos.Caption := inttostr(pagosRealizados);
if pagosRealizados < 12 then
begin
pagosFaltantes := 12 - pagosRealizados;
pagoMensual := deudaTotal / pagosFaltantes;
porcengeRecargo := 0.05;
porcentageInteres := 0.10;
montoRecargo := pagoMensual * porcengeRecargo;
montoInteres := pagoMensual * porcentageInteres;
end
else
begin
pagosFaltantes :=0;
pagoMensual := 0;
montoRecargo := 0;
montoInteres := 0;
end;
LabelMontoDelRecargo.Caption := CurrToStrF(montoRecargo, ffCurrency, 2);
LabelMontoDelInteres.Caption := CurrToStrF(montoInteres, ffCurrency, 2);
totalIntereses := MenuInteresesRecargos.FormMenuInteresesRecargos.totalIntereses;

end;

procedure TFormGenerarRecargosI.regresarMenuIntereses;
begin
MenuInteresesRecargos.FormMenuInteresesRecargos.Show;
FormGenerarRecargosI.Visible:= False;
end;

procedure TFormGenerarRecargosI.sumarRecargoAcuenta;
begin
with DataAccesModule.DataAccesModule_.updateCuentaCredito do
  begin
    Open;
    Refresh;
    if FindKey([cuentaCredito.idCuentaCredito]) then
    begin
      Edit;
      deudaTotal := deudaTotal + montoRecargo;
      FieldByName('deudaTotal').AsCurrency := deudaTotal;
      Post;
    end;
  end;
end;

end.
