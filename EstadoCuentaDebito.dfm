object FormEstadoCuentaDebito: TFormEstadoCuentaDebito
  Left = 0
  Top = 0
  Caption = 'FormEstadoCuentaDebito'
  ClientHeight = 720
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = cargarDatos
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1280
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'ESTADO DE CUENTA DEBITO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 277
  end
  object LabelEstadoDeCuenta: TLabel
    Left = 0
    Top = 461
    Width = 1280
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 51
  end
  object Label2: TLabel
    Left = 0
    Top = 25
    Width = 1280
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Cliente: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 75
  end
  object LabelNombreCliente: TLabel
    Left = 0
    Top = 49
    Width = 1280
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 70
  end
  object Label3: TLabel
    Left = 0
    Top = 73
    Width = 1280
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Numero de cuenta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 171
  end
  object LabelNumeroCuenta: TLabel
    Left = 0
    Top = 97
    Width = 1280
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'numeroCuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 131
  end
  object LabelSaldo: TLabel
    Left = 0
    Top = 399
    Width = 1280
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 40
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 1280
    Height = 41
    Align = alTop
    Caption = 'MOVIMIENTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 358
    Width = 1280
    Height = 41
    Align = alTop
    Caption = 'SALDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 162
    Width = 1280
    Height = 196
    Align = alTop
    DataSource = DataModuleAldoBD.dsMovimientos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ButtonRegresar: TButton
    Left = 584
    Top = 530
    Width = 121
    Height = 31
    Align = alCustom
    Caption = 'Atras'
    TabOrder = 3
    OnClick = ButtonRegresarClick
  end
  object Panel3: TPanel
    Left = 0
    Top = 420
    Width = 1280
    Height = 41
    Align = alTop
    Caption = 'ESTADO DE CUENTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
