object DM: TDM
  OldCreateOrder = False
  Left = 219
  Top = 79
  Height = 450
  Width = 528
  object DManutencao: TDataSource
    DataSet = TManutencao
    Left = 48
    Top = 72
  end
  object DEssencia: TDataSource
    DataSet = TEssencia
    Left = 48
    Top = 136
  end
  object DFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 288
    Top = 72
  end
  object DEntradaCapa: TDataSource
    DataSet = TEntradaCapa
    Left = 288
    Top = 128
  end
  object DQEssencia: TDataSource
    DataSet = QEssencia
    Left = 48
    Top = 208
  end
  object DQFornecedor: TDataSource
    DataSet = QFornecedor
    Left = 48
    Top = 272
  end
  object DEntradaMiolo: TDataSource
    DataSet = TEntradaMiolo
    Left = 288
    Top = 192
  end
  object TEssencia: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'ESSENCIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TINICIALCAPA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TINICIALMIOLO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'EENTRADAS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'EPRODUCAO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TPRODUCAO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TVENDAS'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'INDESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ESSENCIA'
    Left = 168
    Top = 136
    object TEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEssenciaTINICIALCAPA: TFloatField
      FieldName = 'TINICIALCAPA'
    end
    object TEssenciaTINICIALMIOLO: TFloatField
      FieldName = 'TINICIALMIOLO'
    end
    object TEssenciaEENTRADAS: TFloatField
      FieldName = 'EENTRADAS'
    end
    object TEssenciaEPRODUCAO: TFloatField
      FieldName = 'EPRODUCAO'
    end
    object TEssenciaTPRODUCAO: TFloatField
      FieldName = 'TPRODUCAO'
    end
    object TEssenciaTVENDAS: TFloatField
      FieldName = 'TVENDAS'
    end
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 96
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 336
    Top = 16
  end
  object TEntradaCapa: TIBTable
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
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATAENTRADA'
        DataType = ftDateTime
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
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftString
        Size = 10
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
    Left = 400
    Top = 128
    object TEntradaCapaCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TEntradaCapaCODIGOFORNECEDOR: TIBStringField
      FieldName = 'CODIGOFORNECEDOR'
      Size = 6
    end
    object TEntradaCapaNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TEntradaCapaCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Size = 6
    end
    object TEntradaCapaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntradaCapaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TEntradaCapaEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TEntradaCapaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TEntradaCapaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntradaCapaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TEntradaCapaDATAENTRADA: TDateTimeField
      FieldName = 'DATAENTRADA'
    end
    object TEntradaCapaCODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Size = 10
    end
  end
  object TFornecedor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMEFORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'REGIBAMA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CNAE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CNAEDESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NATESTABELECIMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftInteger
      end
      item
        Name = 'CONTATO'
        DataType = ftInteger
      end
      item
        Name = 'CONTATOFONE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATOFAX'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATORAMAL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CONTATOEMAIL'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'INDNOMEFORNECEDOR'
        Fields = 'NOMEFORNECEDOR'
        Options = [ixUnique]
      end
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'CODIGOFORNECEDOR'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'FORNECEDOR'
    Left = 400
    Top = 72
    object TFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TFornecedorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TFornecedorREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Size = 10
    end
    object TFornecedorCNAE: TIBStringField
      FieldName = 'CNAE'
      Size = 9
    end
    object TFornecedorCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Size = 60
    end
    object TFornecedorNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Size = 50
    end
    object TFornecedorINSCESTADUAL: TIntegerField
      FieldName = 'INSCESTADUAL'
    end
    object TFornecedorCONTATO: TIntegerField
      FieldName = 'CONTATO'
    end
    object TFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Size = 50
    end
    object TFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Size = 50
    end
    object TFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Size = 4
    end
    object TFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Size = 50
    end
    object TFornecedorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
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
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATAENTRADA'
        DataType = ftDateTime
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
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftString
        Size = 10
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
    Left = 400
    Top = 192
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
    object TEntradaMioloDATAENTRADA: TDateTimeField
      FieldName = 'DATAENTRADA'
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
    object TEntradaMioloCODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Size = 10
    end
  end
  object TManutencao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'NOMEEMPRESA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'REGIBAMA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCMUNICIPAL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCJUNTA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATAREGJUNTA'
        DataType = ftDateTime
      end
      item
        Name = 'INIATIVIDADE'
        DataType = ftDateTime
      end
      item
        Name = 'CAPITALSOCIAL'
        DataType = ftFloat
      end
      item
        Name = 'CANE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CNAEDESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NATESTABELECIMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RESPONSAVELEMPRESA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFRESPONSAVEL'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTADOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFCONTADOR'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CRCCONTADOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOMEFILIAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJFILIAL'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNAE'
        DataType = ftString
        Size = 9
      end>
    IndexDefs = <
      item
        Name = 'MANUTENCAO_CODIGOEMPRESA'
        Fields = 'CODIGOEMPRESA'
      end
      item
        Name = 'MANUTENCAO_NOMEEMPRESA'
        Fields = 'NOMEEMPRESA'
        Options = [ixUnique]
      end
      item
        Name = 'RDB$PRIMARY6'
        Fields = 'NOMEEMPRESA'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MANUTENCAO'
    Left = 168
    Top = 72
    object TManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
    end
    object TManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Size = 50
    end
    object TManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TManutencaoCX: TIBStringField
      FieldName = 'CX'
      Size = 5
    end
    object TManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Size = 12
    end
    object TManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Size = 10
    end
    object TManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 10
    end
    object TManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Size = 12
    end
    object TManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
    end
    object TManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Size = 9
    end
    object TManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Size = 255
    end
    object TManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Size = 50
    end
    object TManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Size = 40
    end
    object TManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Size = 14
    end
    object TManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Size = 40
    end
    object TManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Size = 14
    end
    object TManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Size = 15
    end
    object TManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Size = 50
    end
    object TManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Size = 18
    end
    object TManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Size = 9
    end
    object TManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
    end
    object TManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
    end
    object TManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
  end
  object QEssencia: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESSENCIA')
    Left = 168
    Top = 208
    object QEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ESSENCIA.CODIGO'
    end
    object QEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ESSENCIA.ESSENCIA'
      Required = True
      Size = 30
    end
    object QEssenciaTINICIALCAPA: TFloatField
      FieldName = 'TINICIALCAPA'
      Origin = 'ESSENCIA.TINICIALCAPA'
    end
    object QEssenciaTINICIALMIOLO: TFloatField
      FieldName = 'TINICIALMIOLO'
      Origin = 'ESSENCIA.TINICIALMIOLO'
    end
    object QEssenciaEENTRADAS: TFloatField
      FieldName = 'EENTRADAS'
      Origin = 'ESSENCIA.EENTRADAS'
    end
    object QEssenciaEPRODUCAO: TFloatField
      FieldName = 'EPRODUCAO'
      Origin = 'ESSENCIA.EPRODUCAO'
    end
    object QEssenciaTPRODUCAO: TFloatField
      FieldName = 'TPRODUCAO'
      Origin = 'ESSENCIA.TPRODUCAO'
    end
    object QEssenciaTVENDAS: TFloatField
      FieldName = 'TVENDAS'
      Origin = 'ESSENCIA.TVENDAS'
      Required = True
    end
  end
  object QFornecedor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORNECEDOR')
    Left = 168
    Top = 272
    object QFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'FORNECEDOR.CODIGOFORNECEDOR'
    end
    object QFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FORNECEDOR.NOMEFORNECEDOR'
      Size = 50
    end
    object QFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'FORNECEDOR.NOMEFANTASIA'
      Size = 50
    end
    object QFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'FORNECEDOR.ENDERECO'
      Size = 40
    end
    object QFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'FORNECEDOR.NUMERO'
      Size = 6
    end
    object QFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'FORNECEDOR.COMPLEMENTO'
      Size = 30
    end
    object QFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'FORNECEDOR.BAIRRO'
      Size = 30
    end
    object QFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'FORNECEDOR.CEP'
      Size = 9
    end
    object QFornecedorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'FORNECEDOR.CX'
      Size = 6
    end
    object QFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'FORNECEDOR.CIDADE'
      Size = 30
    end
    object QFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'FORNECEDOR.CIDADEUF'
      Size = 2
    end
    object QFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'FORNECEDOR.FONE'
      Size = 11
    end
    object QFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'FORNECEDOR.FAX'
      Size = 11
    end
    object QFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'FORNECEDOR.EMAIL'
      Size = 50
    end
    object QFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'FORNECEDOR.WEB'
      Size = 50
    end
    object QFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'FORNECEDOR.CNPJ'
      Size = 18
    end
    object QFornecedorREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Origin = 'FORNECEDOR.REGIBAMA'
      Size = 10
    end
    object QFornecedorCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = 'FORNECEDOR.CNAE'
      Size = 9
    end
    object QFornecedorCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Origin = 'FORNECEDOR.CNAEDESCRICAO'
      Size = 60
    end
    object QFornecedorNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Origin = 'FORNECEDOR.NATESTABELECIMENTO'
      Size = 50
    end
    object QFornecedorINSCESTADUAL: TIntegerField
      FieldName = 'INSCESTADUAL'
      Origin = 'FORNECEDOR.INSCESTADUAL'
    end
    object QFornecedorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'FORNECEDOR.LOGRADOURO'
    end
    object QFornecedorCONTATO: TIntegerField
      FieldName = 'CONTATO'
      Origin = 'FORNECEDOR.CONTATO'
    end
    object QFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Origin = 'FORNECEDOR.CONTATOFONE'
      Size = 50
    end
    object QFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Origin = 'FORNECEDOR.CONTATOFAX'
      Size = 50
    end
    object QFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Origin = 'FORNECEDOR.CONTATORAMAL'
      Size = 4
    end
    object QFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Origin = 'FORNECEDOR.CONTATOEMAIL'
      Size = 50
    end
  end
  object QManutencao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DManutencao
    SQL.Strings = (
      'select * from MANUTENCAO')
    Left = 168
    Top = 344
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
      EditMask = '99.999.999/9999-99;0;_'
      Size = 18
    end
    object QManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'MANUTENCAO.INSCESTADUAL'
      EditMask = '99.999.999-9;0;_'
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
    object QManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
      Origin = 'MANUTENCAO.DATAREGJUNTA'
    end
    object QManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
      Origin = 'MANUTENCAO.INIATIVIDADE'
    end
    object QManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'MANUTENCAO.LOGRADOURO'
    end
  end
  object DQManutencao: TDataSource
    DataSet = QManutencao
    Left = 48
    Top = 344
  end
  object DQEntradaMiolo: TDataSource
    DataSet = QEntradaMiolo
    Left = 288
    Top = 264
  end
  object QEntradaMiolo: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DEntradaMiolo
    SQL.Strings = (
      'select * from ENTRADA_MIOLO')
    Left = 400
    Top = 264
    object QEntradaMioloCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
      Origin = 'ENTRADA_MIOLO.CODIGOENTRADA'
    end
    object QEntradaMioloCODIGOFORNECEDOR: TIBStringField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_MIOLO.CODIGOFORNECEDOR'
      Size = 6
    end
    object QEntradaMioloNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'ENTRADA_MIOLO.NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object QEntradaMioloDATAENTRADA: TDateTimeField
      FieldName = 'DATAENTRADA'
      Origin = 'ENTRADA_MIOLO.DATAENTRADA'
    end
    object QEntradaMioloCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Origin = 'ENTRADA_MIOLO.CONTROLE'
      Size = 6
    end
    object QEntradaMioloESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ENTRADA_MIOLO.ESSENCIA'
      Size = 30
    end
    object QEntradaMioloQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_MIOLO.QUANTIDADE'
    end
    object QEntradaMioloEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'ENTRADA_MIOLO.EXPESSURA'
    end
    object QEntradaMioloLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'ENTRADA_MIOLO.LARGURA'
    end
    object QEntradaMioloCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ENTRADA_MIOLO.COMPRIMENTO'
    end
    object QEntradaMioloTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'ENTRADA_MIOLO.TOTAL'
    end
    object QEntradaMioloCODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'ENTRADA_MIOLO.CODIGOESSENCIA'
      Size = 10
    end
  end
  object TProducao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOPRODUCAO'
        DataType = ftInteger
      end
      item
        Name = 'DIA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ANO'
        DataType = ftString
        Size = 4
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
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'COLA'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DIVISAO'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IND_ANO'
        Fields = 'ANO'
      end
      item
        Name = 'IND_DIA'
        Fields = 'DIA'
      end
      item
        Name = 'IND_MES'
        Fields = 'MES'
      end
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'CODIGOPRODUCAO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUCAO_CHAPA'
    Left = 400
    Top = 344
    object TProducaoCODIGOPRODUCAO: TIntegerField
      FieldName = 'CODIGOPRODUCAO'
    end
    object TProducaoDIA: TIBStringField
      FieldName = 'DIA'
      Size = 2
    end
    object TProducaoMES: TIBStringField
      FieldName = 'MES'
      Size = 30
    end
    object TProducaoANO: TIBStringField
      FieldName = 'ANO'
      Size = 4
    end
    object TProducaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TProducaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TProducaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TProducaoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TProducaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TProducaoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TProducaoCOLA: TFloatField
      FieldName = 'COLA'
    end
    object TProducaoCODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Size = 10
    end
  end
  object DProducao: TDataSource
    DataSet = TProducao
    Left = 288
    Top = 344
  end
  object DQProducao: TDataSource
    DataSet = QProducao
    Left = 48
    Top = 408
  end
  object QProducao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUCAO_CHAPA')
    Left = 168
    Top = 408
    object QProducaoCODIGOPRODUCAO: TIntegerField
      FieldName = 'CODIGOPRODUCAO'
      Origin = 'PRODUCAO_CHAPA.CODIGOPRODUCAO'
    end
    object QProducaoDIA: TIBStringField
      FieldName = 'DIA'
      Origin = 'PRODUCAO_CHAPA.DIA'
      Size = 2
    end
    object QProducaoMES: TIBStringField
      FieldName = 'MES'
      Origin = 'PRODUCAO_CHAPA.MES'
      Size = 30
    end
    object QProducaoANO: TIBStringField
      FieldName = 'ANO'
      Origin = 'PRODUCAO_CHAPA.ANO'
      Size = 4
    end
    object QProducaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'PRODUCAO_CHAPA.ESSENCIA'
      Size = 30
    end
    object QProducaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'PRODUCAO_CHAPA.QUANTIDADE'
    end
    object QProducaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'PRODUCAO_CHAPA.COMPRIMENTO'
    end
    object QProducaoLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'PRODUCAO_CHAPA.LARGURA'
    end
    object QProducaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'PRODUCAO_CHAPA.EXPESSURA'
    end
    object QProducaoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'PRODUCAO_CHAPA.TOTAL'
      DisplayFormat = '###,#0.000'
    end
    object QProducaoCOLA: TFloatField
      FieldName = 'COLA'
      Origin = 'PRODUCAO_CHAPA.COLA'
    end
    object QProducaoCODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'PRODUCAO_CHAPA.CODIGOESSENCIA'
      Size = 10
    end
  end
  object DCredor: TDataSource
    DataSet = TCredor
    Left = 288
    Top = 408
  end
  object TCredor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOCREDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMECREDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <
      item
        Name = 'IND_CREDOR'
        Fields = 'NOMECREDOR'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CREDOR'
    Left = 400
    Top = 408
    object TCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
    end
    object TCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Size = 50
    end
    object TCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object TCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object TCredorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TCredorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 15
    end
    object TCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object TCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TCredorUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCredorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object TCredorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object TCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object TCredorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 60
    end
    object TCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TCredorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TCredorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TCredorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
  end
  object DQCredor: TDataSource
    DataSet = QCredor
    Left = 40
    Top = 472
  end
  object QCredor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CREDOR')
    Left = 168
    Top = 472
    object QCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
      Origin = 'CREDOR.CODIGOCREDOR'
    end
    object QCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Origin = 'CREDOR.NOMECREDOR'
      Size = 50
    end
    object QCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CREDOR.FANTASIA'
      Size = 80
    end
    object QCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CREDOR.ENDERECO'
      Size = 50
    end
    object QCredorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CREDOR.NUMERO'
      Size = 6
    end
    object QCredorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CREDOR.CEP'
      Size = 15
    end
    object QCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CREDOR.BAIRRO'
    end
    object QCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CREDOR.CIDADE'
      Size = 30
    end
    object QCredorUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CREDOR.UF'
      Size = 2
    end
    object QCredorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'CREDOR.FONE'
      Size = 15
    end
    object QCredorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CREDOR.FAX'
      Size = 15
    end
    object QCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CREDOR.EMAIL'
      Size = 60
    end
    object QCredorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'CREDOR.WEB'
      Size = 60
    end
    object QCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'CREDOR.CONTATO'
      Size = 50
    end
    object QCredorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'CREDOR.COMPLEMENTO'
      Size = 30
    end
    object QCredorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'CREDOR.CX'
      Size = 6
    end
    object QCredorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'CREDOR.LOGRADOURO'
    end
  end
  object TVENDA: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOVENDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGOCREDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NOMECREDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATAVENDA'
        DataType = ftDateTime
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
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'VALORUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end
      item
        Name = 'TOTALVENDA'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'IND_CODIGOCREDOR'
        Fields = 'CODIGOCREDOR'
      end
      item
        Name = 'IND_CODIGOVENDA'
        Fields = 'CODIGOVENDA'
      end
      item
        Name = 'IND_DATAVENDA'
        Fields = 'DATAVENDA'
      end
      item
        Name = 'IND_NOMECREDOR'
        Fields = 'NOMECREDOR'
      end
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'CODIGOVENDA'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'VENDA_COMPENSADO'
    Left = 400
    Top = 472
    object TVENDACODIGOVENDA: TIntegerField
      FieldName = 'CODIGOVENDA'
    end
    object TVENDACODIGOCREDOR: TIBStringField
      FieldName = 'CODIGOCREDOR'
      Size = 6
    end
    object TVENDANOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Size = 50
    end
    object TVENDADATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object TVENDAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TVENDAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TVENDACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TVENDALARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TVENDAEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TVENDAVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
    end
    object TVENDATOTALM3: TFloatField
      FieldName = 'TOTALM3'
    end
    object TVENDATOTALVENDA: TFloatField
      FieldName = 'TOTALVENDA'
    end
    object TVENDACODIGOESSENCIA: TIBStringField
      FieldName = 'CODIGOESSENCIA'
      Size = 10
    end
  end
  object DVENDA: TDataSource
    DataSet = TVENDA
    Left = 288
    Top = 472
  end
end
