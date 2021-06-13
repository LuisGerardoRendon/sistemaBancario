object FormCuestionarCuentasDebito: TFormCuestionarCuentasDebito
  Left = 0
  Top = 0
  Caption = 'FormCuestionarCuentasDebito'
  ClientHeight = 434
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 208
    Top = 8
    Width = 383
    Height = 33
    Caption = 'Gestionar Cuentas de d'#233'bito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 225
    Top = 39
    Width = 366
    Height = 29
    Caption = 'Doble clic en la cuenta a gestionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGridCuentasDebito: TDBGrid
    Left = 193
    Top = 74
    Width = 442
    Height = 279
    DataSource = DataAccesModule_.dsCuentaDebito
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = clicCuentaDebito
  end
  object Button1: TButton
    Left = 40
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Atr'#225's'
    TabOrder = 1
    OnClick = clicAtras
  end
end
