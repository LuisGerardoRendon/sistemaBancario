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
    Left = 117
    Top = 24
    Width = 92
    Height = 13
    Caption = 'N'#250'mero de cuenta:'
  end
  object LabelNumeroDeCuenta: TLabel
    Left = 240
    Top = 24
    Width = 110
    Height = 13
    Caption = 'LabelNumeroDeCuenta'
  end
  object Label2: TLabel
    Left = 147
    Top = 43
    Width = 62
    Height = 13
    Caption = 'Deuda Total:'
  end
  object LabelDeudaTotal: TLabel
    Left = 240
    Top = 43
    Width = 80
    Height = 13
    Caption = 'LabelDeudaTotal'
  end
  object Label3: TLabel
    Left = 70
    Top = 62
    Width = 139
    Height = 13
    Caption = 'N'#250'mero de pagos realizados:'
  end
  object LabelNumeroDePagos: TLabel
    Left = 240
    Top = 62
    Width = 104
    Height = 13
    Caption = 'LabelNumeroDePagos'
  end
  object Label4: TLabel
    Left = 122
    Top = 81
    Width = 87
    Height = 13
    Caption = 'Monto del inter'#233's:'
  end
  object Label5: TLabel
    Left = 118
    Top = 100
    Width = 91
    Height = 13
    Caption = 'Monto del recargo:'
  end
  object LabelMontoDelInteres: TLabel
    Left = 240
    Top = 81
    Width = 105
    Height = 13
    Caption = 'LabelMontoDelInteres'
  end
  object LabelMontoDelRecargo: TLabel
    Left = 240
    Top = 100
    Width = 110
    Height = 13
    Caption = 'LabelMontoDelRecargo'
  end
  object Label6: TLabel
    Left = 70
    Top = 187
    Width = 109
    Height = 13
    Caption = '10% del pago mensual'
  end
  object Label7: TLabel
    Left = 282
    Top = 187
    Width = 103
    Height = 13
    Caption = '5% del pago mensual'
  end
  object Button1: TButton
    Left = 70
    Top = 132
    Width = 113
    Height = 49
    Caption = 'Generar Inter'#233's'
    TabOrder = 0
    OnClick = clicGenerarInteres
  end
  object Button2: TButton
    Left = 272
    Top = 132
    Width = 113
    Height = 49
    Caption = 'Generar Recargo'
    TabOrder = 1
    OnClick = clicGenerarRecargo
  end
  object Button3: TButton
    Left = 192
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = clicCancelar
  end
end
