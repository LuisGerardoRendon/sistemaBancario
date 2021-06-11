unit MenuInteresesRecargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormMenuInteresesRecargos = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure clicAtras(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuInteresesRecargos: TFormMenuInteresesRecargos;

implementation
uses MenuGerente;

{$R *.dfm}

procedure TFormMenuInteresesRecargos.clicAtras(Sender: TObject);
begin
  FormMenuGerente.Show;
  FormMenuInteresesRecargos.Visible := False;
end;

procedure TFormMenuInteresesRecargos.onClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
