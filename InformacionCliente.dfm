object FormInformacionCliente: TFormInformacionCliente
  Left = 0
  Top = 0
  Caption = 'FormInformacionCliente'
  ClientHeight = 347
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 93
    Top = 56
    Width = 199
    Height = 13
    Caption = #191'El cliente ya tiene una cuenta existente?'
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 144
    Height = 13
    Caption = 'Ingrese su correo electr'#243'nico:'
  end
  object Label3: TLabel
    Left = 88
    Top = 8
    Width = 204
    Height = 25
    Caption = 'Informaci'#243'n cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 144
    Top = 200
    Width = 99
    Height = 13
    Caption = #191'El cliente es nuevo?'
  end
  object txtCorreo: TEdit
    Left = 184
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'correo@gmail.com'
  end
  object Button1: TButton
    Left = 136
    Top = 136
    Width = 129
    Height = 25
    Caption = 'Buscar cliente'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 136
    Top = 232
    Width = 129
    Height = 25
    Caption = 'Registrar Cliente'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 24
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Atr'#225's'
    TabOrder = 3
    OnClick = clicAtras
  end
end
