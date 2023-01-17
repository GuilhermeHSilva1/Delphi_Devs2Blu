object frmRelCidades: TfrmRelCidades
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Endere'#231'o'
  ClientHeight = 367
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 361
    Height = 121
    Caption = 'Buscar Endere'#231'o'
    TabOrder = 0
    object Cidade: TLabel
      Left = 16
      Top = 29
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object btnVisualizar: TButton
      Left = 272
      Top = 83
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
    object btnExportar: TButton
      Left = 191
      Top = 83
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = btnExportarClick
    end
    object DBLookupCidade: TDBLookupComboBox
      Left = 16
      Top = 48
      Width = 329
      Height = 21
      KeyField = 'city_id'
      ListField = 'city'
      ListSource = dtsCidade
      TabOrder = 2
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = dmConexao.FDConexao
    SQL.Strings = (
      'SELECT CITY.CITY'
      
        'FROM CITY WHERE((CITY_ID = :CITY_ID) OR COALESCE(:CITY_ID, 0) = ' +
        '0)'
      '')
    Left = 288
    Top = 160
    ParamData = <
      item
        Name = 'CITY_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CITY=CITY')
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 192
    Top = 160
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 96
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.905277233800000000
    ReportOptions.LastChange = 44939.898152476900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = -1.889765000000000000
          Width = 721.890230000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rel'#225'torio Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Distrito')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CITY: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'CITY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CITY"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2ADDRESS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."ADDRESS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2DISTRICT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'DISTRICT'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."DISTRICT"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dtsCidade: TDataSource
    DataSet = LookUpCidades
    Left = 432
    Top = 16
  end
  object LookUpCidades: TFDTable
    IndexFieldNames = 'city_id'
    Connection = dmConexao.FDConexao
    TableName = 'sakila.city'
    Left = 432
    Top = 104
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = FDQuery2
    BCDToCurrency = False
    Left = 192
    Top = 224
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = dmConexao.FDConexao
    SQL.Strings = (
      'SELECT ADDRESS, '#10'      '
      '       DISTRICT'
      'FROM ADDRESS'
      'WHERE((CITY_ID LIKE :CITY) OR COALESCE(:CITY, '#39#39') = '#39#39')')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'CITY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
