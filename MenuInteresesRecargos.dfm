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
    Left = 552
    Top = 89
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
  object DBGrid1: TDBGrid
    Left = 144
    Top = 120
    Width = 969
    Height = 337
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 368
    Top = 512
    Width = 121
    Height = 49
    Caption = 'Generar recargo'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 757
    Top = 512
    Width = 121
    Height = 49
    Caption = 'Generar Inter'#233's'
    TabOrder = 2
  end
end
