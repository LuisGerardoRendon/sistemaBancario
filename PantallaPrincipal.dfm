object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 299
  ClientWidth = 635
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
    Left = 147
    Top = 104
    Width = 89
    Height = 13
    Caption = 'CorreoElectronico:'
  end
  object labelContrasenia: TLabel
    Left = 176
    Top = 144
    Width = 60
    Height = 13
    Caption = 'Contrase'#241'a:'
  end
  object txtCorreoElectronico: TEdit
    Left = 272
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtContrasenia: TEdit
    Left = 272
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 296
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = loginClick
  end
  object txtNombre: TEdit
    Left = 464
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'txtNombre'
  end
end