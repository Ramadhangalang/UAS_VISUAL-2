unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ComCtrls;

type
  TForm2 = class(TForm)
    l2: TLabel;
    l1: TLabel;
    l3: TLabel;
    l6: TLabel;
    l4: TLabel;
    l5: TLabel;
    l7: TLabel;
    l10: TLabel;
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
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
     procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id:string;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
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
cbb2.Enabled:= True;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('NAMA WALI KELAS BELUM DIISI DENGAN BENAR');
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
    ShowMessage('WALI KELAS BELUM SESUAI');
    end else
    if cbb2.Text='' then
    begin
     ShowMessage('JENIS KELAMIN BELUM DIISI DENGAN BENAR');
    end else
  if Form2.zqry1.Locate('Telp',edt2.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+cbb2.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from wali_kelas');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text ='')or(edt3.Text= '')or(cbb1.Text='')or(edt4.Text ='')or(cbb2.Text='') then
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
zqry1.SQL.Add('Update wali_kelas set Nama_wali_kelas= "'+edt1.Text+'",Telp="'+edt2.Text+'",Pendidikan="'+edt3.Text+'",Wali_kelas="'+edt4.Text+'" where id_wali="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;

posisiawal;
end;
end;


procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from wali_kelas where id_wali="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm2.FormShow(Sender: TObject);
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
e_2.Enabled:= false;
e_3.Enabled:= false;
cbb1.Enabled:= false;
e_4.Enabled:= false;
cbb2.Enabled:= false;
end;

procedure TForm2.posisiawal;
begin
 bersih;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b5.Enabled:= False;
e_1.Enabled:= false;
dtp1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
cbb1.Enabled:= false;
e_4.Enabled:= false;
cbb2.Enabled:= false;
end;
procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
e_1.Text:= zqry1.Fields[1].AsString;
e_2.Text:= zqry1.Fields[3].AsString;
e_3.Text:= zqry1.Fields[4].AsString;
cbb1.Text:= zqry1.Fields[5].AsString;
e_4.Text:= zqry1.Fields[6].AsString;
cbb2.Text:= zqry1.Fields[7].AsString;

e_1.Enabled:= True;
dtp1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
cbb1.Enabled:= True;
e_4.Enabled:= True;
cbb2.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;



procedure TForm2.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end;



