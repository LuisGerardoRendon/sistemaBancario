object DataModuleAldoBD: TDataModuleAldoBD
  OldCreateOrder = False
  Height = 344
  Width = 484
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Banco_database')
    Connected = True
    LoginPrompt = False
    Left = 194
    Top = 52
  end
  object CuentaCreditoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaCredito'
      'WHERE numeroDeCuenta = :numeroDeCuenta')
    Left = 74
    Top = 172
    ParamData = <
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object CuentaDebitoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaDebito'
      'WHERE numeroDeCuenta = :numeroDeCuenta')
    Left = 327
    Top = 159
    ParamData = <
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
