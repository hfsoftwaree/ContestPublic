object frmFornecedores: TfrmFornecedores
  Left = 189
  Top = 109
  Width = 601
  Height = 378
  AutoSize = True
  BorderIcons = []
  Caption = 'Fornecedores'
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
    Width = 593
    Height = 41
    Cursor = crHandPoint
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 165
      Top = 3
      Width = 70
      Height = 35
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
      Left = 305
      Top = 3
      Width = 70
      Height = 35
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
    object SpeedButton3: TSpeedButton
      Left = 375
      Top = 3
      Width = 70
      Height = 35
      Hint = 'Localizar Dados'
      Caption = '&Localizar'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 445
      Top = 3
      Width = 70
      Height = 35
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
    object SpeedButton5: TSpeedButton
      Left = 3
      Top = 3
      Width = 23
      Height = 35
      Hint = 'Primeiro Registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 26
      Top = 3
      Width = 23
      Height = 35
      Hint = 'Registro Anterior'
      Flat = True
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
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 49
      Top = 3
      Width = 23
      Height = 35
      Hint = 'Proximo Registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 72
      Top = 3
      Width = 23
      Height = 35
      Hint = 'Ultimo Registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 95
      Top = 3
      Width = 70
      Height = 35
      Hint = 'Incluir Dados'
      Caption = '&Incluir'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton9Click
    end
    object SpeedButton11: TSpeedButton
      Left = 235
      Top = 3
      Width = 70
      Height = 35
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
    object SpeedButton10: TSpeedButton
      Left = 375
      Top = 3
      Width = 70
      Height = 35
      Caption = '&Ocultar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
        77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
        07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton10Click
    end
    object Label27: TLabel
      Left = 576
      Top = 8
      Width = 6
      Height = 20
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 42
    Width = 593
    Height = 309
    ActivePage = TabSheet1
    TabHeight = 20
    TabOrder = 1
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = '&Dados Gerais'
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 86
        Height = 13
        Caption = 'Nome de Fantasia'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
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
      object Label5: TLabel
        Left = 144
        Top = 80
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 504
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
      object Label7: TLabel
        Left = 8
        Top = 120
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 288
        Top = 120
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
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
      object Label10: TLabel
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
      object Label11: TLabel
        Left = 176
        Top = 160
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 512
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
      object Label13: TLabel
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
      object Label14: TLabel
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
      object Label15: TLabel
        Left = 248
        Top = 200
        Width = 27
        Height = 13
        Caption = 'e-mail'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 240
        Width = 23
        Height = 13
        Caption = 'Web'
        FocusControl = DBEdit16
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
      object DBEdit3: TDBEdit
        Left = 8
        Top = 56
        Width = 569
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NOMEFANTASIA'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 144
        Top = 96
        Width = 353
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 136
        Width = 264
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 288
        Top = 136
        Width = 289
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 176
        Top = 176
        Width = 329
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 248
        Top = 216
        Width = 329
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'EMAIL'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit16: TDBEdit
        Left = 8
        Top = 256
        Width = 569
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'WEB'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBComboBox1: TDBComboBox
        Left = 8
        Top = 96
        Width = 129
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'LOGRADOURO'
        DataSource = DM.DFornecedor
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
      object MaskEdit1: TMaskEdit
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
        OnChange = MaskEdit1Change
        OnExit = MaskEdit1Exit
      end
      object DBComboBox2: TDBComboBox
        Left = 512
        Top = 176
        Width = 65
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'CIDADEUF'
        DataSource = DM.DFornecedor
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
      object MaskEdit2: TMaskEdit
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
        OnChange = MaskEdit2Change
        OnExit = MaskEdit2Exit
      end
      object MaskEdit3: TMaskEdit
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
        OnChange = MaskEdit3Change
        OnExit = MaskEdit3Exit
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 0
        Width = 57
        Height = 17
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clAqua
        DataField = 'CODIGOFORNECEDOR'
        DataSource = DM.DFornecedor
        Enabled = False
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
        Width = 569
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NOMEFORNECEDOR'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 216
        Top = 152
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Visible = False
        OnChange = DBEdit9Change
      end
      object DBEdit12: TDBEdit
        Left = 256
        Top = 240
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnChange = DBEdit12Change
      end
      object DBEdit13: TDBEdit
        Left = 168
        Top = 192
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnChange = DBEdit13Change
      end
      object DBEdit6: TEvDBZeroEdit
        Left = 504
        Top = 96
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = DM.DFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        ZeroLength = 6
      end
      object DBEdit10: TEvDBZeroEdit
        Left = 96
        Top = 176
        Width = 73
        Height = 19
        Ctl3D = False
        DataField = 'CX'
        DataSource = DM.DFornecedor
        ParentCtl3D = False
        TabOrder = 9
        ZeroLength = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'I&nscri'#231#245'es'
      ImageIndex = 1
      object Label17: TLabel
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
      object Label18: TLabel
        Left = 184
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
      object Label20: TLabel
        Left = 328
        Top = 0
        Width = 90
        Height = 13
        Caption = 'Registro no IBAMA'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 48
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
      object Label25: TLabel
        Left = 96
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 96
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
      object DBEdit18: TDBEdit
        Left = 328
        Top = 16
        Width = 129
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'REGIBAMA'
        DataSource = DM.DFornecedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit23: TDBEdit
        Left = 96
        Top = 64
        Width = 481
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CNAEDESCRICAO'
        DataSource = DM.DFornecedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object MaskEdit4: TMaskEdit
        Left = 8
        Top = 16
        Width = 160
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99.999.999/9999-99;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 18
        ParentFont = False
        TabOrder = 0
        OnChange = MaskEdit4Change
      end
      object MaskEdit8: TMaskEdit
        Left = 8
        Top = 64
        Width = 81
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '9999-9/99;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 4
        OnChange = MaskEdit8Change
        OnExit = MaskEdit8Exit
      end
      object DBComboBox3: TDBComboBox
        Left = 8
        Top = 112
        Width = 569
        Height = 21
        AutoDropDown = True
        BevelKind = bkTile
        CharCase = ecUpperCase
        DataField = 'NATESTABELECIMENTO'
        DataSource = DM.DFornecedor
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
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 312
        Top = 160
        Width = 121
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'INSCESTADUAL'
        DataSource = DM.DFornecedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnChange = DBEdit4Change
      end
      object DBEdit14: TDBEdit
        Left = 24
        Top = 160
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNPJ'
        DataSource = DM.DFornecedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnChange = DBEdit14Change
      end
      object DBEdit17: TDBEdit
        Left = 168
        Top = 160
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNAE'
        DataSource = DM.DFornecedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnChange = DBEdit17Change
      end
      object MaskEdit5: TMaskEdit
        Left = 184
        Top = 16
        Width = 112
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99.999.999-9;0;_'
        MaxLength = 12
        TabOrder = 1
        OnChange = MaskEdit5Change
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Con&tato'
      ImageIndex = 5
      object Label1: TLabel
        Left = 8
        Top = 2
        Width = 37
        Height = 13
        Caption = 'Contato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 50
        Width = 42
        Height = 13
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 136
        Top = 50
        Width = 30
        Height = 13
        Caption = 'Ramal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 264
        Top = 50
        Width = 17
        Height = 13
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 98
        Width = 25
        Height = 13
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit20: TDBEdit
        Left = 8
        Top = 16
        Width = 569
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CONTATO'
        DataSource = DM.DFornecedor
        TabOrder = 0
      end
      object MaskEdit6: TMaskEdit
        Left = 8
        Top = 64
        Width = 87
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99-999-9999;0;_'
        MaxLength = 11
        TabOrder = 1
        OnChange = MaskEdit6Change
        OnExit = MaskEdit6Exit
      end
      object EvDBZeroEdit1: TEvDBZeroEdit
        Left = 136
        Top = 64
        Width = 87
        Height = 19
        Ctl3D = False
        DataField = 'CONTATORAMAL'
        DataSource = DM.DFornecedor
        ParentCtl3D = False
        TabOrder = 2
        ZeroLength = 3
      end
      object DBEdit22: TDBEdit
        Left = 8
        Top = 112
        Width = 569
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecLowerCase
        DataField = 'CONTATOEMAIL'
        DataSource = DM.DFornecedor
        TabOrder = 4
      end
      object DBEdit24: TDBEdit
        Left = 8
        Top = 152
        Width = 113
        Height = 21
        DataField = 'CONTATOFONE'
        DataSource = DM.DFornecedor
        TabOrder = 5
        Visible = False
        OnChange = DBEdit24Change
      end
      object DBEdit25: TDBEdit
        Left = 272
        Top = 152
        Width = 121
        Height = 21
        DataField = 'CONTATOFAX'
        DataSource = DM.DFornecedor
        TabOrder = 6
        Visible = False
        OnChange = DBEdit25Change
      end
      object MaskEdit7: TMaskEdit
        Left = 264
        Top = 64
        Width = 87
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        EditMask = '99-999-9999;0;_'
        MaxLength = 11
        TabOrder = 3
        OnChange = MaskEdit7Change
        OnExit = MaskEdit7Exit
      end
    end
  end
  object Edit1: TEdit
    Left = 12
    Top = 42
    Width = 570
    Height = 24
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnChange = Edit1Change
    OnExit = Edit1Exit
  end
  object EvCheckCNPJ1: TEvCheckCNPJ
    CNPJ = '99.999.999/9999-99'
    Associate = MaskEdit4
    OnError = MaskEdit4Exit
    Left = 20
    Top = 284
  end
  object EvCheckIE1: TEvCheckIE
    Associate = MaskEdit5
    IE = '99.999.999-9'
    UF = 'MT'
    Valid = False
    OnError = MaskEdit5Exit
    Left = 60
    Top = 284
  end
end
