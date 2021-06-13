object FormElegirCuenta: TFormElegirCuenta
  Left = 0
  Top = 0
  Caption = 'Elegir Cuenta'
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
  OnShow = FormShow
  DesignSize = (
    400
    350)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 37
    Width = 75
    Height = 13
    Caption = 'Nombre cliente:'
  end
  object btnVerCuentaCredito: TButton
    Left = 133
    Top = 163
    Width = 131
    Height = 64
    Anchors = []
    Caption = 'Ver cuenta credito'
    TabOrder = 0
    OnClick = btnVerCuentaCreditoClick
  end
  object btnVerCuentaDebito: TButton
    Left = 133
    Top = 93
    Width = 131
    Height = 64
    Anchors = []
    Caption = 'Ver cuenta debito'
    TabOrder = 1
    OnClick = btnVerCuentaDebitoClick
  end
  object txtNombre: TEdit
    Left = 89
    Top = 34
    Width = 296
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object btnAtras: TButton
    Left = 8
    Top = 317
    Width = 57
    Height = 25
    Caption = 'Atras'
    TabOrder = 3
    OnClick = btnAtrasClick
  end
end
