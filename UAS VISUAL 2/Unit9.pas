unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm9 = class(TForm)
    MainMenu1: TMainMenu;
    SEKOLAH1: TMenuItem;
    ABELSISWA1: TMenuItem;
    ABELWALIKELAS1: TMenuItem;
    ABELORANGTUA1: TMenuItem;
    ABELKEAS1: TMenuItem;
    ABELOINT1: TMenuItem;
    ABELUSER1: TMenuItem;
    ABELHUBUNGAN1: TMenuItem;
    ABELCATATAN1: TMenuItem;
    procedure ABELSISWA1Click(Sender: TObject);
    procedure ABELWALIKELAS1Click(Sender: TObject);
    procedure ABELORANGTUA1Click(Sender: TObject);
    procedure ABELKEAS1Click(Sender: TObject);
    procedure ABELOINT1Click(Sender: TObject);
    procedure ABELUSER1Click(Sender: TObject);
    procedure ABELHUBUNGAN1Click(Sender: TObject);
    procedure ABELCATATAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8 ;
{$R *.dfm}

procedure TForm9.ABELSISWA1Click(Sender: TObject);
begin
  Form1.show;
end;

procedure TForm9.ABELWALIKELAS1Click(Sender: TObject);
begin
   Form2.show;
end;

procedure TForm9.ABELORANGTUA1Click(Sender: TObject);
begin
   Form3.show;
end;

procedure TForm9.ABELKEAS1Click(Sender: TObject);
begin
   Form4.show;
end;

procedure TForm9.ABELOINT1Click(Sender: TObject);
begin
    Form5.show;
end;

procedure TForm9.ABELUSER1Click(Sender: TObject);
begin
    Form6.show;
end;

procedure TForm9.ABELHUBUNGAN1Click(Sender: TObject);
begin
   Form7.show;
end;

procedure TForm9.ABELCATATAN1Click(Sender: TObject);
begin
    Form8.show;
end;

end.
