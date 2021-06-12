object FormMenuGestionarCuentas: TFormMenuGestionarCuentas
  Left = 0
  Top = 0
  Caption = 'FormMenuGestionarCuentas'
  ClientHeight = 720
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onClose
  OnShow = onShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 105
    Width = 212
    Height = 33
    Caption = 'Cuentas cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 872
    Top = 105
    Width = 203
    Height = 33
    Caption = 'Cuentas d'#233'bito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 512
    Top = 25
    Width = 248
    Height = 33
    Caption = 'Gestionar Cuentas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 80
    Width = 342
    Height = 29
    Caption = 'Selecciona la cuenta a gestionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGridCuentasCredito: TDBGrid
    Left = 48
    Top = 144
    Width = 537
    Height = 345
    DataSource = DataAccesModule_.dsCuentaCredito
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = onCelCredito
  end
  object DBGridCuentasDebito: TDBGrid
    Left = 759
    Top = 144
    Width = 442
    Height = 345
    DataSource = DataAccesModule_.dsCuentaDebito
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = onCelCredito
  end
  object Button2: TButton
    Left = 528
    Top = 576
    Width = 193
    Height = 49
    Caption = 'Atr'#225's'
    TabOrder = 2
    OnClick = Button2Click
  end
end
