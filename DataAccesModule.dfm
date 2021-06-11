object DataModule1: TDataModule1
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
end
