object FormMenuInteresesRecargos: TFormMenuInteresesRecargos
  Left = 0
  Top = 0
  Caption = 'FormMenuInteresesRecargos'
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
    Left = 488
    Top = 8
    Width = 279
    Height = 33
    Caption = 'Intereses y recargos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 544
    Top = 57
    Width = 166
    Height = 25
    Caption = 'Cuentas activas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelTitulo: TLabel
    Left = 451
    Top = 96
    Width = 424
    Height = 23
    Caption = 'Seleccione la cuenta y registre cargos e intereses! '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object DBGridCuentasActivas: TDBGrid
    Left = 240
    Top = 144
    Width = 809
    Height = 417
    DataSource = DataAccesModule_.dsInteresesRecargos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -21
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = onCellClic
  end
  object Button3: TButton
    Left = 37
    Top = 648
    Width = 121
    Height = 49
    Caption = 'Atr'#225's'
    TabOrder = 1
    OnClick = clicAtras
  end
end
