object DataAccesModule_: TDataAccesModule_
  OldCreateOrder = False
  Height = 602
  Width = 886
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=banco_database')
    Connected = True
    LoginPrompt = False
    Left = 445
    Top = 142
  end
  object UsuariobancoTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.usuarioBanco'
      
        'WHERE correoElectronico = :correoElectronico AND contrasenia = :' +
        'contrasenia')
    Left = 444
    Top = 212
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
    Left = 217
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
    Left = 622
    Top = 359
  end
  object dsCuentaCredito: TDataSource
    DataSet = CuentacreditoTable
    Left = 736
    Top = 400
  end
  object dsCuentaDebito: TDataSource
    DataSet = CuentadebitoTable
    Left = 104
    Top = 408
  end
  object actualizarEstadoCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'UPDATE cuentaCredito set estadoCuenta = :estadoDeCuenta'
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 355
    Top = 280
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
    Left = 568
    Top = 432
  end
  object getIdCuentaDebitoConNumeroCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT id_cuenta_debito FROM banco_database.cuentaDebito '
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 695
    Top = 236
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
    Left = 184
    Top = 456
  end
  object getIdCuentaCreditoNumeroCuenta: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT id_cuenta_credito FROM banco_database.cuentaCredito'
      'WHERE numeroDeCuenta = :numeroDeCuenta;')
    Left = 120
    Top = 259
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
      
        'totalInteresesAcumulados As MontoDeCuentaDeIntereses, recargos.r' +
        'ecargos AS N'#250'meroDeRecargos'
      'FROM cuentaCredito'
      '         INNER JOIN cuentaIntereses'
      
        '                    ON cuentaCredito.id_cuenta_credito = cuentaI' +
        'ntereses.idCuentaCredito'
      
        '         LEFT OUTER JOIN (SELECT COUNT(idRecargo) AS recargos, i' +
        'dCuentaCredito'
      '                          FROM recargo) AS recargos'
      
        '                         ON id_cuenta_credito = recargos.idCuent' +
        'aCredito ORDER BY DeudaTotal DESC;')
    Left = 655
    Top = 512
  end
  object dsInteresesRecargos: TDataSource
    DataSet = CuentaCreditoInteresesRecargos
    Left = 488
    Top = 512
  end
  object crearRecargo: TFDTable
    Connection = Banco_databaseConnection
    UpdateOptions.UpdateTableName = 'banco_database.recargo'
    TableName = 'banco_database.recargo'
    Left = 672
    Top = 96
  end
end
