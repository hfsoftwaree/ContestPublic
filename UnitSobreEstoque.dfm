object frmSobreEstoque: TfrmSobreEstoque
  Left = 181
  Top = 68
  Width = 541
  Height = 451
  AutoSize = True
  BorderIcons = []
  Caption = 'Sobre o Estoque Inicial'
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
  object Bevel2: TBevel
    Left = 6
    Top = 416
    Width = 525
    Height = 1
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 8
    Top = 368
    Width = 525
    Height = 9
    Shape = bsTopLine
    Style = bsRaised
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 533
    Height = 361
    BorderWidth = 1
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      
        '  I-Como foi informado no aviso do lan'#231'amento do Estoque Inicial' +
        ', a referida ficha '#233' '
      
        #250'nica e exclusivamente para inclus'#227'o do Estoque Inicial, se ao a' +
        'brir a referida ficha a '
      
        'mesma j'#225' estiver aparecendo alguma quantidade, esta '#233' a soma de ' +
        'todas as '
      
        'entradas j'#225' lan'#231'adas at'#233' o momento, tanto de Capa quanto de Miol' +
        'o, a'#237' para incluir o '
      
        'Estoque inicial, deve-se considerar a quantidade existente, conf' +
        'orme exemplo '
      'abaixo;'
      ''
      'Exemplo:'
      
        'Quantidade que esta aparecendo.............................. 35.' +
        '000 M/3'
      
        'Quantidade do Estoque que ira lan'#231'ar...................... 15.00' +
        '0 M/3'
      
        'Total a lan'#231'ar..................................................' +
        '.................... 45.000 M/3'
      ''
      
        'O Total acima mencionado '#233' a soma da quantidade que ja estava la' +
        'n'#231'ada + (mais) '
      
        'o estoque que iria lan'#231'ar. Mas se n'#227'o estiver aparecendo nenhuma' +
        ' quantidade, a'#237' '
      'basta informar o que deseja.'
      ''
      
        '  II-Para alterar o valor de um estoque lan'#231'ado incorretamente, ' +
        'deve-se fazer '
      'conforme o exemplo abaixo;'
      ''
      'Exemplo:'
      
        'Quantidade que esta aparecendo.............................. 45.' +
        '000 M/3'
      
        'Quantidade do Estoque Inserido................................. ' +
        '15.000M/3'
      
        'Quantidade ap'#243's a dedu'#231#227'o.......................................' +
        '. 20.000M/3'
      
        'Quantidade do Estoque que seri inserido................ 15.000 M' +
        '/3'
      
        'Total a Lan'#231'ar..................................................' +
        '................... 35.000M/3'
      ''
      
        'O Total acima mencionado '#233' a soma da quantidade que ja estava la' +
        'n'#231'ada - (menos) '
      
        'Quantidade do Estoque Inserido + (mais) Quantidade do Estoque qu' +
        'e seria inserido.'
      ''
      ''
      
        'Se ainda assim estiver em duvida entre em contato com o Desenvol' +
        'vedor do '
      'Sistema.')
    ParentFont = False
    PlainText = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 420
    Top = 376
    Width = 107
    Height = 33
    Cursor = crHandPoint
    Caption = '&Retornar'
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 312
    Top = 376
    Width = 107
    Height = 33
    Caption = '&Imprimir'
    TabOrder = 2
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
end
