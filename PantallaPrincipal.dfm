object FormPantallaPrincipal: TFormPantallaPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPantallaPrincipal'
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
  object labelCorreoElectronico: TLabel
    Left = 11
    Top = 96
    Width = 89
    Height = 13
    Caption = 'CorreoElectronico:'
  end
  object labelContrasenia: TLabel
    Left = 40
    Top = 136
    Width = 60
    Height = 13
    Caption = 'Contrase'#241'a:'
  end
  object txtCorreoElectronico: TEdit
    Left = 136
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtContrasenia: TEdit
    Left = 136
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 160
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = loginClick
  end
  object txtNombre: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'txtNombre'
  end
end
