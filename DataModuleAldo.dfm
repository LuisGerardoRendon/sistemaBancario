object DataModuleAldoBD: TDataModuleAldoBD
  OldCreateOrder = False
  Height = 344
  Width = 486
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Banco_database')
    Connected = True
    LoginPrompt = False
    Left = 194
    Top = 116
  end
  object CuentaCreditoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaCredito'
      'WHERE numeroDeCuenta = :numeroDeCuenta')
    Left = 354
    Top = 140
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
    Left = 351
    Top = 87
    ParamData = <
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object CuentainteresesTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaIntereses'
      'WHERE idCuentaCredito = :id_cuenta_credito')
    Left = 30
    Top = 64
    ParamData = <
      item
        Name = 'ID_CUENTA_CREDITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsIntereses: TDataSource
    DataSet = CuentainteresesTable
    Left = 32
    Top = 120
  end
  object PagoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.pago'
      'WHERE idCuentaCredito = :id_cuenta_credito')
    Left = 285
    Top = 279
    ParamData = <
      item
        Name = 'ID_CUENTA_CREDITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspagos: TDataSource
    DataSet = PagoTable
    Left = 224
    Top = 280
  end
  object RecargoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.recargo'
      'WHERE idCuentaCredito = :id_cuenta_credito')
    Left = 358
    Top = 219
    ParamData = <
      item
        Name = 'ID_CUENTA_CREDITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRecargos: TDataSource
    DataSet = RecargoTable
    Left = 360
    Top = 280
  end
  object MovimientoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.movimiento'
      'WHERE id_cuenta_movimiento = :id_cuenta_debito')
    Left = 147
    Top = 280
    ParamData = <
      item
        Name = 'ID_CUENTA_DEBITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsMovimientos: TDataSource
    DataSet = MovimientoTable
    Left = 72
    Top = 280
  end
end
