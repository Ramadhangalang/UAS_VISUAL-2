object Form8: TForm8
  Left = 333
  Top = 210
  Width = 800
  Height = 508
  Caption = 'TABEL CATATAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 12
    Top = 42
    Width = 66
    Height = 15
    Caption = 'SEMESTER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 16
    Top = 12
    Width = 58
    Height = 15
    Caption = 'TANGGAL '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 18
    Top = 69
    Width = 55
    Height = 15
    Caption = 'ID SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 258
    Top = 41
    Width = 48
    Height = 15
    Caption = 'ID POIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 249
    Top = 11
    Width = 87
    Height = 15
    Caption = 'ID ORANG TUA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 18
    Top = 98
    Width = 90
    Height = 15
    Caption = 'ID WALI KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 255
    Top = 70
    Width = 84
    Height = 15
    Caption = 'KETERANGAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 251
    Top = 95
    Width = 75
    Height = 30
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 326
    Top = 92
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 401
    Top = 92
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 476
    Top = 92
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 551
    Top = 92
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 626
    Top = 92
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 5
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 114
    Top = 38
    Width = 127
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 116
    Top = 65
    Width = 125
    Height = 21
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 114
    Top = 94
    Width = 132
    Height = 21
    TabOrder = 8
  end
  object dtp1: TDateTimePicker
    Left = 116
    Top = 8
    Width = 125
    Height = 21
    Date = 45067.630714120370000000
    Time = 45067.630714120370000000
    TabOrder = 9
  end
  object dbgrd1: TDBGrid
    Left = 20
    Top = 135
    Width = 721
    Height = 271
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
        FieldName = 'Id_catatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Semester'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_siswa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_wali kelas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_orgtua'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id_poin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Width = 65
        Visible = True
      end>
  end
  object edt4: TEdit
    Left = 357
    Top = 7
    Width = 119
    Height = 21
    TabOrder = 11
  end
  object edt5: TEdit
    Left = 354
    Top = 37
    Width = 122
    Height = 21
    TabOrder = 12
  end
  object edt6: TEdit
    Left = 355
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 13
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
    Left = 552
    Top = 22
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from catatan'
      '')
    Params = <>
    Left = 506
    Top = 17
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 594
    Top = 17
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 631
    Top = 17
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
    ReportOptions.LastChange = 45117.834952592600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 671
    Top = 17
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
      PaperWidth = 250.000000000000000000
      PaperHeight = 354.000000000000000000
      PaperSize = 257
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 869.291900000000000000
        object Memo13: TfrxMemoView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
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
            'LAPORAN DATA CATATAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 102.047310000000000000
        Width = 869.291900000000000000
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
          Width = 136.063080000000000000
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
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 128.504020000000000000
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
            'SEMESTER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 298.582870000000000000
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
            'ID SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 404.409710000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID WALI KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 521.575140000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 642.520100000000000000
          Width = 79.370130000000000000
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
            'ID POIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 721.890230000000000000
          Width = 147.401670000000000000
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
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 869.291900000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 34.015770000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Id_catatan'
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
            '[frxDBDataset."Id_catatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 34.015770000000000000
          Width = 136.063080000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Tanggal'
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
            '[frxDBDataset."Tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 298.582870000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Id_siswa'
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
            '[frxDBDataset."Id_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 404.409710000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Id_wali kelas'
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
            '[frxDBDataset."Id_wali kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 170.078850000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Semester'
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
            '[frxDBDataset."Semester"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 521.575140000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Id_orgtua'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."Id_orgtua"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 642.520100000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Id_poin'
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
            '[frxDBDataset."Id_poin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 721.890230000000000000
          Width = 147.401670000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'keterangan'
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
            '[frxDBDataset."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 253.228510000000000000
        Width = 869.291900000000000000
      end
    end
  end
end
