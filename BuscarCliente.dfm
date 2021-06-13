object FormBuscarCliente: TFormBuscarCliente
  Left = 0
  Top = 17
  Caption = 'Buscar cliente'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 120
    Width = 167
    Height = 13
    Caption = 'Ingrese la clave elector del cliente:'
  end
  object txtClaveElector: TEdit
    Left = 8
    Top = 147
    Width = 292
    Height = 21
    TabOrder = 0
    TextHint = 'Cadena de 12 d'#237'gitos'
  end
  object btnBuscar: TButton
    Left = 306
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object btnVerCuenta: TButton
    Left = 1177
    Top = 683
    Width = 92
    Height = 21
    Caption = 'Ver cuenta'
    TabOrder = 2
  end
end
