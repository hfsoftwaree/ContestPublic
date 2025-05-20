object frmGraficoEntradaMiolo: TfrmGraficoEntradaMiolo
  Left = 200
  Top = 89
  ActiveControl = BitBtn1
  BorderStyle = bsNone
  Caption = 'frmGraficoEntradaMiolo'
  ClientHeight = 403
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 344
    Width = 59
    Height = 13
    Caption = 'CONTROLE'
    FocusControl = DBEdit2
  end
  object DBCGrafico: TDBChart
    Left = 0
    Top = 25
    Width = 549
    Height = 351
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Gradient.EndColor = clWhite
    Gradient.StartColor = 8404992
    Gradient.Visible = True
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -24
    Title.Font.Name = 'Courier New'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      'Entrada de Miolo')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.TextStyle = ltsPlain
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    BevelWidth = 0
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 24
      Top = 256
      Width = 0
      Height = 25
      Cancel = True
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = DM.TEntradaMiolo
      SeriesColor = clRed
      XLabelsSource = 'ESSENCIA'
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'TOTAL'
      object TeeFunction1: TSubtractTeeFunction
      end
    end
    object Series2: TBarSeries
      Active = False
      Marks.ArrowLength = 20
      Marks.Style = smsPercent
      Marks.Visible = True
      DataSource = DM.TEntradaMiolo
      SeriesColor = clGreen
      XLabelsSource = 'ESSENCIA'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'TOTAL'
    end
    object Series3: TLineSeries
      Active = False
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = DM.TEntradaMiolo
      SeriesColor = clYellow
      XLabelsSource = 'ESSENCIA'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'TOTAL'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 549
    Height = 3
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 549
    Height = 24
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' ESC - Retorna'
    Color = 8537634
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'FORNECEDOR.:'
    Color = clBtnHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBEdit1: TDBEdit
      Left = 120
      Top = 4
      Width = 657
      Height = 16
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clBtnHighlight
      Ctl3D = False
      DataField = 'NOMEFORNECEDOR'
      DataSource = DM.DEntradaMiolo
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 696
    Width = 82
    Height = 21
    DataField = 'CONTROLE'
    DataSource = DM.DEntradaCapa
    TabOrder = 4
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 8
    Top = 64
  end
end
