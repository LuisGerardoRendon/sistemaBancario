unit RegistrarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormRegistrarCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    Edit7: TEdit;
    Button1: TButton;
    Label12: TLabel;
    Edit8: TEdit;
    Button2: TButton;
    procedure clicAtras(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegistrarCliente: TFormRegistrarCliente;

implementation
uses InformacionCliente;

{$R *.dfm}


procedure TFormRegistrarCliente.clicAtras(Sender: TObject);
begin
  FormInformacionCliente.Show;
  FormRegistrarCliente.Visible := False;
end;

procedure TFormRegistrarCliente.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Application.Terminate;
end;

end.
