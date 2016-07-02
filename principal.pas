unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr,
  Vcl.StdCtrls, DbxDevartMySql;

type
  TForm4 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SaveDialog1: TSaveDialog;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  SQLDataSet1.Close;
  SQLDataSet1.CommandText := Memo1.Lines.Text;
  SQLDataSet1.Open;
  ClientDataSet1.Open;
  DataSetProvider1.DataSet.Refresh;
  DataSource1.DataSet.Refresh;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if SaveDialog1.Execute Then
  begin
    ClientDataSet1.SaveToFile(SaveDialog1.FileName);
    ShowMessage('arquivo salvo');
  end;

end;

procedure TForm4.Button3Click(Sender: TObject);
begin

  SQLConnection1.Close;
  SQLConnection1.Params.Add('HostName=' + Edit1.Text);
  SQLConnection1.Params.Add('DataBase=' + Edit2.Text);
  SQLConnection1.Params.Add('User_Name=' + Edit4.Text);
  SQLConnection1.Params.Add('Password=' + Edit3.Text);
  SQLConnection1.Open;
  ShowMessage('conectado');
  Button1.Enabled := true;
  Button2.Enabled := true;

end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SQLConnection1.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
end;

end.
