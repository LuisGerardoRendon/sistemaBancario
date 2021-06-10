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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 609
    Height = 345
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 663
    Top = 144
    Width = 609
    Height = 345
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 192
    Top = 560
    Width = 193
    Height = 49
    Caption = 'Congelar'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 544
    Top = 560
    Width = 193
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 882
    Top = 560
    Width = 193
    Height = 49
    Caption = 'Ver estado de cuenta'
    TabOrder = 4
  end
end
