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
    Top = 34
  end
  object UsuariobancoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.usuarioBanco'
      'WHERE claveElector = :claveElector'
      '')
    Left = 59
    Top = 98
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
    Top = 96
  end
  object CuentacreditoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cuentaCredito'
      'WHERE id_cliente_cuenta = :idUsuario')
    Left = 55
    Top = 177
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
    Top = 234
    ParamData = <
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
