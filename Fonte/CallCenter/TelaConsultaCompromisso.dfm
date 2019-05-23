inherited FormTelaConsultaCompromisso: TFormTelaConsultaCompromisso
  Left = 208
  Top = 120
  Width = 801
  Height = 569
  Caption = 'Gerenciador '
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 793
    Height = 535
    inherited PanelCabecalho: TPanel
      Width = 789
      inherited LabelTitulo: TLabel
        Top = 9
      end
      inherited PanelNavigator: TPanel
        Width = 789
        inherited Image1: TImage
          Width = 789
        end
        inherited BtnFecharTela: TSpeedButton
          Left = 713
        end
      end
    end
    inherited PanelBarra: TPanel
      Width = 0
      Height = 451
      Visible = False
    end
    inherited PanelCentral: TPanel
      Left = 0
      Width = 789
      Height = 451
      object TabSheet: TPageControl
        Left = 0
        Top = 0
        Width = 789
        Height = 451
        ActivePage = TSTarefa
        Align = alClient
        TabIndex = 1
        TabOrder = 0
        TabPosition = tpBottom
        object TSAgenda: TTabSheet
          ImageIndex = 5
          object Splitter5: TSplitter
            Left = 177
            Top = 0
            Width = 9
            Height = 425
            Cursor = crHSplit
            Beveled = True
          end
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 177
            Height = 425
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object TreeViewCategoria: TTreeView
              Left = 0
              Top = 0
              Width = 177
              Height = 425
              Align = alClient
              BiDiMode = bdLeftToRight
              Ctl3D = True
              HideSelection = False
              HotTrack = True
              Images = ImagensTreeView
              Indent = 19
              MultiSelectStyle = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentShowHint = False
              ReadOnly = True
              RowSelect = True
              ShowHint = True
              TabOrder = 0
              OnChange = TreeViewCategoriaChange
            end
          end
          object Panel18: TPanel
            Left = 186
            Top = 0
            Width = 595
            Height = 425
            Align = alClient
            Caption = 'Panel18'
            TabOrder = 1
            object Splitter4: TSplitter
              Left = 1
              Top = 138
              Width = 593
              Height = 7
              Cursor = crVSplit
              Align = alTop
              Beveled = True
              Color = 15461355
              ParentColor = False
            end
            object Panel16: TPanel
              Left = 1
              Top = 145
              Width = 593
              Height = 279
              Align = alClient
              BevelOuter = bvLowered
              Color = 15461355
              TabOrder = 0
              object Panel19: TPanel
                Left = 1
                Top = 25
                Width = 591
                Height = 253
                Align = alClient
                Color = 15461355
                TabOrder = 0
                object Label15: TLabel
                  Left = 1
                  Top = 1
                  Width = 589
                  Height = 13
                  Align = alTop
                  Caption = 'Compromisso'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBMemo4: TDBMemo
                  Left = 1
                  Top = 14
                  Width = 589
                  Height = 238
                  Align = alClient
                  DataField = 'AGENTCOMPROMISSO'
                  DataSource = DSSQL_Agenda
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnKeyPress = DBMemo4KeyPress
                end
              end
              object Panel20: TPanel
                Left = 1
                Top = 1
                Width = 591
                Height = 24
                Align = alTop
                Color = 15461355
                TabOrder = 1
                object lblInformaStatus: TLabel
                  Left = 8
                  Top = 5
                  Width = 37
                  Height = 13
                  Caption = 'Status'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Visible = False
                end
                object lblInformaConclusao: TLabel
                  Left = 221
                  Top = 5
                  Width = 57
                  Height = 13
                  Caption = 'Conclus'#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Visible = False
                end
                object DBComboStatus: TComboBox
                  Left = 48
                  Top = 2
                  Width = 169
                  Height = 21
                  AutoComplete = False
                  Style = csDropDownList
                  CharCase = ecUpperCase
                  ItemHeight = 13
                  TabOrder = 0
                  Visible = False
                  OnChange = DBComboStatusChange
                  Items.Strings = (
                    'N'#195'O INICIADA'
                    'EM ANDAMENTO'
                    'AGUARDANDO OUTRA PESSOA  '
                    'ADIADA'
                    'CONCLU'#205'DA')
                end
              end
            end
            object Panel15: TPanel
              Left = 1
              Top = 1
              Width = 593
              Height = 137
              Align = alTop
              Color = 14731440
              TabOrder = 1
              object DBGrid2: TDBGrid
                Left = 1
                Top = 1
                Width = 591
                Height = 135
                Align = alClient
                BorderStyle = bsNone
                Color = 16053492
                DataSource = DSAgenda
                FixedColor = 14731440
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGrid2DrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'AGENA60ASSUNTO'
                    Width = 225
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDCOMPROMISSO'
                    Title.Caption = 'Data Compromisso'
                    Width = 124
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENHCOMPROMISSO'
                    Title.Caption = 'Hora Compromisso'
                    Width = 119
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDALERTA'
                    Title.Caption = 'Data Alerta'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENHALERTA'
                    Title.Caption = 'Hora Alerta'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CATEA30DESCR'
                    Title.Caption = 'Categoria'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Status'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGENDCADASTRO'
                    Title.Caption = 'Data Cadastro'
                    Visible = True
                  end>
              end
            end
          end
        end
        object TSTarefa: TTabSheet
          ImageIndex = 6
          object Splitter1: TSplitter
            Left = 177
            Top = 0
            Width = 9
            Height = 425
            Cursor = crHSplit
            Hint = 'Mova para dimencionar o tamanho da janela'
            Beveled = True
          end
          object pnMaster: TPanel
            Left = 186
            Top = 0
            Width = 595
            Height = 425
            Align = alClient
            Color = 15461355
            TabOrder = 0
            object Splitter3: TSplitter
              Left = 1
              Top = 144
              Width = 593
              Height = 7
              Cursor = crVSplit
              Hint = 'Mova para dimencionar o tamanho da janela'
              Align = alTop
              Beveled = True
              Color = 15461355
              ParentColor = False
            end
            object pnControles: TPanel
              Left = 1
              Top = 151
              Width = 593
              Height = 273
              Align = alClient
              BevelOuter = bvLowered
              Color = 15461355
              TabOrder = 0
              object pnMemos: TPanel
                Left = 1
                Top = 25
                Width = 591
                Height = 247
                Align = alClient
                Color = 15461355
                TabOrder = 0
                object Splitter2: TSplitter
                  Left = 1
                  Top = 97
                  Width = 589
                  Height = 7
                  Cursor = crVSplit
                  Hint = 'Mova para dimencionar o tamanho da janela'
                  Align = alTop
                  Beveled = True
                end
                object pnHistorico: TPanel
                  Left = 1
                  Top = 104
                  Width = 589
                  Height = 142
                  Align = alClient
                  Color = 15461355
                  TabOrder = 0
                  object Label1: TLabel
                    Left = 1
                    Top = 1
                    Width = 587
                    Height = 15
                    Align = alTop
                    AutoSize = False
                    Caption = 'Hist'#243'rico'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBCtrlGridHistorico: TDBCtrlGrid
                    Left = 1
                    Top = 16
                    Width = 587
                    Height = 125
                    Align = alClient
                    ColCount = 1
                    Color = clWhite
                    DataSource = dsSQLTarefaHistorico
                    PanelBorder = gbNone
                    PanelHeight = 125
                    PanelWidth = 570
                    ParentColor = False
                    TabOrder = 0
                    RowCount = 1
                    object DBMemoTarefaHistorico: TDBMemo
                      Left = 0
                      Top = 0
                      Width = 570
                      Height = 125
                      Align = alClient
                      DataField = 'TRHTA1000HISTORICO'
                      DataSource = dsSQLTarefaHistorico
                      ScrollBars = ssVertical
                      TabOrder = 0
                      WantTabs = True
                    end
                  end
                  object pnMaisMenosCol: TPanel
                    Left = 56
                    Top = 2
                    Width = 131
                    Height = 14
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object btMenosCol: TSpeedButton
                      Left = 0
                      Top = 0
                      Width = 65
                      Height = 14
                      Cursor = crHandPoint
                      Caption = '-'
                      Flat = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 9175040
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      OnClick = btMenosColClick
                    end
                    object btMaisCol: TSpeedButton
                      Left = 66
                      Top = 0
                      Width = 65
                      Height = 14
                      Cursor = crHandPoint
                      Caption = '+'
                      Flat = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 9175040
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      OnClick = btMaisColClick
                    end
                  end
                end
                object pnSolicitacao: TPanel
                  Left = 1
                  Top = 1
                  Width = 589
                  Height = 96
                  Align = alTop
                  Color = 15461355
                  TabOrder = 1
                  object Label18: TLabel
                    Left = 1
                    Top = 1
                    Width = 587
                    Height = 13
                    Align = alTop
                    Caption = 'Solicita'#231#227'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Memo_SQLTarefa: TDBMemo
                    Left = 1
                    Top = 14
                    Width = 587
                    Height = 81
                    Align = alClient
                    DataField = 'TARETSOLICITACAO'
                    DataSource = DS_Tarefa
                    ScrollBars = ssVertical
                    TabOrder = 0
                    OnKeyPress = Memo_SQLTarefaKeyPress
                  end
                end
              end
              object pnBotoes: TPanel
                Left = 1
                Top = 1
                Width = 591
                Height = 24
                Align = alTop
                Color = 15461355
                TabOrder = 1
                object btIniciarTipoTarefa: TSpeedButton
                  Left = 190
                  Top = 1
                  Width = 129
                  Height = 21
                  Cursor = crHandPoint
                  Caption = 'Iniciar tarefa'
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FF2F9FD82F9FD8A47874A47874A47874A47874A47874A47874A47874A478
                    74A47874A47874FF00FFFF00FFFF00FF2F9FD88DD4EE81D2F0C9C7BCFCEDDDFA
                    F2E4F8F1E0F7EEDDF7EEDBF7EDDBF7ECDAF8EDD9A47874FF00FFFF00FF2F9FD8
                    A3E8F897F3FF8BF2FFC9C7BCF6E4DAF6E5D2F6DFC6F5DEC5F4DDC3F4DCBFF2DE
                    C6F0E3D0A47874FF00FFFF00FF2F9FD8A1E7F893EDFF85ECFFC9C7BCF8E8DFF9
                    E4CEF9DBBDF9DBBDF9DBBDF8D9B8F5DDC2F0E4D2A47874FF00FFFF00FF2F9FD8
                    ACE9F8A2F1FF95F0FFC9C7BCF9EBE4F9E6D3F9DDC2F9DEC2F8DDC1F7DBBDF5DF
                    C6F2E6D6A47874FF00FFFF00FF2F9FD8B5EBF8AFF3FFA3F2FFC9C7BCFAEFE9FA
                    EDDEFAE5D0F9E5CFF9E3CDF8E1CAF5E4D0F3E8DBA47874FF00FFFF00FF2F9FD8
                    BFECF8BEF5FFB0F4FFC9C7BCFCF4F0FCE8D2FCDBBBFBDCBCFADBBBFAD9B7F8E1
                    C8F7EEE3A47874FF00FFFF00FF2F9FD8C7EEF8CBF7FFBEF6FFC9C7BCFEF7F4FE
                    F7F0FBF0E5FBEFE3FAEDE0FAEEE1F9F0E5E8E3DDA47874FF00FFFF00FF2F9FD8
                    CEEFF8DBFBFFCDF9FFC9C7BCFEF8F5FFFFFFFEFFFEFCFAF9FBFBF9F0E7E2D4BF
                    B6C5AFA2A47874FF00FFFF00FF2F9FD8D4F0F8E9FDFFDBFBFFC9C7BCFFFAF8FF
                    FFFFFFFFFFFFFFFFFFFFFFDECAC5E0A870F7935BFF00FFFF00FFFF00FF2F9FD8
                    DAF1F8F8FFFFE9FEFFC9C7BCFCF0E9FCF5F1FCF4F0FBF3F0FBF4F1E3C4BAC7AF
                    892F9FD8FF00FFFF00FFFF00FF2F9FD8DBF0F8FFFFFFF5FFFFC9C7BCC9C7BCC9
                    C7BCC9C7BCC9C7BCC9C7BCC9C7BC85C4DA2F9FD8FF00FFFF00FFFF00FF2F9FD8
                    DDF1F9F7F5F4B0C7CBA9C4CBA7C4CAA6C4CAA5C4CAA2C2C8B3D1D6DFFDFE89D9
                    F52F9FD8FF00FFFF00FFFF00FF2F9FD8E4F8FFDFCBC2BBA398CFC1BCCFC1BBCF
                    C1BBCFC1BBCEBEB7B99E92E6E8E391DBF72F9FD8FF00FFFF00FFFF00FFFF00FF
                    2F9FD8B4D2E1969E9FE2D8D3FAF9F8F9F8F7F9F8F7D0C5BF849DA58CCFE72F9F
                    D8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2F9FD82F9FD89F91899F91899F
                    91899F91899F91892F9FD82F9FD8FF00FFFF00FFFF00FFFF00FF}
                  ParentFont = False
                  Visible = False
                  OnClick = btIniciarTipoTarefaClick
                end
                object lblDataConclusao: TLabel
                  Left = 5
                  Top = 5
                  Width = 75
                  Height = 13
                  Caption = 'Concluido em'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Visible = False
                end
                object lblDataInicio: TLabel
                  Left = 92
                  Top = 5
                  Width = 66
                  Height = 13
                  Caption = 'Iniciado em'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Visible = False
                end
                object btHistorico: TSpeedButton
                  Left = 326
                  Top = 1
                  Width = 129
                  Height = 21
                  Cursor = crHandPoint
                  Caption = 'Incluir Hist'#243'rico'
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FF767474787777807E7E7E7D7D797777767474FF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF767474838282ACACADADACAFA3
                    A3A0A49F9AA79E9EA59C9C848080767474FF00FFFF00FFFF00FFFF00FFFF00FF
                    818181A1A0A0CBCBCC9D9A969290819696938A8B959A907E8F817ABBA4A3A495
                    95747373FF00FFFF00FFFF00FF767474A3A0A1D8D5D7969289C5C2AAFEF0CED3
                    C0C4ABA4CBFFFFE5D4D3C9847B6FBB9A9AA69595767474FF00FFFF00FF968F96
                    7DAC7F1F6E25CFD3B2FFF4CCF3C990EFB677EFAA67EFBF86FFFBDEEEF3EB8377
                    6ACAA3A4888080FF00FF767474799178269E3C2AC0524C9A49F7F3C0FFF8C9FA
                    EDB8F4CF97EEB87EF2C587FFE7C6CCCBC0937870B79C9C8C8182707E6F107A1A
                    29C44E40DD7028BC5069AF5EFEFFD3FEFFD3FCF8C9FFE7ACFBBD7BF0AD6FFFF7
                    D98C806FC49E9E8C81821068140A8F161DB0362ABF4B26AD450E7B1B7DB067B0
                    AA956A6A629D9E82967F62D1955ACFBFC5807F89C69E999788882D6E2F337B35
                    0D961B15A62B438F47C0D9B8C6E0A3AFAF953A3A3C292A286E6C5BC5935FB7A9
                    C0747589C9A09C9687879387928EAA8E06810C079313589F5CFFFFFFFFFFF4FF
                    FFD5D0D0AF4C4D44A49879FFCF91FFEEC096897AC59FA18B8081767474AAA9A9
                    1D8022018C07167F1CDDE6DAFFFFFFFFFFFAFFFFEBE7E7CA424139978873D5D5
                    B7A18883BD9F9F8B8081FF00FF8C878A7FA780047A0A00860529892D9CC49EE9
                    F2EAF6FAF6FFFFFEEEEECFBDC2A19C9284CEA7A98A8181FF00FFFF00FF767474
                    9F989E77A5790F7B14007703006E0407680D1B7227C2DEC0E7E7D7AAA393C7A6
                    A79E9090767474FF00FFFF00FFFF00FF7B7B7A9A979AABBAAB89AA8A70966D7D
                    996F93A584B1B0A3B1A4A0C4AAAB9C8F8F7B7B7BFF00FFFF00FFFF00FFFF00FF
                    FF00FF767474898688ABA4AABBB2BAB5AFB5B0A9ACABA1A39E97998482827674
                    74FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7674747674747A
                    79797B7979767575767474FF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentFont = False
                  OnClick = btHistoricoClick
                end
                object btConcluir: TSpeedButton
                  Left = 3
                  Top = 2
                  Width = 87
                  Height = 20
                  Cursor = crHandPoint
                  Caption = 'Concluir'
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FF033B8A033D90013D95023B91033A89033A89FF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0357D30147B20051D0035CE007
                    63E3035CE0004ED30042B7023A8F023A8FFF00FFFF00FFFF00FFFF00FFFF00FF
                    0650BA0357D32781F278B4F7CAE2FCE9F4FFDCEDFF9CC7FA3F8FF20155DD0140
                    A404367DFF00FFFF00FFFF00FF075DD70762E155A0F7F3F8FEFFFFFFE9F3FCC6
                    DEFAD9E9FCFFFFFFFFFFFF99C5F8055DE70040A302398BFF00FFFF00FF075DD7
                    529EF7FEFEFFF0F7FE5CA3F31E78EBA1C9F70D65E32D7AE9BAD7F8FFFFFF9CC9
                    F80355DE02398BFF00FF0455C9207DF0E1EFFEFFFFFF358CF30F6EEEC7E0FBFF
                    FFFF2F83EA004ADE0559E1BAD8F8FFFFFF3E8FF20043B7033E96085FDA56A1FA
                    FFFFFF9ECBFB2D88F4D4E9FCFCFEFED7E9FC8ABDF60058E2004FE02A7BE7FFFF
                    FF9FCBFA0050D4033E960F6BE68BC1FCFFFFFF56A4FC97C7FCF8FBFF4B9AF628
                    82F2D9EAFC1975EB005AE5015AE2D9E9FBDEEFFF0560E202409C1B76EDA4CFFC
                    FFFFFF50A0FF2586FE358FFA0E70F6096AF289BFFA6AABF6025FEA0159E5C7E1
                    FAEBF6FF0C68E60141A1207AEBA5CFFEFFFFFF75B6FF1278FF1A7DFE187AFB11
                    73F71979F482BBFA0E6CEE0E6CEBEFF6FECEE5FE0763E203419E146FE79ACAFC
                    FFFFFFD8EBFF1F81FF1B7EFF1E81FF1A7BFC1173F7368EF72983F463A9F6FFFF
                    FF81BAF80258D8033E96FF00FF237BEBEDF6FFFFFFFF98CAFF1F81FF1379FF16
                    7AFF1276FB0A6EF854A0F8F0F8FFF2F8FE3089F4024FC0FF00FFFF00FF237BEB
                    BFDEFFF3F8FFFFFFFFD7EAFF74B6FF53A3FE5EA9FFA3CFFEFFFFFFFFFFFF5DA6
                    F70860DE024FC0FF00FFFF00FFFF00FF4997F3C7E3FFF7FBFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFE0EFFE5CA5F80E6BE70552C2FF00FFFF00FFFF00FFFF00FF
                    FF00FF2D82EB91C5FBCCE6FFD9EDFFDCEDFEC4E0FE86BFFC348BF40A65E10A65
                    E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF247BEB4696F34A
                    98F42F87F0116CE6075FDCFF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentFont = False
                  OnClick = btConcluirClick
                end
              end
            end
            object pnLegenda: TPanel
              Left = 1
              Top = 1
              Width = 593
              Height = 19
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvSpace
              ParentColor = True
              TabOrder = 1
              object Label33: TLabel
                Left = 147
                Top = 3
                Width = 121
                Height = 14
                AutoSize = False
                Caption = 'Tarefas N'#227'o Aceitas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 4868863
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 24
                Top = 2
                Width = 103
                Height = 14
                AutoSize = False
                Caption = 'Tarefas Aceitas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape1: TShape
                Left = 3
                Top = 3
                Width = 19
                Height = 14
                Brush.Color = clBlack
              end
              object Shape2: TShape
                Left = 126
                Top = 3
                Width = 19
                Height = 14
                Brush.Color = clRed
              end
            end
            object DBGridTarefa: TDBGrid
              Left = 1
              Top = 20
              Width = 593
              Height = 124
              Align = alTop
              BorderStyle = bsNone
              Color = 16053492
              DataSource = DSTarefa
              FixedColor = 14731440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopUpTipoTarefa
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGridTarefaDrawColumnCell
              OnDblClick = DBGridTarefaDblClick
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'TAREA30TITULO'
                  Title.Caption = 'Titulo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TAREDDIGITACAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NomeClientePropect'
                  Visible = True
                end
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'NomeCliente'
                  Width = 379
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TAREDLEMBRETE'
                  Title.Caption = 'Lembrete'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TAREDINICIO'
                  Title.Caption = 'Inicio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TAREDTERMINO'
                  Title.Caption = 'T'#233'rmino'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REGISTRO'
                  Title.Caption = 'Registro'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HELPA13ID'
                  Title.Caption = 'Atendimento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PENDENTE'
                  Title.Caption = 'Pendente'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DesCricaoTipotarefa'
                  Title.Caption = 'Tipo Tarefa'
                  Width = 169
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLASSA60DESCRICAO'
                  Title.Caption = 'Grupo'
                  Width = 134
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UsuarioDestino'
                  Width = 126
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UsuarioAutor'
                  Title.Caption = 'Usu'#225'rio'
                  Width = 134
                  Visible = True
                end>
            end
          end
          object pnTreeView: TPanel
            Left = 0
            Top = 0
            Width = 177
            Height = 425
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object TreeViewTipoTarefa: TTreeView
              Left = 0
              Top = 0
              Width = 177
              Height = 425
              Align = alClient
              HotTrack = True
              Images = ImagensTreeView
              Indent = 19
              ReadOnly = True
              TabOrder = 0
              OnChange = TreeViewTipoTarefaChange
            end
          end
        end
      end
    end
  end
  object DSSQL_Agenda: TDataSource
    DataSet = SQL_Agenda
    Left = 164
    Top = 8
  end
  object DS_Tarefa: TDataSource
    DataSet = SQL_Tarefa
    Left = 252
    Top = 8
  end
  object ImagensTreeView: TImageList
    Left = 68
    Top = 8
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001800000000000024
      000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
      000000FFFFFFE0E0E0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
      C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099CC3363735858587979
      7900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007A7957B1A38D5E5C455E5C455E5C450000005E5C4500000000000000
      00000000000000000000000000000000009937059B38076429114D4D4D4D4D4D
      0000000000000000000000000000000000000000000EA0D2A4E6FF6FD5FF3FBB
      E9129BCA24708A53535374747479797900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00230000827D5CDAD7C2B9B69BD5C8AFEDDCC581816385957200000000000000
      00000000000000000000000000009E3C05CF6800A14314E3C7B9B2653E993300
      8121006429114D4D4D4D4D4D0000000000000000003EB6E6FFFFFF79DFFF70D6
      FF5DC3FF54BAFF4DB3FF57CAF21DAAD91979983F5C6579797900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001500
      001D0A057F7E5DE3DBC7BDBAA2D6C5AFEBD5C07E84647A876700000000000000
      0000000000000000000000A13D06DD7700D46E00BA7451EDDAD1E7CFC4E1C3B4
      DBB7A5D0A189AB572F61473B00000000000000000044B9E670C6E279DFFF73D9
      FF6AD0FF69CFFF53B9FF47ADFF69CFFF83E9FF73D9FF4B555800000000000000
      0000000000000000000000A4ECFF52CEFB39A7D11898C3298AAB000000000000
      000000000000000000000000000000000000000000000000000000170000210E
      09130605828163E8DFCFC0BCA7D6C8B3EADAC87C856C757F6700000000000000
      00000000000000009B471DEB8400E27C00DC7500BC7857F0E0D8EAD5CAE2C6B8
      DAB5A3D8B19DD3A690C79F9900000000000000000075CDF228ADE0A5EBFF7EE4
      FF8DF3FF8DF3FF8DF3FF64CAFF47ADFF8DF3FF70D6FF0A8BB600000000000000
      00000000000000001AA6D5A4D9EF77E3FF7BE4FF7DE5FF82E9FF86F2FF43CDF7
      3996B40000000000000000000000000000000000000000000801001B0B091F0B
      09100405888163ECE2D6BFBCA6D4C8B2EFDECD7A8367737F6B00000000000000
      0000000000000000C66000ED8600E88200E07900BF7F60F3E6E0EDDBD2A59687
      DBB9A9CA957BD6AD99C8A49F0000000000000000007DCFF259C5F8F7FFFF91F7
      FF97FDFF97FDFF97FDFF97FDFF5AC0FF6FD5FF3AA0FFA6F2F958585800000000
      000000000000000019A2D019ABD7B8F6FC8CF1FF84EDFF98FFFF213DB086F2FF
      8CEFFF1BA7D60000000000000000000000000000000000000E05061708091B09
      090F0305848264EBE3D8BEBCA5D6CAB5F6DFD27C8368747C6600000000000000
      0000000000000000C96300F28C00ED8600E57E00654433F6EEEAF1E3DCEBD6CC
      E1C8BB2D82B7DAB4A1C8A49F000000000000000000B5E7FF69CFFF83CCE5C7FF
      FFA8FFFF92EFFF9AF6FFA8FFFF8BECFF54BAFF47ADFF44A6FF19799800000000
      00000000000000001BA3CF3EBBF3D1EFF794FCFFA0FFFF050BA0172BA79EFFFF
      90F9FFB1FEFF0000000000000000000000000000000000000704061207080F07
      08070104878263BBB2A39D967BCCC3ACFBEADA7C826A777F6900000000000000
      0000000000000000CC6600F99200F28C00EB84001D0F08FAF5F3F4E8E3EFDED6
      E8D2C7E2C6B8DBB9A9CBA8A2000000000000000000C3ECFF79DFFF42DB7556C9
      DB2EB4DF60BFDFEFF9FC73D9FF6AD0FF69CCFF92EFFF83CCFF91DDEF67676700
      00000000000000001CA5CE59CAFF6DC9E9C2FFFF90CCEAA7FFFF70AEE299DEF2
      A6FFFFD5FFFF3798B80000000000000000000000000000000905060F07070E06
      080701048D8769825A56947F788560536C3E2D521E10686C5900000000000000
      0000000000000000CC6807FC9600F58F00F08A00F6CDA2DEAB80BA8760E3BDA1
      E6CDC0E6CDC0DFBFAFCEACA6000000000000000000BDF2FF8AF0FF42DB753DD4
      768AF0FF4ADF7949D68C9FD9ECFFFFFFF7FFFFC3ECFFF9FFFFF7FFFF24708A00
      00000000000000001BA4CE6CDBFF70DFFE5DCEF15ACBEC93CCEFF6FCFF1D3DAE
      C0FFFFCAF2FFE9FFFF0000000000000000000000000000001607051508081308
      080D0205887E5FBDB5ABE9E6E3E9E6E3E9E6E37C5A56616A5500000000000000
      0000000000000000CC6C0FFF9A03FC9600FCE7D2FFFFFFFCE7D2F0D0B5FBDABC
      A46B51AE5318953D004D4D4D000000000000000000CEF7FF99FFFF87F2CE32C9
      6375EEC94EE47F49D68C99FFFF99FFFF99FFFF26B3D97EC1D85BBADB5BBADB00
      00000000000000001BA5CE85F2FF90F5FF90F7FF91F7FF91F7FF5FCDEF0A18A5
      CCFBFF82DBF983DDFB1E97BF0000000000000000000000001D09071809081508
      080F0305837B62BEBCA5FFFCF8FFFFFFFFFFFFFFFFFF717A6400000000000000
      0000000000000000CC6F17FFA216FE9900F99200F9E6D7FEF3E9FCE3CDC4917B
      D6AC97D4A993CE9D854D4D4D000000000000000000C1E7F599FFFF99FFFF77EA
      9928B65028B6503BBE6687F2CEB0FEFF99FFFF26B3D900000000000000000000
      000000000000000028AAD793FEFF9DFFFF98FFFFB4FFFFAEFFFFA8FFFF91FCFF
      9CEFF9000000000000000000000000000000000000000000250D06200B081B0B
      09100304857F658C67624108004A0F01561A0E6425135B665400000000000000
      0000000000000000CC7320FFA724FF9E0DFC9600F4E8E3E8C7ACCD9B82CE9D85
      D1A38DD7AF9BD1A38D4D4D4D0000000000000000003BAED3BEE5F2FBFEFFDDFE
      FF8ADFB829A9451FA33D1FA33D6D8A937CC9E283CCE500000000000000000000
      0000000000000000000000FFFFFFF6FFFFDFFFFF2BC1FC00000000000030BFEF
      2DCDFF0000000000000000000000000000000000000000002F0F072E0F07210B
      08170504857C62916E6749150850160853170C5A1707585E4C00000000000000
      0000000000000000CC7526FFAE36FFA51EFF9A03F6EEEAF1E3DCB7B3C38088AF
      3377B0DAB5A3D5AA944D4D4D0000000000000000000000000000000000000000
      0000000015902A15902A7A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003F15083E150A3311
      08250906807C61936D645D1703B8765488472F883E1654594600000000000000
      0000000000000000CC782DFFB64AFFAC31FFA216FAF5F3F5EAE6EFDED6EAD4C9
      E3C7B9DDBBABD8B19D4D4D4D0000000000000000000000000000000000000000
      000000000C7D170C7D1789898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000511F0A491C0C4419
      0B3910057D775CDFD8CB9B8D78B19781D7B29DB18B7562685100000000000000
      0000000000000000CC7B35FFBD5BFFB13DFFA724FBC77CF8C175F3D2ACEFCDAF
      EBC8A7E1C3B4DBB7A54D4D4D0000000000000000000000000000000000000000
      000000000000002D812E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000642B0D622F144022
      1127170E2A1F124739340D0C0A14100E3A2F2A695C52695C5200000000000000
      0000000000000000B26134B26134B26134C89277DDBBABDDBBABCD9B82BC7857
      B66949B05C39AB572F000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFF87FFFFFFFC17F83F
      803FFFFFF807F0038007FFFFF007E0038007E0FFE007C0038007C01FC007C003
      8003C00FC007C0038003C00FC007C0038001C007C007C0038001C007C007C003
      8001C003C007C003800FC01FC007C003800FE19FC007C003FC7FFFFFC007C003
      FC7FFFFFC007C003FEFFFFFFC007C00700000000000000000000000000000000
      000000000000}
  end
  object SQLAgenda: TRxQuery
    OnCalcFields = SQLAgendaCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from agenda where (%Expressao)')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 492
    object SQLAgendaAGENA13ID: TStringField
      FieldName = 'AGENA13ID'
      Origin = 'DB.AGENDA.AGENA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDA.EMPRICOD'
    end
    object SQLAgendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.AGENDA.TERMICOD'
    end
    object SQLAgendaAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDA.AGENICOD'
    end
    object SQLAgendaAGENDCADASTRO: TDateTimeField
      FieldName = 'AGENDCADASTRO'
      Origin = 'DB.AGENDA.AGENDCADASTRO'
    end
    object SQLAgendaAGENDCOMPROMISSO: TDateTimeField
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
    end
    object SQLAgendaAGENHCOMPROMISSO: TStringField
      FieldName = 'AGENHCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENHCOMPROMISSO'
      FixedChar = True
      Size = 8
    end
    object SQLAgendaAGENDALERTA: TDateTimeField
      FieldName = 'AGENDALERTA'
      Origin = 'DB.AGENDA.AGENDALERTA'
    end
    object SQLAgendaAGENHALERTA: TStringField
      FieldName = 'AGENHALERTA'
      Origin = 'DB.AGENDA.AGENHALERTA'
      FixedChar = True
      Size = 8
    end
    object SQLAgendaAGENTCOMPROMISSO: TMemoField
      FieldName = 'AGENTCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENTCOMPROMISSO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLAgendaAGENDCONCLUSAO: TDateTimeField
      FieldName = 'AGENDCONCLUSAO'
      Origin = 'DB.AGENDA.AGENDCONCLUSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLAgendaCATEICOD: TIntegerField
      FieldName = 'CATEICOD'
      Origin = 'DB.AGENDA.CATEICOD'
    end
    object SQLAgendaCATEA30DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CATEA30DESCR'
      LookupDataSet = SQLCategoriaAgenda
      LookupKeyFields = 'CATEICOD'
      LookupResultField = 'CATEA30DESCR'
      KeyFields = 'CATEICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.AGENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLAgendaAGENCSTATUS: TStringField
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDA.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendaAGENCALERTA: TStringField
      FieldName = 'AGENCALERTA'
      Origin = 'DB.AGENDA.AGENCALERTA'
      FixedChar = True
      Size = 1
    end
    object SQLAgendaAGENA60ASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'AGENA60ASSUNTO'
      Origin = 'DB.AGENDA.AGENA60ASSUNTO'
      FixedChar = True
      Size = 60
    end
    object SQLAgendaStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 15
      Calculated = True
    end
  end
  object DSAgenda: TDataSource
    DataSet = SQLAgenda
    OnDataChange = DSAgendaDataChange
    Left = 520
  end
  object SQLCategoriaAgenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CATEGORIAAGENDA where (%Expressao)')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 548
    object SQLCategoriaAgendaCATEICOD: TIntegerField
      FieldName = 'CATEICOD'
      Origin = 'DB.CATEGORIAAGENDA.CATEICOD'
    end
    object SQLCategoriaAgendaCATEA30DESCR: TStringField
      FieldName = 'CATEA30DESCR'
      Origin = 'DB.CATEGORIAAGENDA.CATEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLTarefa: TRxQuery
    Tag = 1
    BeforeOpen = SQLTarefaBeforeOpen
    AfterScroll = SQLTarefaAfterScroll
    OnCalcFields = SQLTarefaCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TAREFA '
      'where '
      '(%Expressao) and'
      '(%MFiltro) and'
      'TARECSTATUS is not Null'
      'order by '
      'TAREDPRAZOMAX')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 616
    object SQLTarefaTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTarefaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQLTarefaTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTarefaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQLTarefaUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTarefaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTAREDDIGITACAO: TDateTimeField
      DisplayLabel = 'Data Digita'#231#227'o'
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTarefaTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQLTarefaTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTarefaTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTarefaTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTarefaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQLTarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQLTarefaTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQLTarefaHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTARECPENDENTE: TStringField
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaTAREDPRAZOMAX: TDateTimeField
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQLTarefaTAREDULTAGEND: TDateTimeField
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object SQLTarefaTAREHLEMBRETE: TStringField
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
    object SQLTarefaTAREA60MOTIVOADIO: TStringField
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      FixedChar = True
      Size = 60
    end
    object SQLTarefaCLASSICOD: TIntegerField
      FieldName = 'CLASSICOD'
      Origin = 'DB.TAREFA.CLASSICOD'
    end
    object SQLTarefaCLASSA60DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CLASSA60DESCRICAO'
      LookupDataSet = SQLClasses
      LookupKeyFields = 'CLASSICOD'
      LookupResultField = 'CLASSA60DESCRICAO'
      KeyFields = 'CLASSICOD'
      Size = 60
      Lookup = True
    end
    object SQLTarefaPRCLA13ID: TStringField
      FieldName = 'PRCLA13ID'
      Origin = 'DB.TAREFA.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaPRNEA13ID: TStringField
      FieldName = 'PRNEA13ID'
      Origin = 'DB.TAREFA.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTAREA1000CHECKLIST: TMemoField
      FieldName = 'TAREA1000CHECKLIST'
      Origin = 'DB.TAREFA.TAREA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1000
    end
    object SQLTarefaTARECATULIZEMAIL: TStringField
      FieldName = 'TARECATULIZEMAIL'
      Origin = 'DB.TAREFA.TARECATULIZEMAIL'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaTAREA13MODOTAREFA: TStringField
      FieldName = 'TAREA13MODOTAREFA'
      Origin = 'DB.TAREFA.TAREA13MODOTAREFA'
      FixedChar = True
      Size = 13
    end
    object SQLTarefaTARECSTATUS: TStringField
      FieldName = 'TARECSTATUS'
      Origin = 'DB.TAREFA.TARECSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTarefaNomeClientePropect: TStringField
      DisplayLabel = 'Cliente Propect'
      FieldKind = fkCalculated
      FieldName = 'NomeClientePropect'
      Size = 60
      Calculated = True
    end
    object SQLTarefaDesCricaoTipotarefa: TStringField
      DisplayLabel = 'Tipo tarefa'
      FieldKind = fkCalculated
      FieldName = 'DesCricaoTipotarefa'
      Size = 60
      Calculated = True
    end
    object SQLTarefaUsuarioAutor: TStringField
      DisplayLabel = 'Usuario Autor'
      FieldKind = fkCalculated
      FieldName = 'UsuarioAutor'
      Size = 60
      Calculated = True
    end
    object SQLTarefaUsuarioDestino: TStringField
      DisplayLabel = 'Usuario Destino'
      FieldKind = fkCalculated
      FieldName = 'UsuarioDestino'
      Size = 60
      Calculated = True
    end
    object SQLTarefaNomeCliente: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldKind = fkCalculated
      FieldName = 'NomeCliente'
      Size = 60
      Calculated = True
    end
  end
  object DSTarefa: TDataSource
    DataSet = SQLTarefa
    OnStateChange = DSTarefaStateChange
    OnDataChange = DSTarefaDataChange
    Left = 644
  end
  object PopUpTipoTarefa: TPopupMenu
    MenuAnimation = [maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop]
    Left = 616
    Top = 28
    object AssociarTecnico: TMenuItem
      Caption = 'Associar Grupo/Usu'#225'rio'
      OnClick = AssociarTecnicoClick
    end
  end
  object SQLDataEmAbertoTipoTarefa: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct(TAREDLEMBRETE) from TAREFA '
      'where (%Expressao) '
      'order by'
      'TAREDLEMBRETE,'
      'TAREDPRAZOMAX ')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 644
    Top = 28
    object SQLDataEmAbertoTipoTarefaTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
  end
  object SQLDataAgendaPendente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DISTINCT(AGENDCOMPROMISSO) FROM AGENDA  WHERE  (%Expressa' +
        'o) ORDER BY AGENDCOMPROMISSO ')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 520
    Top = 28
    object SQLDataAgendaPendenteAGENDCOMPROMISSO: TDateTimeField
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
    end
  end
  object SQLTpTarefa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from tipotarefa where (%Expressao)')
    Macros = <
      item
        DataType = ftString
        Name = 'Expressao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 672
    object SQLTpTarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TIPOTAREFA.TPTAICOD'
    end
    object SQLTpTarefaTPTAA30DESCRICAO: TStringField
      FieldName = 'TPTAA30DESCRICAO'
      Origin = 'DB.TIPOTAREFA.TPTAA30DESCRICAO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLUpdate: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 32
    Top = 160
  end
  object SQLClasses: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from classe')
    Macros = <>
    Left = 32
    Top = 192
  end
  object SQLTarefaHistorico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TAREFAHISTORICO where (%MFiltro)'
      'order by REGISTRO desc')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 32
    Top = 224
  end
  object dsSQLTarefaHistorico: TDataSource
    DataSet = SQLTarefaHistorico
    Left = 64
    Top = 224
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE')
    Macros = <>
    Left = 32
    Top = 256
  end
  object SQL_Agenda: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from AGENDA '
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 136
    Top = 8
    object SQL_AgendaAGENA13ID: TStringField
      FieldName = 'AGENA13ID'
      Origin = 'DB.AGENDA.AGENA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_AgendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDA.EMPRICOD'
    end
    object SQL_AgendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.AGENDA.TERMICOD'
    end
    object SQL_AgendaAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDA.AGENICOD'
    end
    object SQL_AgendaAGENDCADASTRO: TDateTimeField
      FieldName = 'AGENDCADASTRO'
      Origin = 'DB.AGENDA.AGENDCADASTRO'
    end
    object SQL_AgendaAGENDCOMPROMISSO: TDateTimeField
      FieldName = 'AGENDCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENDCOMPROMISSO'
    end
    object SQL_AgendaAGENHCOMPROMISSO: TStringField
      FieldName = 'AGENHCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENHCOMPROMISSO'
      FixedChar = True
      Size = 8
    end
    object SQL_AgendaAGENDALERTA: TDateTimeField
      FieldName = 'AGENDALERTA'
      Origin = 'DB.AGENDA.AGENDALERTA'
    end
    object SQL_AgendaAGENHALERTA: TStringField
      FieldName = 'AGENHALERTA'
      Origin = 'DB.AGENDA.AGENHALERTA'
      FixedChar = True
      Size = 8
    end
    object SQL_AgendaAGENTCOMPROMISSO: TMemoField
      FieldName = 'AGENTCOMPROMISSO'
      Origin = 'DB.AGENDA.AGENTCOMPROMISSO'
      BlobType = ftMemo
      Size = 1000
    end
    object SQL_AgendaAGENDCONCLUSAO: TDateTimeField
      FieldName = 'AGENDCONCLUSAO'
      Origin = 'DB.AGENDA.AGENDCONCLUSAO'
    end
    object SQL_AgendaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.AGENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQL_AgendaCATEICOD: TIntegerField
      FieldName = 'CATEICOD'
      Origin = 'DB.AGENDA.CATEICOD'
    end
    object SQL_AgendaAGENA60ASSUNTO: TStringField
      FieldName = 'AGENA60ASSUNTO'
      Origin = 'DB.AGENDA.AGENA60ASSUNTO'
      FixedChar = True
      Size = 60
    end
    object SQL_AgendaAGENCALERTA: TStringField
      FieldName = 'AGENCALERTA'
      Origin = 'DB.AGENDA.AGENCALERTA'
      FixedChar = True
      Size = 1
    end
    object SQL_AgendaAGENCSTATUS: TStringField
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDA.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
  end
  object SQL_Tarefa: TRxQuery
    BeforePost = SQL_TarefaBeforePost
    AfterPost = SQL_TarefaAfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from TAREFA'
      'where (%MFiltro)'
      'order by'
      'TAREDPRAZOMAX ')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 224
    Top = 8
    object SQL_TarefaTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQL_TarefaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TAREFA.TERMICOD'
    end
    object SQL_TarefaTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQL_TarefaUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQL_TarefaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaTAREDDIGITACAO: TDateTimeField
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQL_TarefaTAREDLEMBRETE: TDateTimeField
      FieldName = 'TAREDLEMBRETE'
      Origin = 'DB.TAREFA.TAREDLEMBRETE'
    end
    object SQL_TarefaTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQL_TarefaTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQL_TarefaTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQL_TarefaTARECPENDENTE: TStringField
      FieldName = 'TARECPENDENTE'
      Origin = 'DB.TAREFA.TARECPENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQL_TarefaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
    object SQL_TarefaTPTAICOD: TIntegerField
      FieldName = 'TPTAICOD'
      Origin = 'DB.TAREFA.TPTAICOD'
    end
    object SQL_TarefaTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQL_TarefaHELPA13ID: TStringField
      FieldName = 'HELPA13ID'
      Origin = 'DB.TAREFA.HELPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaTAREDPRAZOMAX: TDateTimeField
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQL_TarefaTAREDULTAGEND: TDateTimeField
      FieldName = 'TAREDULTAGEND'
      Origin = 'DB.TAREFA.TAREDULTAGEND'
    end
    object SQL_TarefaTAREHLEMBRETE: TStringField
      FieldName = 'TAREHLEMBRETE'
      Origin = 'DB.TAREFA.TAREHLEMBRETE'
      FixedChar = True
      Size = 8
    end
    object SQL_TarefaTAREA60MOTIVOADIO: TStringField
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      FixedChar = True
      Size = 60
    end
    object SQL_TarefaCLASSICOD: TIntegerField
      FieldName = 'CLASSICOD'
      Origin = 'DB.TAREFA.CLASSICOD'
    end
    object SQL_TarefaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TAREFA.USUAICOD'
    end
    object SQL_TarefaTAREA1000CHECKLIST: TMemoField
      FieldName = 'TAREA1000CHECKLIST'
      Origin = 'DB.TAREFA.TAREA1000CHECKLIST'
      BlobType = ftMemo
      Size = 1000
    end
    object SQL_TarefaPRCLA13ID: TStringField
      FieldName = 'PRCLA13ID'
      Origin = 'DB.TAREFA.PRCLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaPRNEA13ID: TStringField
      FieldName = 'PRNEA13ID'
      Origin = 'DB.TAREFA.PRNEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaTARECATULIZEMAIL: TStringField
      FieldName = 'TARECATULIZEMAIL'
      Origin = 'DB.TAREFA.TARECATULIZEMAIL'
      FixedChar = True
      Size = 1
    end
    object SQL_TarefaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQL_TarefaTAREA13MODOTAREFA: TStringField
      FieldName = 'TAREA13MODOTAREFA'
      Origin = 'DB.TAREFA.TAREA13MODOTAREFA'
      FixedChar = True
      Size = 13
    end
    object SQL_TarefaTARECSTATUS: TStringField
      FieldName = 'TARECSTATUS'
      Origin = 'DB.TAREFA.TARECSTATUS'
      FixedChar = True
      Size = 1
    end
  end
end
