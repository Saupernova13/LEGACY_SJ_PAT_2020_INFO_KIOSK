unit Unit1;

interface

uses
  SysUtils, Classes, DB, ADODB, FMTBcd, SqlExpr;

type
  TDBModuleStuff = class(TDataModule)
    RestaurantConnection: TADOConnection;
    RestaurantTable: TADOTable;
    RestaurantQuery: TADOQuery;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBModuleStuff: TDBModuleStuff;

implementation

{$R *.dfm}

const
connectionstring1='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='; //+GetCurrentDir+'\Reestaurant Info.mdb;';
connectionstring2='Mode=ReadWrite;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;';
connectionstring3='Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;';
connectionstring4='Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

procedure TDBModuleStuff.DataModuleCreate(Sender: TObject);
begin
RestaurantConnection.ConnectionString:=connectionstring1+GetCurrentDir+'\Reestaurant Info.mdb;'+connectionstring2+connectionstring3+connectionstring4;
RestaurantConnection.LoginPrompt:=False;
RestaurantConnection.Connected:=True;
RestaurantTable.Active:=True;
end;

end.
