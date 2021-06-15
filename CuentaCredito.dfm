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
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 159
    Height = 13
    Caption = 'Informaci'#243'n de cuenta de cr'#233'dtio'
  end
  object Label2: TLabel
    Left = 56
    Top = 35
    Width = 88
    Height = 13
    Caption = 'Nombre del cliente'
  end
  object Label3: TLabel
    Left = 81
    Top = 62
    Width = 63
    Height = 13
    Caption = 'Deuda actual'
  end
  object Label4: TLabel
    Left = 26
    Top = 89
    Width = 118
    Height = 13
    Caption = 'Monto de la mensualidad'
  end
  object Label5: TLabel
    Left = 98
    Top = 116
    Width = 46
    Height = 13
    Caption = 'Intereses'
  end
  object Label6: TLabel
    Left = 120
    Top = 143
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object txtDeuda: TEdit
    Left = 160
    Top = 59
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object txtNombre: TEdit
    Left = 160
    Top = 32
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object txtMonto: TEdit
    Left = 160
    Top = 86
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object btnPagar: TButton
    Left = 272
    Top = 312
    Width = 107
    Height = 25
    Caption = 'Pagar mensualidad'
    TabOrder = 3
    OnClick = btnPagarClick
  end
  object cbPagarIntereses: TCheckBox
    Left = 232
    Top = 167
    Width = 97
    Height = 17
    Caption = 'Pagar intereses'
    TabOrder = 4
    OnClick = cbPagarInteresesClick
  end
  object btnAtras: TButton
    Left = 16
    Top = 312
    Width = 57
    Height = 25
    Caption = 'Atras'
    TabOrder = 5
    OnClick = btnAtrasClick
  end
  object txtIntereses: TEdit
    Left = 160
    Top = 113
    Width = 169
    Height = 21
    TabOrder = 6
  end
  object txtTotal: TEdit
    Left = 160
    Top = 140
    Width = 169
    Height = 21
    TabOrder = 7
  end
end
