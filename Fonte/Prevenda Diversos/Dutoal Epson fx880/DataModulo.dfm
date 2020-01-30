object DM: TDM
  OldCreateOrder = False
  Left = 694
  Top = 250
  Height = 150
  Width = 215
  object DB: TDatabase
    AliasName = 'UnitGestao'
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USERNAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 40
    Top = 24
  end
end
