object DM: TDM
  OldCreateOrder = True
  Height = 480
  Width = 640
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = transacao
    Left = 88
    Top = 112
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 176
    Top = 112
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 288
    Top = 152
  end
end
