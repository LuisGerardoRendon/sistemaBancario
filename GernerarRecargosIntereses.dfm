object FormGenerarRecargosI: TFormGenerarRecargosI
  Left = 0
  Top = 0
  Caption = 'FormGenerarRecargosIntereses'
  ClientHeight = 250
  ClientWidth = 472
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
    Left = 93
    Top = 24
    Width = 92
    Height = 13
    Caption = 'N'#250'mero de cuenta:'
  end
  object LabelNumeroDeCuenta: TLabel
    Left = 216
    Top = 24
    Width = 110
    Height = 13
    Caption = 'LabelNumeroDeCuenta'
  end
  object Button1: TButton
    Left = 72
    Top = 76
    Width = 113
    Height = 49
    Caption = 'Generar Inter'#233's'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 288
    Top = 76
    Width = 113
    Height = 49
    Caption = 'Generar Recargo'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 192
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = clicCancelar
  end
end
