object frmManutencao: TfrmManutencao
  Left = 183
  Top = 134
  Width = 617
  Height = 380
  AutoSize = True
  BorderIcons = []
  Caption = 'Manuten'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000330000000000000000000000033303303303300000000000000
    0003303330333003003300000000000000033003330330002333000000000000
    0030000033003033333000000000000033333330000003330003330000000803
    33333333333333300233330000000F033333333333333302333BB03000004F83
    33333333333333333BB003BB00004FF3333333333333B33BB0033BBB00004FF3
    33333333B3BB3BB0033BBBB000004FF83B333B3B3B3BBBB03BBBBB0300F04FFF
    33B3B3B3BBBBBBBBBBBB00330FF04FFF8B3B3333BBBBBBBBBB0033330FF044FF
    F8BBB03033BBBBB330333330FFF444FFF8BB0BB3003B330003333330FF44444F
    F88B3BBB300000033333B33FFF44444FFF3BB0BBB3000333B33BB38FF4444444
    FF003B0BB333333BBBBBB3FFF44444444FF00030BBBBBBBBBBBBBBFF44444444
    0000000303BBB3300000BFF444444400000000000000000000000FF444440000
    0000000000000000000000444444000000000000000000000000000044440000
    0000000000000000000000000444000000000000000000000000000000040000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFF1FFFFF8003FFFC0000FFF800007FF800007FE000003F0000
    001F0000001F0000000F00000007000000070000000000000000000000000000
    00000000000000000000000000000000000000000000000000000000000000C0
    00000FE01F003FFFFF80FFFFFFC0FFFFFFF0FFFFFFF8FFFFFFFEFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 41
    Cursor = crHandPoint
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 3
      Width = 70
      Height = 34
      Hint = 'Gravar Dados'
      Caption = '&Gravar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 143
      Top = 3
      Width = 70
      Height = 34
      Hint = 'Cancelar Dados'
      Caption = '&Cancelar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton4: TSpeedButton
      Left = 213
      Top = 3
      Width = 70
      Height = 34
      Hint = 'Fechar'
      Caption = '&Fechar'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      OnClick = SpeedButton4Click
    end
    object SpeedButton11: TSpeedButton
      Left = 73
      Top = 3
      Width = 70
      Height = 34
      Hint = 'Excluir Dados'
      Caption = 'E&xcluir'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      OnClick = SpeedButton11Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 44
    Width = 609
    Height = 309
    ActivePage = TabSheet1
    TabHeight = 20
    TabOrder = 1
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = '&Dados Basicos'
      object Label17: TLabel
        Left = 8
        Top = 40
        Width = 86
        Height = 13
        Caption = 'Nome de Fantasia'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 80
        Width = 54
        Height = 13
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 152
        Top = 80
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 512
        Top = 80
        Width = 37
        Height = 13
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 120
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 288
        Top = 120
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 160
        Width = 19
        Height = 13
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 96
        Top = 160
        Width = 58
        Height = 13
        Caption = 'Caixa Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 176
        Top = 160
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 520
        Top = 160
        Width = 14
        Height = 13
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 8
        Top = 200
        Width = 24
        Height = 13
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 128
        Top = 200
        Width = 17
        Height = 13
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 248
        Top = 200
        Width = 27
        Height = 13
        Caption = 'e-mail'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 8
        Top = 240
        Width = 23
        Height = 13
        Caption = 'Web'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 2
        Width = 41
        Height = 13
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 56
        Width = 577
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NOMEFANTASIA'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 152
        Top = 96
        Width = 353
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 8
        Top = 136
        Width = 264
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 288
        Top = 136
        Width = 297
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit22: TDBEdit
        Left = 176
        Top = 176
        Width = 337
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit25: TDBEdit
        Left = 248
        Top = 216
        Width = 337
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'EMAIL'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit26: TDBEdit
        Left = 8
        Top = 256
        Width = 577
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'WEB'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBComboBox3: TDBComboBox
        Left = 8
        Top = 96
        Width = 137
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'LOGRADOURO'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'ACAMPAMENTO'
          'ALAMEDA'
          'ASSENTAMENTO'
          'AVENIDA'
          'BECO'
          'CAMPO'
          'CHACARA'
          'COMUNIDADE'
          'CORREGO'
          'ESTRADA'
          'FAVELA'
          'FAZENDA'
          'GALERIA'
          'GLEBA'
          'JARDIM'
          'LADEIRA'
          'LARGO'
          'LINHA'
          'LOTE'
          'LOTEAMENTO'
          'MORRO'
          'PARQUE'
          'PASSAGEM'
          'PRA'#199'A'
          'RODOVIA'
          'RUA'
          'SERRA'
          'SITIO'
          'TRAVESSA'
          'VIA'
          'VIADUTO'
          'VILA')
        ParentFont = False
        Sorted = True
        TabOrder = 3
      end
      object MaskEdit4: TMaskEdit
        Left = 8
        Top = 176
        Width = 81
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99999-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 8
        OnChange = MaskEdit4Change
        OnExit = MaskEdit4Exit
      end
      object DBComboBox4: TDBComboBox
        Left = 520
        Top = 176
        Width = 65
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'CIDADEUF'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        ParentFont = False
        Sorted = True
        TabOrder = 11
      end
      object MaskEdit5: TMaskEdit
        Left = 8
        Top = 216
        Width = 97
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99-999-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 11
        ParentFont = False
        TabOrder = 12
        OnChange = MaskEdit5Change
        OnExit = MaskEdit5Exit
      end
      object MaskEdit6: TMaskEdit
        Left = 128
        Top = 216
        Width = 97
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99-999-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 11
        ParentFont = False
        TabOrder = 13
        OnChange = MaskEdit6Change
        OnExit = MaskEdit6Exit
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 0
        Width = 57
        Height = 17
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clAqua
        DataField = 'CODIGOEMPRESA'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 16
        Width = 577
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NOMEEMPRESA'
        DataSource = DM.DManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 48
        Top = 240
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = DM.DManutencao
        TabOrder = 16
        Visible = False
        OnChange = DBEdit5Change
      end
      object DBEdit6: TDBEdit
        Left = 176
        Top = 240
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = DM.DManutencao
        TabOrder = 17
        Visible = False
        OnChange = DBEdit6Change
      end
      object DBEdit13: TDBEdit
        Left = 320
        Top = 240
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DM.DManutencao
        TabOrder = 18
        Visible = False
        OnChange = DBEdit13Change
      end
      object DBEdit17: TEvDBZeroEdit
        Left = 512
        Top = 96
        Width = 73
        Height = 19
        Color = clBtnHighlight
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = DM.DManutencao
        ParentCtl3D = False
        TabOrder = 5
        ZeroLength = 6
      end
      object DBEdit21: TEvDBZeroEdit
        Left = 96
        Top = 176
        Width = 73
        Height = 19
        Ctl3D = False
        DataField = 'CX'
        DataSource = DM.DManutencao
        ParentCtl3D = False
        TabOrder = 9
        ZeroLength = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Inscri'#231#245'es'
      ImageIndex = 1
      object Label31: TLabel
        Left = 8
        Top = 0
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 168
        Top = 0
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 8
        Top = 48
        Width = 91
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 8
        Top = 96
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o na Junta'
        FocusControl = DBEdit30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 168
        Top = 96
        Width = 109
        Height = 13
        Caption = 'Data Registro na Junta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 304
        Top = 96
        Width = 92
        Height = 13
        Caption = 'Inicio das Atividade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 440
        Top = 96
        Width = 64
        Height = 13
        Caption = 'Capital Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 8
        Top = 144
        Width = 29
        Height = 13
        Caption = 'CNAE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 96
        Top = 144
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 8
        Top = 192
        Width = 139
        Height = 13
        Caption = 'Natureza do Estabelecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 304
        Top = 0
        Width = 90
        Height = 13
        Caption = 'Registro no IBAMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit29: TDBEdit
        Left = 8
        Top = 64
        Width = 129
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'INSCMUNICIPAL'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit30: TDBEdit
        Left = 8
        Top = 112
        Width = 129
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'INSCJUNTA'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit35: TDBEdit
        Left = 96
        Top = 160
        Width = 497
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CNAEDESCRICAO'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object MaskEdit7: TMaskEdit
        Left = 8
        Top = 16
        Width = 113
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        EditMask = '99.999.999/9999-99;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 18
        ParentFont = False
        TabOrder = 0
        OnChange = MaskEdit7Change
      end
      object MaskEdit11: TMaskEdit
        Left = 8
        Top = 160
        Width = 81
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        EditMask = '9999-9/99;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 8
        OnChange = MaskEdit11Change
        OnExit = MaskEdit11Exit
      end
      object DBComboBox5: TDBComboBox
        Left = 8
        Top = 208
        Width = 585
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'NATESTABELECIMENTO'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          '206-2 SOCIEDADE EMPRES'#193'RIA LTDA'
          '213-5 EMPRES'#193'RIO [INDIVIDUAL]')
        ParentFont = False
        Sorted = True
        TabOrder = 10
      end
      object DBEdit3: TDBEdit
        Left = 304
        Top = 16
        Width = 129
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'REGIBAMA'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 448
        Top = 24
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNPJ'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Visible = False
        OnChange = DBEdit7Change
      end
      object DBEdit11: TDBEdit
        Left = 416
        Top = 136
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNAE'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Visible = False
        OnChange = DBEdit11Change
      end
      object DBEdit8: TDBEdit
        Left = 240
        Top = 56
        Width = 121
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'INSCESTADUAL'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Visible = False
        OnChange = DBEdit8Change
      end
      object MaskEdit3: TMaskEdit
        Left = 168
        Top = 16
        Width = 97
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        EditMask = '99.999.999-9;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 1
        OnChange = MaskEdit3Change
      end
      object MaskEdit9: TEvDBDateEdit
        Left = 168
        Top = 112
        Width = 121
        Height = 19
        AssumeDefault = False
        Ctl3D = False
        DataField = 'DATAREGJUNTA'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6020000424DE60200000000000042000000280000001A0000000D0000000100
          100003000000A402000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C553E343A
          1336F231D12DB0298F256E214D1D2C192C191F7C1F7C9452734E524A31461042
          1042EF3DCE39AD358C316B2D1F7C1F7C7642FA52363AFC52563AFC52363AFA52
          363ABA4A2C191F7C1F7CB5561863734E1863734E1863734E1863734ED65A8C31
          1F7C1F7C7642FF7FBA4AFF7F9A42FF7B9A42BF739A429F6B4D1D1F7C1F7CB556
          FF7FD65AFF7FB556FF7FB556BD77B5569C73AD351F7C1F7C9746DA4A363A9A42
          363A9A420271E270C0589A426E211F7C1F7CD65AF75E734EB556734EB5561042
          EF3DAD35B556CE391F7C1F7CB84AFF7F9A42FF7F9A42FF7F0C7EFF7FE270BF73
          8F251F7C1F7CD65AFF7FB556FF7FB556FF7FD65AFF7FEF3DBD77EF3D1F7C1F7C
          D94EDA4A363A9A42363A9A42707E0C7E02719A42B0291F7C1F7CF75EF75E734E
          B556734EB5561863D65A1042B55610421F7C1F7CFA52FF7F9A42FF7F9A42FF7F
          9A42FF7F9A42FF7BD12D1F7C1F7C1863FF7FB556FF7FB556FF7FB556FF7FB556
          FF7F10421F7C1F7C9D427D425C3A3B3A3B361B321A2EFA29D925B81D98191F7C
          1F7CD65AB55694529452734E734E524A31461042EF3DEF3D1F7C1F7C9D46BF73
          BF73BF73BF73BF739E429E429E429E3AB81D1F7C1F7CD65ABD77BD77BD77BD77
          BD77D65AD65AD65AB556EF3D1F7C1F7CBE4A9D469D427D425C3A3B3A3B361B32
          1A2EFA29D9251F7C1F7CF75ED65AD65AB55694529452734E734E524A31461042
          1F7C1F7CFA522925FF7F2925FF7F2925FF7F2925FF7F2925FA521F7C1F7C1863
          8C31FF7F8C31FF7F8C31FF7F8C31FF7F8C3118631F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C}
        ParentCtl3D = False
        ParentFont = False
        ShowButton = True
        TabOrder = 5
      end
      object MaskEdit10: TEvDBDateEdit
        Left = 304
        Top = 112
        Width = 121
        Height = 19
        AssumeDefault = False
        Ctl3D = False
        DataField = 'INIATIVIDADE'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6020000424DE60200000000000042000000280000001A0000000D0000000100
          100003000000A402000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C553E343A
          1336F231D12DB0298F256E214D1D2C192C191F7C1F7C9452734E524A31461042
          1042EF3DCE39AD358C316B2D1F7C1F7C7642FA52363AFC52563AFC52363AFA52
          363ABA4A2C191F7C1F7CB5561863734E1863734E1863734E1863734ED65A8C31
          1F7C1F7C7642FF7FBA4AFF7F9A42FF7B9A42BF739A429F6B4D1D1F7C1F7CB556
          FF7FD65AFF7FB556FF7FB556BD77B5569C73AD351F7C1F7C9746DA4A363A9A42
          363A9A420271E270C0589A426E211F7C1F7CD65AF75E734EB556734EB5561042
          EF3DAD35B556CE391F7C1F7CB84AFF7F9A42FF7F9A42FF7F0C7EFF7FE270BF73
          8F251F7C1F7CD65AFF7FB556FF7FB556FF7FD65AFF7FEF3DBD77EF3D1F7C1F7C
          D94EDA4A363A9A42363A9A42707E0C7E02719A42B0291F7C1F7CF75EF75E734E
          B556734EB5561863D65A1042B55610421F7C1F7CFA52FF7F9A42FF7F9A42FF7F
          9A42FF7F9A42FF7BD12D1F7C1F7C1863FF7FB556FF7FB556FF7FB556FF7FB556
          FF7F10421F7C1F7C9D427D425C3A3B3A3B361B321A2EFA29D925B81D98191F7C
          1F7CD65AB55694529452734E734E524A31461042EF3DEF3D1F7C1F7C9D46BF73
          BF73BF73BF73BF739E429E429E429E3AB81D1F7C1F7CD65ABD77BD77BD77BD77
          BD77D65AD65AD65AB556EF3D1F7C1F7CBE4A9D469D427D425C3A3B3A3B361B32
          1A2EFA29D9251F7C1F7CF75ED65AD65AB55694529452734E734E524A31461042
          1F7C1F7CFA522925FF7F2925FF7F2925FF7F2925FF7F2925FA521F7C1F7C1863
          8C31FF7F8C31FF7F8C31FF7F8C31FF7F8C3118631F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C}
        ParentCtl3D = False
        ParentFont = False
        ShowButton = True
        TabOrder = 6
      end
      object EvDBNumEdit1: TEvDBNumEdit
        Left = 440
        Top = 112
        Width = 121
        Height = 19
        AutoHideCalculator = False
        Ctl3D = False
        DataField = 'CAPITALSOCIAL'
        DataSource = DM.DManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6020000424DE60200000000000042000000280000001A0000000D0000000100
          100003000000A402000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CB31D
          92199219921971157115701550114F111F7C1F7C1F7C1F7C10421042EF3DEF3D
          EF3DCE39CE39CE39AD351F7C1F7C1F7C1F7CB31D5C3A3B361A2EFA29D925B81D
          B81D50111F7C1F7C1F7C1F7C3146D65AB5569452734E524A31463146CE391F7C
          1F7C1F7C1F7CD41DFF7F9A42FF7F9A42FF7F9A425D6370151F7C1F7C1F7C1F7C
          3146FF7FD65AFF7FD65AFF7FD65A9C73CE391F7C1F7C1F7C1F7CD4215C3A3B36
          1A2EFA29D925B81DB81D71151F7C1F7C1F7C1F7C3146D65AB5569452734E524A
          31463146CE391F7C1F7C1F7C1F7CD521FF7F9A42FF7F9A42FF7F9A425D637115
          1F7C1F7C1F7C1F7C3146FF7FD65AFF7FD65AFF7FD65A9C73EF3D1F7C1F7C1F7C
          1F7CF5215C3A3B361A2EFA29D925B81DB81D92191F7C1F7C1F7C1F7C524AD65A
          B5569452734E524A31463146EF3D1F7C1F7C1F7C1F7CF521FF7F9A42FF7F9A42
          FF7F9A425D6392191F7C1F7C1F7C1F7C524AFF7FD65AFF7FD65AFF7FD65A9C73
          EF3D1F7C1F7C1F7C1F7CF6255C3A3B361A2EFA29D925B81DB81D92191F7C1F7C
          1F7C1F7C524AD65AB5569452734E524A3146314610421F7C1F7C1F7C1F7C1626
          FF7FDF7BBF779F737F6F5F6B5F6BB31D1F7C1F7C1F7C1F7C734EFF7FFF7FDE7B
          DE7BBD779C739C7310421F7C1F7C1F7C1F7C1726FF7FFF7FDF7BBF779F737F6F
          7F6FB31D1F7C1F7C1F7C1F7C734EFF7FFF7FFF7FDE7BDE7BBD77BD7731461F7C
          1F7C1F7C1F7C172A17261626F625F521F521D521D421D41D1F7C1F7C1F7C1F7C
          734E734E734E524A524A524A3146314631461F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C}
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Responsaveis'
      ImageIndex = 2
      object Label41: TLabel
        Left = 8
        Top = 8
        Width = 129
        Height = 13
        Caption = 'Respons'#225'vel pela Empresa'
        FocusControl = DBEdit36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 8
        Top = 56
        Width = 85
        Height = 13
        Caption = 'CPF Responsavel'
        FocusControl = DBEdit37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit36: TDBEdit
        Left = 8
        Top = 24
        Width = 425
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'RESPONSAVELEMPRESA'
        DataSource = DM.DManutencao
        TabOrder = 0
      end
      object DBEdit37: TDBEdit
        Left = 8
        Top = 104
        Width = 145
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CPFRESPONSAVEL'
        DataSource = DM.DManutencao
        TabOrder = 2
        Visible = False
        OnChange = DBEdit37Change
      end
      object MaskEdit2: TMaskEdit
        Left = 8
        Top = 72
        Width = 120
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        EditMask = '999.999.999-99;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
        OnChange = MaskEdit2Change
      end
    end
  end
  object EvCheckCNPJ1: TEvCheckCNPJ
    CNPJ = '99.999.999/9999-99'
    Associate = MaskEdit7
    OnError = MaskEdit7Exit
    Left = 292
    Top = 6
  end
  object EvCheckIE1: TEvCheckIE
    Associate = MaskEdit3
    IE = '99.999.999-9'
    UF = 'MT'
    Valid = False
    OnError = MaskEdit3Exit
    Left = 324
    Top = 6
  end
  object EvCheckCPF2: TEvCheckCPF
    CPF = '999.999.999-99'
    Associate = MaskEdit2
    OnError = MaskEdit2Exit
    Left = 356
    Top = 6
  end
end
