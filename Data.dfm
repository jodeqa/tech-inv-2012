object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 619
  Width = 641
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object ADOQueryLogin: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 80
  end
  object DataSourceFilials: TDataSource
    DataSet = ADOQueryFilials
    Left = 40
    Top = 160
  end
  object ADOQueryFilials: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 40
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 552
  end
  object DataSourceUsers: TDataSource
    DataSet = ADOQueryUsers
    Left = 120
    Top = 160
  end
  object ADOQueryUsers: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 24
    Top = 504
  end
  object ADOQueryTowns: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 200
    Top = 208
  end
  object DataSourceTowns: TDataSource
    DataSet = ADOQueryTowns
    Left = 200
    Top = 160
  end
  object DataSourcePrompl: TDataSource
    DataSet = ADOQueryPrompl
    Left = 288
    Top = 160
  end
  object ADOQueryPrompl: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 288
    Top = 208
  end
  object DataSourceBuild: TDataSource
    DataSet = ADOQueryBuild
    Left = 368
    Top = 160
  end
  object ADOQueryBuild: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 368
    Top = 208
  end
  object ADOQueryDynamic: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 552
  end
  object DataSourceServ: TDataSource
    DataSet = ADOQueryServ
    Left = 448
    Top = 160
  end
  object ADOQueryServ: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 448
    Top = 208
  end
  object DataSourcePlaces: TDataSource
    DataSet = ADOQueryPlaces
    Left = 528
    Top = 160
  end
  object ADOQueryPlaces: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 528
    Top = 208
  end
  object DataSourceTypes: TDataSource
    DataSet = ADOQueryTypes
    Left = 40
    Top = 272
  end
  object ADOQueryTypes: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 40
    Top = 320
  end
  object DataSourceMark: TDataSource
    DataSet = ADOQueryMark
    Left = 120
    Top = 272
  end
  object ADOQueryMark: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 320
  end
end
