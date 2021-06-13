object DataModuleDaniBD: TDataModuleDaniBD
  OldCreateOrder = False
  Height = 368
  Width = 637
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=banco_database')
    Connected = True
    LoginPrompt = False
    Left = 59
    Top = 10
  end
  object UsuariobancoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.usuarioBanco'
      'WHERE claveElector = :claveElector'
      '')
    Left = 59
    Top = 66
    ParamData = <
      item
        Name = 'CLAVEELECTOR'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = Null
      end>
  end
  object dsUsuarios: TDataSource
    DataSet = UsuariobancoTable
    Left = 144
    Top = 64
  end
  object CuentacreditoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaCredito'
      'WHERE id_cliente_cuenta = :idUsuario')
    Left = 55
    Top = 129
    ParamData = <
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object CuentadebitoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaDebito'
      'WHERE id_cliente_cuenta = :idUsuario')
    Left = 55
    Top = 178
    ParamData = <
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object updateSaldoCuenta: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaDebito'
    TableName = 'banco_database.cuentaDebito'
    Left = 296
    Top = 56
  end
  object createMovimiento: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.movimiento'
    TableName = 'banco_database.movimiento'
    Left = 296
    Top = 128
  end
  object PagoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.pago'
      'WHERE idCuentaCredito = :idCuentaCredito')
    Left = 56
    Top = 240
    ParamData = <
      item
        Name = 'IDCUENTACREDITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object createPago: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.pago'
    TableName = 'banco_database.pago'
    Left = 296
    Top = 200
  end
  object CRUDCuentaCredito: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaCredito'
    TableName = 'banco_database.cuentaCredito'
    Left = 296
    Top = 280
  end
  object CuentainteresesTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaIntereses'
      'WHERE idCuentaCredito = :idCuentaCredito')
    Left = 54
    Top = 303
    ParamData = <
      item
        Name = 'IDCUENTACREDITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object CRUDCuentaIntereses: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaIntereses'
    TableName = 'banco_database.cuentaIntereses'
    Left = 448
    Top = 272
  end
end
