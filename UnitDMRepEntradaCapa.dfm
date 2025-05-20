object DMRepEntradaCapa: TDMRepEntradaCapa
  OldCreateOrder = False
  Left = 246
  Top = 182
  Height = 260
  Width = 314
  object DManutencao: TDataSource
    DataSet = QManutencao
    Left = 40
    Top = 72
  end
  object DEntrada: TDataSource
    DataSet = TEntrada
    Left = 40
    Top = 152
  end
  object QManutencao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MANUTENCAO')
    Left = 152
    Top = 72
    object QManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'MANUTENCAO.CODIGOEMPRESA'
    end
    object QManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Origin = 'MANUTENCAO.NOMEEMPRESA'
      Required = True
      Size = 50
    end
    object QManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'MANUTENCAO.NOMEFANTASIA'
      Size = 50
    end
    object QManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'MANUTENCAO.LOGRADOURO'
      Size = 4
    end
    object QManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'MANUTENCAO.ENDERECO'
      Size = 40
    end
    object QManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'MANUTENCAO.NUMERO'
      Size = 6
    end
    object QManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'MANUTENCAO.COMPLEMENTO'
      Size = 30
    end
    object QManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'MANUTENCAO.BAIRRO'
      Size = 30
    end
    object QManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'MANUTENCAO.CEP'
      Size = 9
    end
    object QManutencaoCX: TIBStringField
      FieldName = 'CX'
      Origin = 'MANUTENCAO.CX'
      Size = 5
    end
    object QManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'MANUTENCAO.CIDADE'
      Size = 30
    end
    object QManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'MANUTENCAO.CIDADEUF'
      Size = 2
    end
    object QManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'MANUTENCAO.FONE'
      Size = 11
    end
    object QManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'MANUTENCAO.FAX'
      Size = 11
    end
    object QManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'MANUTENCAO.EMAIL'
      Size = 50
    end
    object QManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'MANUTENCAO.WEB'
      Size = 50
    end
    object QManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'MANUTENCAO.CNPJ'
      Size = 18
    end
    object QManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'MANUTENCAO.INSCESTADUAL'
      Size = 12
    end
    object QManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Origin = 'MANUTENCAO.REGIBAMA'
      Size = 10
    end
    object QManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Origin = 'MANUTENCAO.INSCMUNICIPAL'
      Size = 10
    end
    object QManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Origin = 'MANUTENCAO.INSCJUNTA'
      Size = 12
    end
    object QManutencaoDATAREGJUNTA: TIBStringField
      FieldName = 'DATAREGJUNTA'
      Origin = 'MANUTENCAO.DATAREGJUNTA'
      Size = 10
    end
    object QManutencaoINIATIVIDADE: TIBStringField
      FieldName = 'INIATIVIDADE'
      Origin = 'MANUTENCAO.INIATIVIDADE'
      Size = 10
    end
    object QManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'MANUTENCAO.CAPITALSOCIAL'
    end
    object QManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Origin = 'MANUTENCAO.CANE'
      Size = 9
    end
    object QManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Origin = 'MANUTENCAO.CNAEDESCRICAO'
      Size = 255
    end
    object QManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Origin = 'MANUTENCAO.NATESTABELECIMENTO'
      Size = 50
    end
    object QManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Origin = 'MANUTENCAO.RESPONSAVELEMPRESA'
      Size = 40
    end
    object QManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Origin = 'MANUTENCAO.CPFRESPONSAVEL'
      Size = 14
    end
    object QManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Origin = 'MANUTENCAO.CONTADOR'
      Size = 40
    end
    object QManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Origin = 'MANUTENCAO.CPFCONTADOR'
      Size = 14
    end
    object QManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Origin = 'MANUTENCAO.CRCCONTADOR'
      Size = 15
    end
    object QManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Origin = 'MANUTENCAO.NOMEFILIAL'
      Size = 50
    end
    object QManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Origin = 'MANUTENCAO.CNPJFILIAL'
      Size = 18
    end
    object QManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'MANUTENCAO.NOME'
      Size = 50
    end
    object QManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = 'MANUTENCAO.CNAE'
      Size = 9
    end
  end
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
    Left = 40
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 152
    Top = 16
  end
  object TEntrada: TIBTable
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
        Name = 'IND_CODIGOFORNECEDOR'
        Fields = 'CODIGOFORNECEDOR'
      end
      item
        Name = 'IND_CONTROLE'
        Fields = 'CONTROLE'
      end
      item
        Name = 'IND_NOMEFORNECEDOR'
        Fields = 'NOMEFORNECEDOR'
      end>
    StoreDefs = True
    TableName = 'ENTRADA_CAPA'
    Left = 152
    Top = 152
    object TEntradaCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TEntradaCODIGOFORNECEDOR: TIBStringField
      FieldName = 'CODIGOFORNECEDOR'
      Size = 6
    end
    object TEntradaNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TEntradaDATAENTRADA: TIBStringField
      FieldName = 'DATAENTRADA'
      Size = 10
    end
    object TEntradaCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Size = 6
    end
    object TEntradaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TEntradaEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TEntradaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TEntradaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntradaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
end
