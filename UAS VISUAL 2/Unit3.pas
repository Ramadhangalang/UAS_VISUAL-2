unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ComCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl2: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
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
    cbb2: TComboBox;
    edt5: TEdit;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= True;

edt1.Enabled:= True;
dtp1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
cbb1.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('NAMA ORANG TUA BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text=''then
    begin
     ShowMessage('TELP BELUM DIISI DENGAN BENAR');
    end else
    if edt3.text=''then
    begin
     ShowMessage('PENDIDKAM BELUM DIISI DENGAN BENAR');
    end else
    if cbb1.Text='' then
    begin
     ShowMessage('STATUS BELUM DIISI DENGAN BENAR');
    end else
    if edt4.text=''then
    begin
    ShowMessage('PEKERJAAN BELUM SESUAI');
    end else
    if edt5.text=''then
    begin
    ShowMessage('NIK ATAU NOMOR KTP BELUM SESUAI');
    end else
    if edt6.text=''then
    begin
    ShowMessage('ALAMAT BELUM SESUAI');
    end else
    if cbb2.Text='' then
    begin
     ShowMessage('STATUS ORANG TUS BELUM DIISI DENGAN BENAR');
    end else
  if Form3.zqry1.Locate('Telp',edt2.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into orang_tua values(null,"'+edt1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb2.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from orang_tua');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text ='')or(edt3.Text= '')or(cbb1.Text='')or(edt4.Text ='')or(edt5.Text ='')or(edt6.Text ='')or(cbb2.Text='') then
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
zqry1.SQL.Add('Update orang_tua set Nama_orangtua= "'+edt1.Text+'",Telp="'+edt2.Text+'",Pendidikan_terakhir="'+edt3.Text+'",Pekerjaan="'+edt4.Text+'" where Id_orgtua="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from orang_tua');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from wali_kelas where Id_orgtua="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from orang_tua');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
btn6.Enabled:=false;
edt1.Enabled:= false;
dtp1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
cbb1.Enabled:= false;
edt4.Enabled:= false;
edt5.Enabled:= false;
edt6.Enabled:= false;
cbb2.Enabled:= false;
end;

procedure TForm3.posisiawal;
begin
 bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= false;
dtp1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
cbb1.Enabled:= false;
edt4.Enabled:= false;
edt5.Enabled:= false;
edt6.Enabled:= false;
cbb2.Enabled:= false;
end;
procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[3].AsString;
edt3.Text:= zqry1.Fields[4].AsString;
cbb1.Text:= zqry1.Fields[5].AsString;
edt4.Text:= zqry1.Fields[6].AsString;
edt5.Text:= zqry1.Fields[7].AsString;
edt6.Text:= zqry1.Fields[8].AsString;
cbb2.Text:= zqry1.Fields[9].AsString;


edt1.Enabled:= True;
dtp1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
cbb1.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
cbb2.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

end.
