object DBModuleStuff: TDBModuleStuff
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 328
  Width = 429
  object RestaurantConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Sauraav Ja' +
      'yrajh\Documents\RAD Studio\2020 IT PAT\Reestaurant Info.mdb;Mode' +
      '=ReadWrite;Persist Security Info=False;Jet OLEDB:System database' +
      '="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Je' +
      't OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLED' +
      'B:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1' +
      ';Jet OLEDB:New Database Password="";Jet OLEDB:Create System Data' +
      'base=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy' +
      ' Locale on Compact=False;Jet OLEDB:Compact Without Replica Repai' +
      'r=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object RestaurantTable: TADOTable
    Connection = RestaurantConnection
    CursorType = ctStatic
    MasterSource = DataSource1
    TableName = 'BrunosBurgers'
    Left = 24
    Top = 160
  end
  object RestaurantQuery: TADOQuery
    Connection = RestaurantConnection
    Parameters = <>
    Left = 24
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = RestaurantQuery
    Left = 24
    Top = 96
  end
end
