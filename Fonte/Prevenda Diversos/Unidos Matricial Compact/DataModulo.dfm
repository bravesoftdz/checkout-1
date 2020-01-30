object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 434
  Top = 168
  Height = 150
  Width = 215
  object DB: TDatabase
    AliasName = 'UnitGestao'
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 21
    Top = 9
  end
end
