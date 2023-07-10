object Form4: TForm4
  Left = 406
  Top = 254
  Width = 794
  Height = 459
  Caption = 'TABEL KELAS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 9
    Top = 12
    Width = 78
    Height = 15
    Caption = 'NAMA KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 10
    Top = 37
    Width = 55
    Height = 15
    Caption = 'JURUSAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 9
    Top = 116
    Width = 707
    Height = 270
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_kelas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_kelas'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jurusan'
        Width = 100
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 21
    Top = 76
    Width = 75
    Height = 29
    Caption = 'Baru'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 126
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 241
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 356
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 466
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 581
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 6
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt2: TEdit
    Left = 101
    Top = 33
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\UAS VISUAL 2\libmysql.dll'
    Left = 462
    Top = 7
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kelas'
      ''
      '')
    Params = <>
    Left = 501
    Top = 7
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 539
    Top = 7
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 571
    Top = 7
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45097.373740509300000000
    ReportOptions.LastChange = 45117.826395439810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 621
    Top = 7
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 336.378170000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 34.015770000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 34.015770000000000000
          Width = 381.732530000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JURUASAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 1084.725110000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 34.015770000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'id_kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."id_kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 34.015770000000000000
          Width = 381.732530000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'Nama_kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."Nama_kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'Jurusan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."Jurusan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
