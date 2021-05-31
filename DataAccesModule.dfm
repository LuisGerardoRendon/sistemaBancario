object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 602
  Width = 886
  object Banco_databaseConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=banco_database')
    Connected = True
    LoginPrompt = False
    Left = 309
    Top = 142
  end
  object ClienteTable: TFDQuery
    Connection = Banco_databaseConnection
    SQL.Strings = (
      'SELECT * FROM banco_database.cliente'
      
        'WHERE correoElectronico = :correoElectronico AND contrasenia = :' +
        'contrasenia'
      '')
    Left = 309
    Top = 206
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
  object dsClientes: TDataSource
    DataSet = ClienteTable
    Left = 424
    Top = 224
  end
end
