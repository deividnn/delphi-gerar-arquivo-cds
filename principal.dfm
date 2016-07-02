object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 503
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 150
    Width = 40
    Height = 13
    Caption = 'Servidor'
  end
  object Label2: TLabel
    Left = 135
    Top = 150
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object Label3: TLabel
    Left = 357
    Top = 150
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 262
    Top = 150
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 208
    Width = 723
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 575
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 72
    Width = 723
    Height = 49
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 656
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Exportar CDS'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 453
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 169
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'localhost'
  end
  object Edit2: TEdit
    Left = 135
    Top = 169
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'bd'
  end
  object Edit3: TEdit
    Left = 357
    Top = 169
    Width = 90
    Height = 21
    TabOrder = 7
    Text = '6291'
  end
  object Edit4: TEdit
    Left = 262
    Top = 169
    Width = 89
    Height = 21
    TabOrder = 8
    Text = 'deivid'
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Devart MySQL Direct'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost'
      'DataBase=bd'
      'DriverName=DevartMySQLDirect'
      'User_Name=deivid'
      'Password=6291'
      'FetchAll=True'
      'EnableBoolean=False'
      'IPVersion=IPv4')
    Left = 32
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 120
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 200
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 288
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 384
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    FileName = 'arquivo.cds'
    Filter = 'arquivo cds|cds'
    Left = 464
    Top = 16
  end
end
