object FormEstadoCuentaDebito: TFormEstadoCuentaDebito
  Left = 0
  Top = 0
  Caption = 'FormEstadoCuentaDebito'
  ClientHeight = 341
  ClientWidth = 672
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
    Left = 247
    Top = 16
    Width = 139
    Height = 13
    Caption = 'ESTADO DE CUENTA DEBITO'
  end
  object Label2: TLabel
    Left = 280
    Top = 95
    Width = 72
    Height = 13
    Caption = 'SALDO TOTAL:'
  end
  object Label3: TLabel
    Left = 375
    Top = 95
    Width = 36
    Height = 13
    Caption = '$12000'
  end
  object Panel1: TPanel
    Left = 257
    Top = 127
    Width = 185
    Height = 41
    Caption = 'MOVIMIENTOS'
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 160
    Top = 171
    Width = 417
    Height = 162
    ItemHeight = 13
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 257
    Top = 48
    Width = 185
    Height = 41
    Caption = 'SALDO'
    TabOrder = 2
  end
end
