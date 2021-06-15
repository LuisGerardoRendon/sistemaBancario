object FormMenuGerente: TFormMenuGerente
  Left = 0
  Top = 0
  Caption = 'FormMenuGerente'
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
  OnClose = onClose
  OnCreate = FormCreate
  OnShow = cargarLabel
  PixelsPerInch = 96
  TextHeight = 13
  object LabelMenuGerente: TLabel
    Left = 152
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Men'#250' Gerente'
  end
  object labelNombreGerente: TLabel
    Left = 240
    Top = 8
    Width = 66
    Height = 13
    Caption = 'ggggggggggg'
  end
  object Button1: TButton
    Left = 72
    Top = 64
    Width = 249
    Height = 57
    Caption = 'Gestionar cuentas de cr'#233'dito'
    TabOrder = 0
    OnClick = clicGestionarCuentasCredit
  end
  object btnRegistrarCuenta: TButton
    Left = 72
    Top = 192
    Width = 249
    Height = 57
    Caption = 'Registrar cuenta'
    TabOrder = 1
    OnClick = btnRegistrarCuentaClick
  end
  object Button3: TButton
    Left = 72
    Top = 255
    Width = 249
    Height = 57
    Caption = 'Intereses y recargos'
    TabOrder = 2
    OnClick = clicInteresesRecargos
  end
  object Button4: TButton
    Left = 72
    Top = 127
    Width = 249
    Height = 59
    Caption = 'Gestionar cuentas de d'#233'bito'
    TabOrder = 3
    OnClick = clicGestionarCuentasDebito
  end
end
