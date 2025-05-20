object frmSelecaoImpressao10: TfrmSelecaoImpressao10
  Left = 256
  Top = 137
  Width = 402
  Height = 308
  ActiveControl = MES
  AutoSize = True
  BorderIcons = []
  Caption = 'Sele'#231#227'o de Impre'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 274
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object frmSelecaoCapaTotalPeriodo: TBitBtn
      Left = 144
      Top = 224
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Hint = 'Vizualiza Relat'#243'rio com os crit'#233'rios informados'
      Caption = '&Vizualizar'
      TabOrder = 0
      TabStop = False
      OnClick = frmSelecaoCapaTotalPeriodoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 224
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Hint = 'Imprime Relat'#243'rio sem vizualizar'
      Caption = '&Imprimir'
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 304
      Top = 224
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Hint = 'Fecha formulario'
      Caption = '&Retornar'
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object RGGrafico: TRadioGroup
      Left = 8
      Top = 152
      Width = 377
      Height = 57
      Caption = 'Classifica'#231#227'o dos Registros'
      Color = clBtnFace
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Dia'
        'Ess'#234'ncia')
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 377
      Height = 73
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label3: TLabel
        Left = 216
        Top = 22
        Width = 19
        Height = 13
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 22
        Width = 20
        Height = 13
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MES: TComboBox
        Left = 8
        Top = 40
        Width = 193
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MARCO'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
      end
      object ANO: TComboBox
        Left = 216
        Top = 40
        Width = 81
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        Sorted = True
        TabOrder = 1
        Items.Strings = (
          '1999'
          '2000'
          '2001'
          '2002'
          '2003'
          '2004'
          '2005'
          '2006'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030'
          '2031'
          '2032'
          '2033'
          '2034'
          '2035'
          '2036'
          '2037'
          '2038'
          '2039'
          '2040'
          '2041'
          '2042'
          '2043'
          '2044'
          '2045'
          '2046'
          '2047'
          '2048'
          '2049'
          '2050')
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 88
      Width = 377
      Height = 57
      Caption = 'M'#233'dia di'#225'ria da Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 291
        Height = 13
        Caption = 'Entre com o Numero de dias para c'#225'lculo da M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 36
        Width = 110
        Height = 13
        Caption = 'Di'#225'ria da Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBComboBox
        Left = 305
        Top = 21
        Width = 64
        Height = 28
        Style = csDropDownList
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'DIAS'
        DataSource = DDIVISAO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 20
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DDIVISAO: TDataSource
    DataSet = TDIVISAO
    Left = 24
    Top = 224
  end
  object TDIVISAO: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DIAS'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'DIVISAO'
    Left = 56
    Top = 224
    object TDIVISAODIAS: TFloatField
      FieldName = 'DIAS'
    end
  end
end
