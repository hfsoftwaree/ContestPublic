object DMGrafico: TDMGrafico
  OldCreateOrder = False
  Left = 167
  Top = 65515
  Height = 255
  Width = 454
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Arquivos de programas\HF-Software\BancoDados\CONTESTO.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 56
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 160
    Top = 24
  end
  object DQEntradaCapa: TDataSource
    DataSet = QEntradaCapa
    Left = 48
    Top = 96
  end
  object QEntradaCapa: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_CAPA'
    Left = 160
    Top = 96
    object QEntradaCapaCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object QEntradaCapaCODIGOFORNECEDOR: TIBStringField
      FieldName = 'CODIGOFORNECEDOR'
      Size = 6
    end
    object QEntradaCapaNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object QEntradaCapaDATAENTRADA: TIBStringField
      FieldName = 'DATAENTRADA'
      Size = 10
    end
    object QEntradaCapaCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Size = 6
    end
    object QEntradaCapaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object QEntradaCapaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object QEntradaCapaEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object QEntradaCapaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object QEntradaCapaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object QEntradaCapaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DQEntradaMiolo: TDataSource
    DataSet = TEntradaMiolo
    Left = 48
    Top = 160
  end
  object TEntradaMiolo: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOENTRADA'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NOMEFORNECEDOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATAENTRADA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONTROLE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IND_CODIGOFORNECEDOR1'
        Fields = 'CODIGOFORNECEDOR'
      end
      item
        Name = 'IND_CONTROLE1'
        Fields = 'CONTROLE'
      end
      item
        Name = 'IND_NOMEFORNECEDOR1'
        Fields = 'NOMEFORNECEDOR'
      end>
    StoreDefs = True
    TableName = 'ENTRADA_MIOLO'
    Left = 160
    Top = 160
    object TEntradaMioloCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TEntradaMioloCODIGOFORNECEDOR: TIBStringField
      FieldName = 'CODIGOFORNECEDOR'
      Size = 6
    end
    object TEntradaMioloNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TEntradaMioloDATAENTRADA: TIBStringField
      FieldName = 'DATAENTRADA'
      Size = 10
    end
    object TEntradaMioloCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Size = 6
    end
    object TEntradaMioloESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntradaMioloQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TEntradaMioloEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TEntradaMioloLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TEntradaMioloCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntradaMioloTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
end
