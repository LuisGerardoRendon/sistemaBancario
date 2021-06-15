object FormRegistrarCliente: TFormRegistrarCliente
  Left = 0
  Top = 0
  Caption = 'FormRegistrarCliente'
  ClientHeight = 702
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = onClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 520
    Top = 8
    Width = 224
    Height = 33
    Caption = 'Registrar cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 96
    Width = 265
    Height = 33
    Caption = 'Informaci'#243'n cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 824
    Top = 88
    Width = 266
    Height = 33
    Caption = 'Informaci'#243'n cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 152
    Top = 154
    Width = 57
    Height = 19
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 92
    Top = 203
    Width = 117
    Height = 19
    Caption = 'Apellido Paterno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 89
    Top = 259
    Width = 120
    Height = 19
    Caption = 'Apellido Materno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 96
    Top = 315
    Width = 113
    Height = 19
    Caption = 'Tel'#233'fono celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 97
    Top = 370
    Width = 112
    Height = 19
    Caption = 'Clave de elector'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 79
    Top = 427
    Width = 130
    Height = 19
    Caption = 'Correo Electr'#243'nico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 759
    Top = 154
    Width = 105
    Height = 19
    Caption = 'Tipo de cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbSaldoInicial: TLabel
    Left = 780
    Top = 259
    Width = 84
    Height = 19
    Caption = 'Saldo inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbNumCuenta: TLabel
    Left = 734
    Top = 203
    Width = 130
    Height = 19
    Caption = 'N'#250'mero de cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 130
    Top = 480
    Width = 79
    Height = 19
    Caption = 'Contrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtNombre: TEdit
    Left = 232
    Top = 151
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'ejem: Aldo'
    OnKeyPress = letterOnlyKeyPress
  end
  object txtApellidoPaterno: TEdit
    Left = 232
    Top = 200
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'ejem: Pale'
    OnKeyPress = letterOnlyKeyPress
  end
  object txtApellidoMaterno: TEdit
    Left = 232
    Top = 256
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'ejem: Rendon'
    OnKeyPress = letterOnlyKeyPress
  end
  object txtClaveElector: TEdit
    Left = 232
    Top = 367
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    TabOrder = 4
    TextHint = 'ejem: REML123445998MV'
  end
  object txtCorreoElectronico: TEdit
    Left = 232
    Top = 424
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'ejem: cliente@gmail.com'
  end
  object txtTelefono: TEdit
    Left = 232
    Top = 312
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
    TextHint = 'N'#250'mero de 10 d'#237'gitos'
  end
  object cbTipoCuenta: TComboBox
    Left = 928
    Top = 156
    Width = 233
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    OnChange = cbTipoCuentaChange
  end
  object txtSaldoInicial: TEdit
    Left = 928
    Top = 256
    Width = 233
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 9
    Visible = False
  end
  object btnRegistrar: TButton
    Left = 1049
    Top = 644
    Width = 112
    Height = 25
    Caption = 'Registrar Cliente'
    TabOrder = 10
    OnClick = btnRegistrarClick
  end
  object txtNumeroCuenta: TEdit
    Left = 928
    Top = 200
    Width = 233
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    NumbersOnly = True
    ParentFont = False
    TabOrder = 8
  end
  object btnAtras: TButton
    Left = 79
    Top = 640
    Width = 58
    Height = 33
    Caption = 'Atr'#225's'
    TabOrder = 11
    OnClick = clicAtras
  end
  object txtContrasenia: TEdit
    Left = 232
    Top = 477
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TextHint = 'Contrase'#241'a del cliente'
  end
end
