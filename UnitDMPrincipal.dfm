object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Left = 199
  Top = 135
  Height = 188
  Width = 271
  object DManutencao: TDataSource
    DataSet = TManutencao
    Left = 16
    Top = 16
  end
  object DEssencia: TDataSource
    DataSet = TEssencia
    Left = 112
    Top = 16
  end
  object DFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 200
    Top = 16
  end
  object TManutencao: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
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
        Name = 'RDB$PRIMARY18'
        Fields = 'NOMEEMPRESA'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MANUTENCAO'
    Left = 16
    Top = 88
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
    object TManutencaoDATAREGJUNTA: TIBStringField
      FieldName = 'DATAREGJUNTA'
      Size = 10
    end
    object TManutencaoINIATIVIDADE: TIBStringField
      FieldName = 'INIATIVIDADE'
      Size = 10
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
    object TManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
  end
  object TEssencia: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TINICIALCAPA'
        DataType = ftFloat
      end
      item
        Name = 'TINICIALMIOLO'
        DataType = ftFloat
      end
      item
        Name = 'EENTRADAS'
        DataType = ftFloat
      end
      item
        Name = 'EPRODUCAO'
        DataType = ftFloat
      end
      item
        Name = 'TPRODUCAO'
        DataType = ftFloat
      end
      item
        Name = 'TVENDAS'
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
    Left = 112
    Top = 88
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
  object TFornecedor: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
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
        Name = 'FORNECEDOR0'
        Fields = 'CODIGOFORNECEDOR'
        Options = [ixUnique]
      end
      item
        Name = 'FORN_NOME'
        Fields = 'NOMEFORNECEDOR'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FORNECEDOR'
    Left = 200
    Top = 88
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
end
