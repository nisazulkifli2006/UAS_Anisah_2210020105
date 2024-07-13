unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    DBGrid1: TDBGrid;
    btn6: TButton;
    btn7: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    cbb1: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    btn5: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; 
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Text:='';
edt2.Text:='';
edt3.Text:='';
edt4.Text:='';
edt5.Text:='';
edt1.ReadOnly:=True;
edt2.ReadOnly:=True;
edt3.ReadOnly:=True;
edt4.ReadOnly:=True;
edt5.ReadOnly:=True;
cbb1.Enabled:=False;
cbb1.Text:='pilih';
lbl8.Caption:='Terisi Otomatis';
btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
edt1.SetFocus;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
                 
 if edt1.Text ='' then
begin
  Application.MessageBox('silahkan isi NIK','perhatian',MB_OK)   ;
  edt1.SetFocus;
end else  if edt2.Text ='' then
begin
  Application.MessageBox('silahkan isi Nama','perhatian',MB_OK)   ; 
  edt2.SetFocus;
end else  if edt3.Text ='' then
begin
  Application.MessageBox('silahkan isi No Telpon','perhatian',MB_OK)   ;
  edt3.SetFocus;
end else  if edt4.Text ='' then
begin
  Application.MessageBox('silahkan isi Email','perhatian',MB_OK)   ;  
  edt4.SetFocus;
end else  if edt5.Text ='' then
begin
  Application.MessageBox('silahkan isi Alamat','perhatian',MB_OK)   ;
  edt5.SetFocus;
end else if cbb1.Text ='pilih' then
begin
  Application.MessageBox('silahkan pilih member','perhatian',MB_OK)   ;   
  cbb1.SetFocus;
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cbb1.Text+'")');


zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kustomer');
zqry1.Open;
ShowMessage('Data Berhasil disimpan !');

end

end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
btn1.Enabled:=false;
btn2.Enabled:=true;
btn3.Enabled:=true;
btn4.Enabled:=true;  
btn5.Enabled:=false;     
cbb1.Enabled:=True;

edt1.ReadOnly:=False;
edt2.ReadOnly:=False;
edt3.ReadOnly:=False;
edt4.ReadOnly:=False;
edt5.ReadOnly:=False;

edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
cbb1.Text:= zqry1.Fields[6].AsString;
a:= zqry1.Fields[0].AsString;

if cbb1.Text = 'yes' then
begin
  lbl8.Caption:='Diskon 10%';
end else
      
begin
  lbl8.Caption:='Diskon 5%';
end

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//edt1.Text:='';
//edt2.Text:='';
//edt3.Text:='';
//edt4.Text:='';
edt5.Text:='';
//edt1.Enabled:=false;
//edt2.Enabled:=false;
//edt3.Enabled:=false;
//edt4.Enabled:=false;
//edt5.Enabled:=false;
//btn1.Enabled:=false;
//btn2.Enabled:=false;
//btn3.Enabled:=false;
//btn4.Enabled:=false;
//edt3.Text:='';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin       
with zqry1 do
begin
                 
 if edt1.Text ='' then
begin
  Application.MessageBox('silahkan isi NIK','perhatian',MB_OK)   ;
  edt1.SetFocus;
end else  if edt2.Text ='' then
begin
  Application.MessageBox('silahkan isi Nama','perhatian',MB_OK)   ; 
  edt2.SetFocus;
end else  if edt3.Text ='' then
begin
  Application.MessageBox('silahkan isi No Telpon','perhatian',MB_OK)   ;
  edt3.SetFocus;
end else  if edt4.Text ='' then
begin
  Application.MessageBox('silahkan isi Email','perhatian',MB_OK)   ;  
  edt4.SetFocus;
end else  if edt5.Text ='' then
begin
  Application.MessageBox('silahkan isi Alamat','perhatian',MB_OK)   ;
  edt5.SetFocus;
end else if cbb1.Text ='pilih' then
begin
  Application.MessageBox('silahkan pilih member','perhatian',MB_OK)   ;   
  cbb1.SetFocus;
end else
begin
  SQL.Clear;
  SQL.Add('update kustomer set nik="'+edt1.Text+'",nama="'+edt2.Text+'",telp="'+edt3.Text+'",email="'+edt4.Text+'",alamat="'+edt5.Text+'",member="'+cbb1.Text+'" where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
ShowMessage('Data Berhasil diupdate !');
end
end

end;

procedure TForm1.btn3Click(Sender: TObject);
begin

with zqry1 do
begin
  SQL.Clear;
  SQL.Add('delete from kustomer where id= "'+a+'"');
  ExecSQL ;
                 
edt1.Text:='';
edt2.Text:='';
edt3.Text:='';
edt4.Text:='';
edt5.Text:='';
edt1.ReadOnly:=True;
edt2.ReadOnly:=True;
edt3.ReadOnly:=True;
edt4.ReadOnly:=True;
edt5.ReadOnly:=True;
cbb1.Enabled:=False;
cbb1.Text:='pilih';
lbl8.Caption:='Terisi Otomatis';
btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
edt1.SetFocus;

    SQL.Clear;
    SQL.Add('select * from kustomer');
  Open;
ShowMessage('Data Berhasil dihapus !');

end;

end;

procedure TForm1.btn6Click(Sender: TObject);
begin
QuickReport2.Preview;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin

QuickReport2.Print;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'yes' then
begin
  lbl8.Caption:='Diskon 10%';
end else if  cbb1.Text = 'no'    then
begin
  lbl8.Caption:='Diskon 5%';
end else if  cbb1.Text = 'pilih'    then
begin
  lbl8.Caption:='Terisi Otomatis';
end else
begin
  lbl8.Caption:='Terisi Otomatis';
end
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.SetFocus;
cbb1.Text:='pilih';
lbl8.Caption:='Terisi Otomatis';
edt1.ReadOnly:=False;
edt2.ReadOnly:=False;
edt3.ReadOnly:=False;
edt4.ReadOnly:=False;
edt5.ReadOnly:=False;
cbb1.Enabled:=True;
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=True;
end;

end.
