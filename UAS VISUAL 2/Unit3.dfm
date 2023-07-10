object Form3: TForm3
  Left = 300
  Top = 217
  Width = 907
  Height = 484
  Caption = 'TABEL ORANG TUA'
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
    Left = 19
    Top = 12
    Width = 109
    Height = 15
    Caption = 'NAMA ORANG TUA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 19
    Top = 42
    Width = 104
    Height = 15
    Caption = 'TANGGAL LAHITR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 349
    Top = 47
    Width = 31
    Height = 15
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 18
    Top = 69
    Width = 79
    Height = 15
    Caption = 'PENDIDIKAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 348
    Top = 84
    Width = 71
    Height = 15
    Caption = 'PEKERJAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 19
    Top = 101
    Width = 102
    Height = 15
    Caption = 'NIK/NOMORKTP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 21
    Top = 128
    Width = 119
    Height = 15
    Caption = 'STATUS PEKERJAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 20
    Top = 156
    Width = 49
    Height = 15
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 346
    Top = 12
    Width = 118
    Height = 15
    Caption = 'STATUS ORANG TUA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 26
    Top = 196
    Width = 75
    Height = 29
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 131
    Top = 192
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 241
    Top = 192
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 346
    Top = 192
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 451
    Top = 192
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 561
    Top = 192
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 5
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 157
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 491
    Top = 43
    Width = 169
    Height = 21
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 162
    Top = 65
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 490
    Top = 75
    Width = 169
    Height = 21
    TabOrder = 9
  end
  object dtp1: TDateTimePicker
    Left = 159
    Top = 38
    Width = 162
    Height = 21
    Date = 45067.630714120370000000
    Time = 45067.630714120370000000
    TabOrder = 10
  end
  object cbb1: TComboBox
    Left = 163
    Top = 124
    Width = 163
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'AKTIF'
      'NON AKTIF')
  end
  object cbb2: TComboBox
    Left = 494
    Top = 8
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'KANDUNG'
      'TIRI')
  end
  object edt5: TEdit
    Left = 163
    Top = 97
    Width = 158
    Height = 21
    TabOrder = 13
  end
  object edt6: TEdit
    Left = 159
    Top = 152
    Width = 167
    Height = 21
    TabOrder = 14
  end
  object dbgrd1: TDBGrid
    Left = 25
    Top = 230
    Width = 825
    Height = 191
    DataSource = ds1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_orgtua'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_orangtua'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal_lahir'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telp'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pendidikan_terakhir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_pekerjaan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pekerjaan'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nik_nomorKTP'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Alamat_orgtua'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_orgtua'
        Width = 80
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
    Top = 137
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from orang_tua')
    Params = <>
    Left = 496
    Top = 137
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 544
    Top = 132
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 591
    Top = 132
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
    ReportOptions.LastChange = 45117.824463310190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 651
    Top = 132
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
      Orientation = poLandscape
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1511.812000000000000000
        object Memo13: TfrxMemoView
          Left = 593.386210000000000000
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
            'LAPORAN DATA ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 98.267780000000000000
        Width = 1511.812000000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
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
          Left = 185.196970000000000000
          Width = 154.960730000000000000
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
            'NAMA ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Width = 102.047310000000000000
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
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 593.386210000000000000
          Width = 117.165430000000000000
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
            'PENDIDIKAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 710.551640000000000000
          Width = 154.960730000000000000
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
            'STATUS PEKERJAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 865.512370000000000000
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
            'PEKERJAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 986.457330000000000000
          Width = 109.606370000000000000
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
            'NIK/KTP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 1096.063700000000000000
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
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1201.890540000000000000
          Width = 154.960730000000000000
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
            'STATUS ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 340.157700000000000000
          Width = 151.181200000000000000
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
            'TANGGAL LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 192.756030000000000000
        Width = 1511.812000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Id_orgtua'
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
            '[frxDBDataset."Id_orgtua"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 185.196970000000000000
          Width = 154.960730000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Nama_orangtua'
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
            '[frxDBDataset."Nama_orangtua"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 593.386210000000000000
          Width = 117.165430000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Pendidikan_terakhir'
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
            '[frxDBDataset."Pendidikan_terakhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 710.551640000000000000
          Width = 154.960730000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Status_pekerjaan'
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
            '[frxDBDataset."Status_pekerjaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Telp'
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
            '[frxDBDataset."Telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 865.512370000000000000
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Pekerjaan'
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
            '[frxDBDataset."Pekerjaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 986.457330000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Nik_nomorKTP'
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
            '[frxDBDataset."Nik_nomorKTP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 1096.063700000000000000
          Width = 105.826840000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Alamat_orgtua'
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
            '[frxDBDataset."Alamat_orgtua"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 1201.890540000000000000
          Width = 154.960730000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Status_orgtua'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."Status_orgtua"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 340.157700000000000000
          Width = 151.181200000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'Tanggal_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."Tanggal_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 257.008040000000000000
        Width = 1511.812000000000000000
      end
    end
  end
end
