object DMConection: TDMConection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 636
  Top = 218
  Height = 263
  Width = 359
  object scoDados: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=D:\Easy2Solutions\Gestao\Dados\piseleve.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=True')
    VendorLib = 'gds32.dll'
    Left = 32
    Top = 16
  end
end
