object FormBuscarCliente: TFormBuscarCliente
  Left = 0
  Top = 0
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
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 273
    Height = 21
    TabOrder = 0
    TextHint = 'N'#250'mero de cuenta'
  end
  object Button1: TButton
    Left = 304
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 16
    Top = 56
    Width = 363
    Height = 233
    ItemHeight = 13
    TabOrder = 2
  end
  object Button2: TButton
    Left = 280
    Top = 307
    Width = 92
    Height = 25
    Caption = 'Ver cuenta'
    TabOrder = 3
  end
end
