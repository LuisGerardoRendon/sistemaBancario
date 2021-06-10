unit EstadoCuentaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormEstadoCuentaCredito = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label14: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Panel5: TPanel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstadoCuentaCredito: TFormEstadoCuentaCredito;

implementation

{$R *.dfm}
end.
