object frmConsultaCupons: TfrmConsultaCupons
  Left = 177
  Top = 79
  Width = 928
  Height = 480
  Caption = 'Consulta Cupons'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 97
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object Label2: TLabel
      Left = 41
      Top = 38
      Width = 43
      Height = 13
      Caption = 'Terminal:'
    end
    object Label3: TLabel
      Left = 28
      Top = 82
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label4: TLabel
      Left = 224
      Top = 82
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object btnConsultar: TSpeedButton
      Left = 416
      Top = 66
      Width = 113
      Height = 30
      Caption = 'Consultar'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
      OnClick = btnConsultarClick
    end
    object btnEstornar: TSpeedButton
      Left = 552
      Top = 66
      Width = 113
      Height = 30
      Caption = 'Estornar Estoque'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888800888888
        88888880FF0088888888880F00FF0088888880F0FF00FF0088880F0FFFFF00FF
        008880FF00FFFF00FF080FF0FF00FFFF0088800FFFFF00FFFF0880FFFF44FF00
        F0880FFFF4444FFF0088800F444444FFFF0888807F44FFFFF08888888044FFFF
        0888888888447FF0888888888844800888888888888888888888}
      OnClick = btnEstornarClick
    end
    object Label5: TLabel
      Left = 34
      Top = 60
      Width = 50
      Height = 13
      Caption = 'Opera'#231#227'o:'
    end
    object ComboEmpresa: TRxDBLookupCombo
      Left = 88
      Top = 8
      Width = 313
      Height = 21
      DropDownCount = 8
      LookupField = 'EMPRICOD'
      LookupDisplay = 'EMPRA60RAZAOSOC'
      LookupSource = DMConsCupom.dsEmpresa
      TabOrder = 0
    end
    object ComboTerminal: TRxDBLookupCombo
      Left = 88
      Top = 30
      Width = 193
      Height = 21
      DropDownCount = 8
      LookupField = 'TERMICOD'
      LookupDisplay = 'TERMA60DESCR'
      LookupSource = DMConsCupom.dsTerminal
      TabOrder = 1
    end
    object dataInicial: TcxDateEdit
      Left = 88
      Top = 74
      TabOrder = 2
      Width = 121
    end
    object dataFinal: TcxDateEdit
      Left = 280
      Top = 74
      TabOrder = 3
      Width = 121
    end
    object comboOperacao: TRxDBLookupCombo
      Left = 88
      Top = 52
      Width = 313
      Height = 21
      DropDownCount = 8
      LookupField = 'OPESICOD'
      LookupDisplay = 'OPESA60DESCR'
      LookupSource = DMConsCupom.dsOperacaoEstoque
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 912
    Height = 344
    Align = alClient
    TabOrder = 1
    object gridConsulta: TSMDBGrid
      Left = 1
      Top = 1
      Width = 910
      Height = 320
      Align = alClient
      DataSource = DMConsCupom.dsCupom
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 23
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 10
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'CUPOA13ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPOICOD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPODEMIS'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA13ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPOCSTATUS'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPON2TOTITENS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPOINRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMPRICOD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TERMICOD'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 321
      Width = 910
      Height = 22
      Align = alBottom
      TabOrder = 1
      object Gauge1: TGauge
        Left = 1
        Top = 1
        Width = 908
        Height = 20
        Align = alClient
        Progress = 0
      end
    end
  end
end
