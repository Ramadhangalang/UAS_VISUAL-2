unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls,
  StdCtrls;

type
  TForm8 = class(TForm)
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    dtp1: TDateTimePicker;
    dbgrd1: TDBGrid;
    edt4: TEdit;
    edt5: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    lbl7: TLabel;
    edt6: TEdit;
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
  Form8: TForm8;
  id:string;
implementation

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= True;

dtp1.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('SEMESTER BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text=''then
    begin
     ShowMessage('ID SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edt3.text=''then
    begin
     ShowMessage('ID WALI KELAS BELUM DIISI DENGAN BENAR');
    end else
    if edt4.text=''then
    begin
    ShowMessage('ID WALI KELAS BELUM SESUAI');
    end else
    if edt4.Text='' then
    begin
     ShowMessage('ID POIN BELUM DIISI DENGAN BENAR');
    end else
  if Form8.zqry1.Locate('Semester',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into catatan values(null,"'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from catatan');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text ='')or(edt3.Text= '')or(edt4.Text ='')or(edt5.Text='') then
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
zqry1.SQL.Add('Update wali_kelas set Semester= "'+edt1.Text+'",Id_siswa="'+edt2.Text+'",Id_walikelas="'+edt3.Text+'",Id_orgtua="'+edt4.Text+'",Id_poin="'+edt5.Text+'" where Id_catatan="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from catatan');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from catatan where Id_catatan="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from catatan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
btn6.Enabled:=false;
dtp1.Enabled:= false;
edt1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
edt4.Enabled:= false;
edt5.Enabled:= false;
edt6.Enabled:= false;
end;

procedure TForm8.posisiawal;
begin
 bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
dtp1.Enabled:= false;
edt1.Enabled:= false;
edt2.Enabled:= false;
edt3.Enabled:= false;
edt4.Enabled:= false;
edt5.Enabled:= false;
edt6.Enabled:= false;
end;
procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[2].AsString;
edt2.Text:= zqry1.Fields[3].AsString;
edt3.Text:= zqry1.Fields[4].AsString;
edt4.Text:= zqry1.Fields[5].AsString;
edt5.Text:= zqry1.Fields[6].AsString;
edt6.Text:= zqry1.Fields[7].AsString;

dtp1.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

end.
