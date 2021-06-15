unit CuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitUsuario, UnitCuentaCredito;

type
  TFormCuentaCredito = class(TForm)
    Label1: TLabel;
    txtDeuda: TEdit;
    txtNombre: TEdit;
    txtMonto: TEdit;
    btnPagar: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbPagarIntereses: TCheckBox;
    btnAtras: TButton;
    Label5: TLabel;
    Label6: TLabel;
    txtIntereses: TEdit;
    txtTotal: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbPagarInteresesClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
  private
    pagosFaltantes : integer;
    monto : integer;
    intereses : Currency;
    interesesMensuales : Currency;
    total : Currency;
    pagarIntereses : boolean;
    currentDate : TDateTime;
    procedure FillTextBoxes;
    procedure setVariables;
    procedure CreatePago;
    procedure updateCuentaCredito;
    procedure pagarCuentaIntereses;
  public
    usuario : TUsuario;
    cuentaCredito : TCuentaCredito;
  end;

var
  FormCuentaCredito: TFormCuentaCredito;

implementation

{$R *.dfm}
uses ElegirCuenta, DataModuleDani;

procedure TFormCuentaCredito.FormShow(Sender: TObject);
begin
  usuario := ElegirCuenta.FormElegirCuenta.usuario;
  cuentaCredito := ElegirCuenta.FormElegirCuenta.cuentaCredito;
  setVariables;
  FillTextBoxes;
end;

procedure TFormCuentaCredito.btnPagarClick(Sender: TObject);
begin
  currentDate := Now;
  begin
    CreatePago;
    updateCuentaCredito;
    pagarCuentaIntereses;
    showmessage('El pago se realizó con éxito');
    elegirCuenta.FormElegirCuenta.cuentaCredito :=  cuentaCredito;
    cbPagarIntereses.Checked := false;
    FormCuentaCredito.Visible := False;
    FormElegirCuenta.Show;
  end;
end;

procedure TFormCuentaCredito.cbPagarInteresesClick(Sender: TObject);
begin
  if cbPagarIntereses.Checked then
  begin
    if intereses > 0 then
    begin
      txtMonto.Text := CurrToStrF((monto + intereses), ffCurrency, 2);
      pagarIntereses := true;
    end
    Else
    begin
      showmessage('Esta cuenta no tiene intereses');
      cbPagarIntereses.Checked := false;
      pagarIntereses := false;
    end;
  end
  Else
  begin
    txtMonto.Text := Inttostr(monto);
  end;
end;

procedure TFormCuentaCredito.CreatePago;
begin
  with DataModuleDaniBD.createPago do
  begin
    Open;
    Refresh;
    Insert;
    FieldByName('fecha').AsDateTime := currentDate;
    FieldByName('monto').AsInteger := monto;
    FieldByName('idCuentaCredito').AsInteger := cuentaCredito.idCuentaCredito;
    Post;
  end;
end;

procedure TFormCuentaCredito.updateCuentaCredito;
begin
  cuentaCredito.deudaTotal := cuentaCredito.deudaTotal - monto;
  with DataModuleDaniBD.CRUDCuentaCredito do
  begin
  Open;
  Refresh;
  if FindKey([cuentaCredito.idCuentaCredito]) then
  begin
    Edit;
    FieldByName('deudaTotal').asCurrency := cuentaCredito.deudaTotal;
    Post;
  end;
  end;
end;

procedure TFormCuentaCredito.pagarCuentaIntereses;
begin
  if pagarIntereses then
  begin
    with DataModuleDaniBD.CRUDCuentaIntereses do
    begin
      Open;
      Refresh;
      if FindKey([cuentaCredito.idCuentaCredito]) then
      begin
        Edit;
        FieldByName('totalInteresesAcumulados').AsCurrency := 0.0;
        Post;
      end;
    end;
  end;
end;

procedure TFormCuentaCredito.setVariables;
begin
  monto := 0;
  pagosFaltantes := 12 - cuentaCredito.getPagos;
  if pagosFaltantes > 0 then
  begin
    monto := Round(cuentaCredito.deudaTotal / pagosFaltantes);
    intereses := cuentaCredito.getIntereses;
    interesesMensuales := monto * 0.10;
    total := interesesMensuales + monto;
  end
  else
  begin
    btnPagar.Hide;
  end;
end;

procedure TFormCuentaCredito.FillTextBoxes;
begin
  txtMonto.Clear;
  txtNombre.Text := usuario.getNombreCompleto;
  txtDeuda.Text := CurrToStrF(cuentaCredito.deudaTotal, ffCurrency, 2);
  txtMonto.Text := Inttostr(monto);
  txtIntereses.Text :=  CurrToStrF(interesesMensuales, ffCurrency, 2);
  txtTotal.Text := CurrToStrF(total, ffCurrency, 2)
end;

procedure TFormCuentaCredito.btnAtrasClick(Sender: TObject);
begin
  elegirCuenta.FormElegirCuenta.cuentaCredito :=  cuentaCredito;
  cbPagarIntereses.Checked := false;
  FormCuentaCredito.Visible := False;
  FormElegirCuenta.Show;
end;

procedure TFormCuentaCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;
end.
