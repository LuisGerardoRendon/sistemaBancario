object FormEstadoCuentaCredito: TFormEstadoCuentaCredito
  Left = 0
  Top = 0
  Caption = 'EstadoCuentaCredito'
  ClientHeight = 371
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 296
    Top = 8
    Width = 170
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'ESTADO DE CUENTA CREDITO'
  end
  object Label8: TLabel
    Left = 128
    Top = 260
    Width = 118
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'TOTAL ACUMULADO:'
  end
  object Label9: TLabel
    Left = 160
    Top = 280
    Width = 28
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '$500'
  end
  object Label14: TLabel
    Left = 548
    Top = 264
    Width = 35
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '$7400'
  end
  object Panel1: TPanel
    Left = 88
    Top = 36
    Width = 168
    Height = 36
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Pagos'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 88
    Top = 216
    Width = 172
    Height = 40
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Intereses'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 468
    Top = 40
    Width = 188
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Recargos'
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 852
    Top = 428
    Width = 334
    Height = 54
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'DeudaActual'
    TabOrder = 3
  end
  object ListBox1: TListBox
    Left = 32
    Top = 80
    Width = 280
    Height = 112
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ItemHeight = 14
    TabOrder = 4
  end
  object ListBox2: TListBox
    Left = 404
    Top = 80
    Width = 325
    Height = 112
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ItemHeight = 14
    TabOrder = 5
  end
  object Panel5: TPanel
    Left = 471
    Top = 216
    Width = 185
    Height = 41
    Caption = 'DEUDA ACTUAL'
    TabOrder = 6
  end
end
