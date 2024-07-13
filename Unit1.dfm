object Form1: TForm1
  Left = 190
  Top = 163
  Width = 870
  Height = 526
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 8
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 56
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 56
    Top = 96
    Width = 38
    Height = 13
    Caption = 'TELPON'
  end
  object lbl4: TLabel
    Left = 56
    Top = 136
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl5: TLabel
    Left = 56
    Top = 176
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl6: TLabel
    Left = 56
    Top = 216
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object lbl7: TLabel
    Left = 312
    Top = 216
    Width = 57
    Height = 13
    Caption = 'DISKON    : '
  end
  object lbl8: TLabel
    Left = 392
    Top = 216
    Width = 71
    Height = 13
    Caption = 'Terisi Otomatis'
  end
  object edt1: TEdit
    Left = 152
    Top = 8
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 48
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btn1: TButton
    Left = 152
    Top = 280
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Enabled = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 280
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Enabled = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 328
    Top = 280
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Enabled = False
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 416
    Top = 280
    Width = 75
    Height = 25
    Caption = 'BATAL'
    Enabled = False
    TabOrder = 5
    OnClick = btn4Click
  end
  object DBGrid1: TDBGrid
    Left = 152
    Top = 320
    Width = 553
    Height = 120
    DataSource = ds1
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btn6: TButton
    Left = 152
    Top = 450
    Width = 161
    Height = 25
    Caption = 'Report Priview'
    TabOrder = 7
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 328
    Top = 450
    Width = 161
    Height = 25
    Caption = 'Report Print'
    TabOrder = 8
    OnClick = btn7Click
  end
  object edt3: TEdit
    Left = 152
    Top = 88
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 152
    Top = 128
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 152
    Top = 168
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object cbb1: TComboBox
    Left = 152
    Top = 208
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 12
    Text = 'pilih'
    OnChange = cbb1Change
    Items.Strings = (
      'pilih'
      'yes'
      'no')
  end
  object btn5: TButton
    Left = 152
    Top = 240
    Width = 337
    Height = 25
    Caption = 'BARU'
    TabOrder = 13
    OnClick = btn5Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 0
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\fiture_satuan\li' +
      'bmysql.dll'
    Left = 512
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM kustomer')
    Params = <>
    Left = 512
    Top = 64
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 512
    Top = 120
  end
end
