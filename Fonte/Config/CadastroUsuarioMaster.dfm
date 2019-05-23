object FormCadastroUsuarioMaster: TFormCadastroUsuarioMaster
  Left = 402
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Usu'#225'rio Master'
  ClientHeight = 236
  ClientWidth = 261
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 2
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 3
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 158
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Senha'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 3
    Top = 77
    Width = 132
    Height = 13
    Caption = 'Us'#225'rios Master Cadastrados'
  end
  object DBEdit1: TDBEdit
    Left = 1
    Top = 16
    Width = 80
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'USUAICOD'
    DataSource = DSSQLUsuario
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 1
    Top = 53
    Width = 151
    Height = 21
    CharCase = ecUpperCase
    DataField = 'USUAA60LOGIN'
    DataSource = DSSQLUsuario
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 156
    Top = 53
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    DataField = 'USUAA5SENHA'
    DataSource = DSSQLUsuario
    MaxLength = 5
    PasswordChar = '*'
    TabOrder = 2
  end
  object BtnOK: TBitBtn
    Left = 52
    Top = 206
    Width = 133
    Height = 29
    Caption = '&OK'
    TabOrder = 3
    OnClick = BtnOKClick
    Kind = bkOK
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 92
    Width = 256
    Height = 109
    Color = clWhite
    DataSource = DSSQLUsuario
    FixedColor = 10053171
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'USUAICOD'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUAA60LOGIN'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUACUSERMASTER'
        Width = 44
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 87
    Top = 12
    Width = 148
    Height = 25
    DataSource = DSSQLUsuario
    VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
    Flat = True
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      'Novo '
      'Excluir'
      'Alterar'
      'Gravar'
      'Cancelar'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object SQLUsuario: TRxQuery
    Tag = 1
    BeforePost = SQLUsuarioBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM USUARIO WHERE (%MFiltro)'
      'ORDER BY USUAICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 16
    object SQLUsuarioUSUAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioUSUAA5SENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'USUAA5SENHA'
      Origin = 'DB.USUARIO.USUAA5SENHA'
      FixedChar = True
      Size = 60
    end
    object SQLUsuarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.USUARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.USUARIO.REGISTRO'
    end
    object SQLUsuarioUSUACUSERMASTER: TStringField
      DisplayLabel = 'Master'
      FieldName = 'USUACUSERMASTER'
      Origin = 'DB.USUARIO.USUACUSERMASTER'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLUsuario: TDataSource
    DataSet = SQLUsuario
    Left = 44
  end
end
