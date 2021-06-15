object DataAccesModule_: TDataAccesModule_
  OldCreateOrder = False
  Height = 602
  Width = 886
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=banco_database')
    Connected = True
    LoginPrompt = False
    Left = 453
    Top = 214
  end
  object UsuariobancoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.usuarioBanco'
      
        'WHERE correoElectronico = :correoElectronico AND contrasenia = :' +
        'contrasenia')
    Left = 92
    Top = 84
    ParamData = <
      item
        Name = 'CORREOELECTRONICO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTRASENIA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object CuentadebitoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      
        'SELECT numeroDeCuenta AS NumeroDecuenta, COUNT(id_cuenta_movimie' +
        'nto) AS NumeroDeMovimientos'
      'FROM cuentaDebito'
      
        '         INNER JOIN movimiento ON cuentaDebito.id_cuenta_debito ' +
        '= movimiento.id_cuenta_movimiento WHERE estadoCuenta = '#39'activa'#39
      'GROUP BY id_cuenta_debito ORDER BY NumeroDeMovimientos DESC ;')
    Left = 73
    Top = 328
  end
  object CuentacreditoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT cuentaC.numeroDeCuenta AS NumeroDeCuenta,'
      ' cuentaC.deudaTotal AS DeudaTotal,'
      ' cuentaI.totalInteresesAcumulados'
      ' AS TotalCuentaIntereses'
      ' FROM banco_database.cuentaCredito cuentaC'
      ' INNER JOIN cuentaIntereses cuentaI ON'
      ' cuentaC.id_cuenta_credito = cuentaI.idCuentaCredito'
      ' WHERE estadoCuenta = '#39'activa'#39
      ' order by  cuentaI.totalInteresesAcumulados DESC;')
    Left = 758
    Top = 167
  end
  object dsCuentaCredito: TDataSource
    DataSet = CuentacreditoTable
    Left = 768
    Top = 248
  end
  object dsCuentaDebito: TDataSource
    DataSet = CuentadebitoTable
    Left = 56
    Top = 400
  end
  object actualizarEstadoCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'UPDATE cuentaCredito set estadoCuenta = :estadoDeCuenta'
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 747
    Top = 328
    ParamData = <
      item
        Name = 'ESTADODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object updateCuentaDebito: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaDebito'
    TableName = 'banco_database.cuentaDebito'
    Left = 48
    Top = 480
  end
  object getIdCuentaDebitoConNumeroCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT id_cuenta_debito FROM banco_database.cuentaDebito '
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 79
    Top = 148
    ParamData = <
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object updateCuentaCredito: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaCredito'
    TableName = 'banco_database.cuentaCredito'
    Left = 648
    Top = 496
  end
  object getIdCuentaCreditoNumeroCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT id_cuenta_credito FROM banco_database.cuentaCredito'
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 760
    Top = 91
    ParamData = <
      item
        Name = 'NUMERODECUENTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object CuentaCreditoInteresesRecargos: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      
        'SELECT numeroDeCuenta As N'#250'meroDeCuenta, deudaTotal As DeudaTota' +
        'l,'
      'totalInteresesAcumulados As MontoDeCuentaDeIntereses'
      'FROM cuentaCredito '
      '         INNER JOIN cuentaIntereses'
      
        '                    ON cuentaCredito.id_cuenta_credito = cuentaI' +
        'ntereses.idCuentaCredito'
      
        '         LEFT OUTER JOIN (SELECT COUNT(idRecargo) AS recargos, i' +
        'dCuentaCredito'
      '                          FROM recargo) AS recargos'
      
        '                         ON id_cuenta_credito = recargos.idCuent' +
        'aCredito  ORDER BY DeudaTotal DESC;')
    Left = 743
    Top = 408
  end
  object dsInteresesRecargos: TDataSource
    DataSet = CuentaCreditoInteresesRecargos
    Left = 800
    Top = 504
  end
  object crearRecargo: TFDTable
    IndexFieldNames = 'idRecargo'
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.recargo'
    TableName = 'banco_database.recargo'
    Left = 792
    Top = 8
  end
  object crearInteres: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.cuentaIntereses'
    TableName = 'banco_database.cuentaIntereses'
    Left = 704
    Top = 32
  end
end
