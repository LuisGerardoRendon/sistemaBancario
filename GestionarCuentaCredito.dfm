object FormGestionarCuenta: TFormGestionarCuenta
  Left = 0
  Top = 0
  Caption = 'FormGestionarCuentaCredito'
  ClientHeight = 226
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = onClose
  OnShow = onShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 92
    Height = 13
    Caption = 'N'#250'mero de cuenta:'
  end
  object labelNumeroCuenta: TLabel
    Left = 283
    Top = 8
    Width = 94
    Height = 13
    Caption = 'labelNumeroCuenta'
  end
  object Label2: TLabel
    Left = 182
    Top = 27
    Width = 62
    Height = 13
    Caption = 'Deuda Total:'
  end
  object labelDeudaTotal: TLabel
    Left = 283
    Top = 27
    Width = 77
    Height = 13
    Caption = 'labelDeudaTotal'
  end
  object Button1: TButton
    Left = 291
    Top = 79
    Width = 153
    Height = 42
    Caption = 'Congelar'
    TabOrder = 0
    OnClick = clicCongelar
  end
  object Button3: TButton
    Left = 48
    Top = 79
    Width = 154
    Height = 41
    Caption = 'Cerrar cuenta'
    TabOrder = 1
    OnClick = cerrrarCuentaClic
  end
  object Atrás: TButton
    Left = 208
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = clicAtras
  end
end
