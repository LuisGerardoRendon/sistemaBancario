object FormCuentaCredito: TFormCuentaCredito
  Left = 0
  Top = 0
  Caption = 'Cuenta cr'#233'dito'
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
    Width = 159
    Height = 13
    Caption = 'Informaci'#243'n de cuenta de cr'#233'dtio'
  end
  object Edit1: TEdit
    Left = 16
    Top = 62
    Width = 169
    Height = 21
    TabOrder = 0
    TextHint = 'Deuda actual'
  end
  object Edit2: TEdit
    Left = 16
    Top = 35
    Width = 169
    Height = 21
    TabOrder = 1
    TextHint = 'Nombre del cliente'
  end
  object Edit3: TEdit
    Left = 16
    Top = 89
    Width = 169
    Height = 21
    TabOrder = 2
    TextHint = 'Monto de la mensualidad'
  end
  object Button1: TButton
    Left = 272
    Top = 312
    Width = 107
    Height = 25
    Caption = 'Pagar mensualidad'
    TabOrder = 3
  end
end
