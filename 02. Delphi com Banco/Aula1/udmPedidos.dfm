object dmPedidos: TdmPedidos
  OldCreateOrder = False
  Height = 261
  Width = 366
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=devs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorHome = 
      'C:\Users\Guilhermehillesheim\Documents\Delphi_Devs2Blu\Delphi co' +
      'm Banco\Aulas\Aula1'
    Left = 72
    Top = 128
  end
end
