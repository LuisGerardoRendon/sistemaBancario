object FormCuentaDebito: TFormCuentaDebito
  Left = 0
  Top = 0
  Caption = 'Cuenta debito'
  ClientHeight = 350
  ClientWidth = 400
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
    Left = 16
    Top = 16
    Width = 112
    Height = 13
    Caption = 'Informaci'#243'n del cliente:'
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 101
    Height = 13
    Caption = 'Registrar movimiento'
  end
  object Edit1: TEdit
    Left = 16
    Top = 35
    Width = 169
    Height = 21
    TabOrder = 0
    TextHint = 'Nombre cliente'
  end
  object Edit2: TEdit
    Left = 16
    Top = 62
    Width = 169
    Height = 21
    TabOrder = 1
    TextHint = 'N'#250'mero de cuenta'
  end
  object Edit3: TEdit
    Left = 16
    Top = 89
    Width = 169
    Height = 21
    TabOrder = 2
    TextHint = 'Saldo actual'
  end
  object Button1: TButton
    Left = 16
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Retirar'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 110
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Abonar'
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 16
    Top = 150
    Width = 169
    Height = 21
    TabOrder = 5
    TextHint = 'Ingrese el monto'
  end
end
