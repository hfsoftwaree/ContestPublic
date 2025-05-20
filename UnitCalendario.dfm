object frmCalendario: TfrmCalendario
  Left = 241
  Top = 152
  Width = 198
  Height = 207
  BorderIcons = [biSystemMenu]
  Caption = 'Calendario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CALENDARIO: TMonthCalendar
    Left = 0
    Top = 0
    Width = 190
    Height = 153
    Align = alClient
    Date = 38340.740572210650000000
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 48
    object Configurao1: TMenuItem
      Caption = 'Exibi'#231#227'o'
      object N1mes1: TMenuItem
        Caption = '1-M'#234's'
        ShortCut = 112
        OnClick = N1mes1Click
      end
      object N2meses1: TMenuItem
        Caption = '2-M'#234'ses'
        ShortCut = 113
        OnClick = N2meses1Click
      end
      object N4Mses1: TMenuItem
        Caption = '4-M'#234'ses'
        ShortCut = 115
        OnClick = N4Mses1Click
      end
      object N6Mses1: TMenuItem
        Caption = '6-M'#234'ses'
        ShortCut = 117
        OnClick = N6Mses1Click
      end
      object N8Mses1: TMenuItem
        Caption = '8-M'#234'ses'
        ShortCut = 119
        OnClick = N8Mses1Click
      end
      object N12Mses1: TMenuItem
        Caption = '12-M'#234'ses'
        ShortCut = 123
        OnClick = N12Mses1Click
      end
    end
    object sAIR1: TMenuItem
      Caption = '&Sair'
      OnClick = sAIR1Click
    end
  end
end
