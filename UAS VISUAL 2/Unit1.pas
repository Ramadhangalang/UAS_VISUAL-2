unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls, Grids,
  DBGrids;

type
  TForm1 = class(TForm)
    l2: TLabel;
    l1: TLabel;
    l3: TLabel;
    l6: TLabel;
    l4: TLabel;
    l5: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    l10: TLabel;
    l11: TLabel;
    l12: TLabel;
    l13: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    dtp1: TDateTimePicker;
    cbb1: TComboBox;
    edt5: TEdit;
    cbb2: TComboBox;
    edt6: TEdit;
    edt8: TEdit;
    edt7: TEdit;
    cbb3: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   id:string;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
edt5.Enabled:= True;
cbb2.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
cbb3.Enabled:= True
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
 if edt1.Text='' then
  begin
    ShowMessage('NIS BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text=''then
    begin
     ShowMessage('NISN BELUM DIISI DENGAN BENAR');
    end else
    if edt3.text=''then
    begin
     ShowMessage('NAMA SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edt4.text=''then
    begin
    ShowMessage('NIK BELUM SESUAI');
    end else
    if cbb1.Text='' then
    begin
     ShowMessage('JENIS KELAMIN BELUM DIISI DENGAN BENAR');
    end else
    if edt5.text=''then
    begin
     ShowMessage('INPUTAN TINGKAT KELAS  BELUM SESUAI');
    end else
     if (cbb2.Text='')or(cbb2.Text='---PILIH JURUSAN---') then
    begin
     ShowMessage('JURUSAN BELUM DIISI DENGAN BENAR');
    end else
    if edt6.Text='' then
     begin
     ShowMessage(' NAMA WALI KELAS BELUM SESUAI');
    end else
     if edt7.text=''then
    begin
     ShowMessage('INPUTAN ALAMAT BELUM SESUAI');
    end else
    if (edt8.Text='-') then
      begin
     ShowMessage(' NO TELP BELUM SESUAI');
    end else
     if cbb3.Text='' then
    begin
     ShowMessage('STATUS BELUM DIISI DENGAN BENAR');
    end else
  if Form1.zqry1.Locate('Nik',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else

  zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt5.Text+'","'+cbb2.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+cbb3.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from siswa');
 zqry1.Open;
 ShowMessage('DATA BARHASIL DISIMPAN!');
 posisiawal;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or(cbb1.Text='')or(edt5.Text ='')or(cbb2.Text='')or(edt6.Text='')or(edt7.Text='')or(edt8.Text='')or(cbb3.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update siswa set Nis= "'+edt1.Text+'",Nisn="'+edt2.Text+'",Nama_Siswa="'+edt3.Text+'",Nik="'+edt4.Text+'" where Id_Siswa="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from siswa where Id_Siswa="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm1.btn5Click(Sender: TObject);

begin
posisiawal;
end;

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
btn6.Enabled:=false;
edt1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
edt4.Enabled:= false;
dtp1.Enabled:= false;
cbb1.Enabled:= false;
edt5.Enabled:= false;
cbb2.Enabled:= false;
edt6.Enabled:= false;
edt7.Enabled:= false;
edt8.Enabled:= false;
cbb3.Enabled:= false;
end;

procedure TForm1.posisiawal;
begin
 bersih;
btn1.Enabled:= True;
btn2 .Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
edt4.Enabled:= false;
dtp1.Enabled:= false;
cbb1.Enabled:= false;
edt5.Enabled:= false;
cbb2.Enabled:= false;
edt6.Enabled:= false;
edt7.Enabled:= false;
edt8.Enabled:= false;
cbb3.Enabled:= false;
end;
procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
Id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
cbb1.Text:= zqry1.Fields[6].AsString;
edt5.Text:= zqry1.Fields[7].AsString;
cbb2.Text:= zqry1.Fields[8].AsString;
edt6.Text:= zqry1.Fields[9].AsString;
edt7.Text:= zqry1.Fields[10].AsString;
edt8.Text:= zqry1.Fields[11].AsString;
cbb3.Text:= zqry1.Fields[12].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
edt5.Enabled:= True;
cbb2.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
cbb3.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;


procedure TForm1.btn6Click(Sender: TObject);
begin
 frxReport1.ShowReport();
end;

end.
