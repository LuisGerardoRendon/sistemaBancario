object FormMenuCliente: TFormMenuCliente
  Left = 0
  Top = 0
  Caption = 'Menu Cliente'
  ClientHeight = 350
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = cargarLabels
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 116
    Height = 16
    Caption = 'Nombre del cliente: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 24
    Width = 45
    Height = 16
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 272
    Width = 39
    Height = 13
    Caption = 'Credito:'
  end
  object Label4: TLabel
    Left = 133
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 240
    Top = 272
    Width = 35
    Height = 13
    Caption = 'Debito:'
  end
  object Label6: TLabel
    Left = 288
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Button1: TButton
    Left = 96
    Top = 88
    Width = 193
    Height = 49
    Caption = 'VER ESTADO DE CUENTA DEBITO'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 168
    Width = 193
    Height = 49
    Caption = 'VER ESTADO DE CUENTA CREDITO'
    TabOrder = 1
    OnClick = Button2Click
  end
end
