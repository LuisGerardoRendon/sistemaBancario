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
  PixelsPerInch = 96
  TextHeight = 13
  object btnVerCuentaDebito: TButton
    Left = 136
    Top = 81
    Width = 131
    Height = 64
    Caption = 'Ver cuenta debito'
    TabOrder = 0
  end
  object btnVerCuentaCredito: TButton
    Left = 136
    Top = 177
    Width = 131
    Height = 64
    Caption = 'Ver cuenta credito'
    TabOrder = 1
  end
end
