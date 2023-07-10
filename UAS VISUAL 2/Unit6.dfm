object Form6: TForm6
  Left = 320
  Top = 194
  Width = 805
  Height = 548
  Caption = 'TABEL USER'
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
    Left = 34
    Top = 12
    Width = 23
    Height = 15
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 33
    Top = 43
    Width = 36
    Height = 15
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 287
    Top = 8
    Width = 48
    Height = 16
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 82
    Width = 38
    Height = 15
    Caption = 'LEVEL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 81
    Top = 121
    Width = 75
    Height = 29
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 166
    Top = 117
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 256
    Top = 117
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 346
    Top = 117
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 431
    Top = 117
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 521
    Top = 117
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 5
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 97
    Top = 8
    Width = 169
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 101
    Top = 43
    Width = 169
    Height = 21
    TabOrder = 7
  end
  object cbb1: TComboBox
    Left = 97
    Top = 78
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'ADMIN'
      'MEMBER')
  end
  object cbb2: TComboBox
    Left = 355
    Top = 3
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'GURU'
      'MURID')
  end
  object dbgrd1: TDBGrid
    Left = 35
    Top = 155
    Width = 661
    Height = 317
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_user'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nik'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Level'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Visible = True
      end>
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
    Left = 442
    Top = 52
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user'
      '')
    Params = <>
    Left = 406
    Top = 52
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 474
    Top = 52
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 506
    Top = 52
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
    ReportOptions.LastChange = 45117.831140254600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 546
    Top = 52
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559060000000000000
          Width = 336.378170000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA USER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 49.133890000000000000
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
          Left = 49.133890000000000000
          Width = 124.724490000000000000
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
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 173.858380000000000000
          Width = 196.535560000000000000
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
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 370.393940000000000000
          Width = 181.417440000000000000
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
            'LEVEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 166.299320000000000000
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
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 90.708720000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 45.354360000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Id_user'
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
            '[frxDBDataset."Id_user"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 45.354360000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Nik'
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
            '[frxDBDataset."Nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 370.393940000000000000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Level'
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
            '[frxDBDataset."Level"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 551.811380000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Status'
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
            '[frxDBDataset."Status"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Width = 196.535560000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Nama'
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
            '[frxDBDataset."Nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
