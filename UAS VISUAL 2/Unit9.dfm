object Form9: TForm9
  Left = 259
  Top = 172
  Width = 884
  Height = 461
  Caption = 'MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 90
    Top = 55
    object SEKOLAH1: TMenuItem
      Caption = 'SEKOLAH'
      object ABELSISWA1: TMenuItem
        Caption = 'TABEL SISWA'
        OnClick = ABELSISWA1Click
      end
      object ABELWALIKELAS1: TMenuItem
        Caption = 'TABEL WALI KELAS'
        OnClick = ABELWALIKELAS1Click
      end
      object ABELORANGTUA1: TMenuItem
        Caption = 'TABEL ORANG TUA'
        OnClick = ABELORANGTUA1Click
      end
      object ABELKEAS1: TMenuItem
        Caption = 'TABEL KELAS'
        OnClick = ABELKEAS1Click
      end
      object ABELOINT1: TMenuItem
        Caption = 'TABEL POINT'
        OnClick = ABELOINT1Click
      end
      object ABELUSER1: TMenuItem
        Caption = 'TABEL USER'
        OnClick = ABELUSER1Click
      end
      object ABELHUBUNGAN1: TMenuItem
        Caption = 'TABEL HUBUNGAN'
        OnClick = ABELHUBUNGAN1Click
      end
      object ABELCATATAN1: TMenuItem
        Caption = 'TABEL CATATAN'
        OnClick = ABELCATATAN1Click
      end
    end
  end
end
