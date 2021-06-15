object FormGestionarCuentaDebito: TFormGestionarCuentaDebito
  Left = 0
  Top = 0
  Caption = 'FormGestionarCuentaDebito'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 24
    Width = 92
    Height = 13
    Caption = 'N'#250'mero de cuenta:'
  end
  object labelNumeroCuenta: TLabel
    Left = 227
    Top = 24
    Width = 94
    Height = 13
    Caption = 'labelNumeroCuenta'
  end
  object Button3: TButton
    Left = 8
    Top = 79
    Width = 154
    Height = 41
    Caption = 'Cerrar cuenta'
    TabOrder = 0
    OnClick = clicCerrarCuenta
  end
  object Button1: TButton
    Left = 168
    Top = 79
    Width = 153
    Height = 42
    Caption = 'Congelar'
    TabOrder = 1
    OnClick = clicCongelarCuenta
  end
  object Button2: TButton
    Left = 327
    Top = 79
    Width = 153
    Height = 42
    Caption = 'Ver estado de cuenta'
    TabOrder = 2
    OnClick = verEstadodeCuenta
  end
  object Atrás: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = clicCancelar
  end
end
