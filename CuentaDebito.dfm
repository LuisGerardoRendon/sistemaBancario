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
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
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
    Top = 163
    Width = 101
    Height = 13
    Caption = 'Registrar movimiento'
  end
  object Label3: TLabel
    Left = 29
    Top = 38
    Width = 88
    Height = 13
    Caption = 'Nombre del cliente'
  end
  object Label4: TLabel
    Left = 29
    Top = 65
    Width = 88
    Height = 13
    Caption = 'N'#250'mero de cuenta'
  end
  object Label5: TLabel
    Left = 59
    Top = 92
    Width = 58
    Height = 13
    Caption = 'Saldo actual'
  end
  object txtNombre: TEdit
    Left = 123
    Top = 35
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object txtNumCuenta: TEdit
    Left = 123
    Top = 62
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object txtSaldo: TEdit
    Left = 123
    Top = 89
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object btnRetirar: TButton
    Left = 16
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Retirar'
    TabOrder = 3
    OnClick = btnRetirarClick
  end
  object btnAbonar: TButton
    Left = 110
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Abonar'
    TabOrder = 4
    OnClick = btnAbonarClick
  end
  object txtMonto: TEdit
    Left = 16
    Top = 185
    Width = 169
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    TextHint = 'Ingrese el monto'
  end
end
