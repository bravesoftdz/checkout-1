unit TelaImpressaoDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, CurrEdit, RxLookup, StdCtrls, Mask, ToolEdit,
  DB, DBTables, RxQuery, Grids, DBGrids, Buttons, jpeg, ExtCtrls, DBCtrls,
  UnitLibrary, ShellApi, Placemnt, FileCtrl, Menus, RXCtrls, UCrpe32,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppviewr, ppStrtch, ppMemo;


type
  TFormTelaImpressaoDuplicata = class(TFormTelaGeralTEMPLATE)
    DBGridLista: TDBGrid;
    SQLContasReceber: TRxQuery;
    SQLCliente: TRxQuery;
    SQLEmpresa: TRxQuery;
    DSSQLContasReceber: TDataSource;
    BtnSelecionarDoc: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    ComboCliente: TRxDBLookupCombo;
    Label9: TLabel;
    TotalContasReceber: TCurrencyEdit;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    DSSQLEmpresa: TDataSource;
    TblDuplicatas: TTable;
    TblDuplicatasCLIEA14CGC: TStringField;
    TblDuplicatasCLIEA20IE: TStringField;
    TblDuplicatasCLIEA11CPF: TStringField;
    TblDuplicatasCLIEA10RG: TStringField;
    TblDuplicatasCLIEA60RAZAOSOC: TStringField;
    TblDuplicatasCLIEA60NOMEFANT: TStringField;
    TblDuplicatasCLIEA15FONE1: TStringField;
    TblDuplicatasCLIEA15FONE2: TStringField;
    TblDuplicatasCLIEA15FAX: TStringField;
    TblDuplicatasCLIEA60ENDRES: TStringField;
    TblDuplicatasCLIEA60BAIRES: TStringField;
    TblDuplicatasCLIEA60CIDRES: TStringField;
    TblDuplicatasCLIEA2UFRES: TStringField;
    TblDuplicatasCLIEA8CEPRES: TStringField;
    TblDuplicatasCLIEA60ENDCOB: TStringField;
    TblDuplicatasCLIEA60BAICOB: TStringField;
    TblDuplicatasCLIEA60CIDCOB: TStringField;
    TblDuplicatasCLIEA2UFCOB: TStringField;
    TblDuplicatasCLIEA8CEPCOB: TStringField;
    TblDuplicatasCLIEA13ID: TStringField;
    TblDuplicatasCTRCINROPARC: TIntegerField;
    TblDuplicatasCTRCDVENC: TDateTimeField;
    TblDuplicatasCTRCN2VLR: TBCDField;
    TblDuplicatasCTRCN2DESCFIN: TBCDField;
    TblDuplicatasNOFIA13ID: TStringField;
    TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField;
    TblDuplicatasCTRCDEMIS: TDateTimeField;
    TblDuplicatasLocPagto: TStringField;
    TblDuplicatasEndPagto: TStringField;
    TblDuplicatasExtensoLin2: TStringField;
    TblDuplicatasExtensoLin1: TStringField;
    TblDuplicatasEMPRICOD: TIntegerField;
    TblDuplicatasCTRCA13ID: TStringField;
    TblDuplicatasNumeroParcelas: TIntegerField;
    PanelIntrucoes: TPanel;
    EditLocalPagto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditEndPagto: TEdit;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA14CGC: TStringField;
    SQLContasReceberCLIEA20IE: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEA60NOMEFANT: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCLIEA15FAX: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60ENDCOB: TStringField;
    SQLContasReceberCLIEA60BAICOB: TStringField;
    SQLContasReceberCLIEA60CIDCOB: TStringField;
    SQLContasReceberCLIEA2UFCOB: TStringField;
    SQLContasReceberCLIEA8CEPCOB: TStringField;
    FormStorage: TFormStorage;
    SQLContasReceberVALORTOTAL: TFloatField;
    SQLTotais: TRxQuery;
    Label7: TLabel;
    TblDuplicatasTotalDocumento: TFloatField;
    SQLTotaisTOTALDOCUMENTO: TBCDField;
    SQLTotaisNROPARCELAS: TIntegerField;
    SQLTotaisCTRCA30NRODUPLICBANCO: TStringField;
    EditParcelas: TEdit;
    Label8: TLabel;
    TblDuplicatasInstrucoes: TStringField;
    MemoInst: TMemo;
    MenuImp: TPopupMenu;
    MnDuplicatas: TMenuItem;
    MnBloquetos: TMenuItem;
    ComboBloqueto: TFilterComboBox;
    FileList: TFileListBox;
    Label10: TLabel;
    ButtonImp: TRxSpeedButton;
    RadioPeriodo: TRadioGroup;
    Report: TCrpe;
    MenuOptions: TPopupMenu;
    Excluirregistroselecionado1: TMenuItem;
    SQLContasReceberDUPLA13ID: TStringField;
    TblDuplicatasDocumentos: TStringField;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    ComboTipoDocumento: TRxDBLookupCombo;
    Label3: TLabel;
    CheckLocalPagto: TCheckBox;
    CheckEndCob: TCheckBox;
    PipelEmpresa: TppDBPipeline;
    PipeDuplicatas: TppDBPipeline;
    ReportDuplicatasServico: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape3: TppShape;
    NomeCli: TppDBText;
    EnderCli: TppDBText;
    BairroCli: TppDBText;
    DtaVenc: TppDBText;
    DtaDoc: TppDBText;
    Valor1: TppDBText;
    CepCli: TppDBText;
    CidaCli: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    Valor2: TppDBText;
    NumDoc: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    UfCli: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    CgcCli: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine5: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText16: TppDBText;
    ppDBText9: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppLabel37: TppLabel;
    DSTblDuplicatas: TDataSource;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppShape2: TppShape;
    ppDBMemo1: TppDBMemo;
    DuplicatasMercantil1: TMenuItem;
    ReportDuplicataMercantil: TppReport;
    ppDetailBand2: TppDetailBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel42: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppShape15: TppShape;
    ppLabel46: TppLabel;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText38: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText39: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine9: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine10: TppLine;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppShape16: TppShape;
    ppDBMemo2: TppDBMemo;
    SQLContasReceberAVALA60RAZAOSOC: TStringField;
    TblDuplicatasAVALA60RAZAOSOC: TStringField;
    TblDuplicatasNumeroDocParc: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    ppImageMercantil: TppImage;
    ppImageServico: TppImage;
    Label11: TLabel;
    ComboEmitidos: TComboBox;
    Label12: TLabel;
    ComboOrdem: TComboBox;
    Label13: TLabel;
    ComboTipoCliente: TRxDBLookupCombo;
    SQLTipoCliente: TRxQuery;
    DSSQLTipoCliente: TDataSource;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnDuplicatasClick(Sender: TObject);
    procedure MnBloquetosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TblDuplicatasBeforeEdit(DataSet: TDataSet);
    procedure Excluirregistroselecionado1Click(Sender: TObject);
    procedure GeraTabelaTempDuplicata;
    procedure DuplicatasMercantil1Click(Sender: TObject);
    procedure ReportDuplicataMercantilPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicatasServicoPreviewFormCreate(Sender: TObject);
    procedure ReportDuplicataMercantilBeforePrint(Sender: TObject);
    procedure ReportDuplicatasServicoBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
  Total : Double;
  Parcelas : Integer;
    { Public declarations }
  end;

var
  FormTelaImpressaoDuplicata: TFormTelaImpressaoDuplicata;

implementation

uses ExtensoLib, DataModulo;

{$R *.dfm}

procedure TFormTelaImpressaoDuplicata.BtnSelecionarDocClick(
  Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close;
  SQLTotais.Close;

  case RadioPeriodo.ItemIndex of
    0 : begin
          SqlContasReceber.MacroByName('CampoData').Value := 'CR.CTRCDEMIS';
          SqlContasReceber.MacroByName('DataInicial').Value := '"' + FormatDateTime('mm/dd/yyyy',de.Date) + '"';
          SqlContasReceber.MacroByName('DataFinal').Value := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

          SQLTotais.MacroByName('CampoData').Value := 'CR.CTRCDEMIS';
          SQLTotais.MacroByName('DataInicial').Value := '"' + FormatDateTime('mm/dd/yyyy',de.Date) + '"';
          SQLTotais.MacroByName('DataFinal').Value := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
        end;

    1 : begin
          SqlContasReceber.MacroByName('CampoData').Value := 'CR.CTRCDVENC';
          SqlContasReceber.MacroByName('DataInicial').Value := '"' + FormatDateTime('mm/dd/yyyy',de.Date) + '"';
          SqlContasReceber.MacroByName('DataFinal').Value := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

          SQLTotais.MacroByName('CampoData').Value := 'CR.CTRCDVENC';
          SQLTotais.MacroByName('DataInicial').Value := '"' + FormatDateTime('mm/dd/yyyy',de.Date) + '"';
          SQLTotais.MacroByName('DataFinal').Value := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
        end;
  end;

  if (ComboEmpresa.KeyValue <> null) and (ComboEmpresa.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MEmpresa').Value := 'CR.EMPRICOD = ' + IntToStr(ComboEmpresa.KeyValue);
            SQLTotais.MacroByName('MEmpresa').Value := 'CR.EMPRICOD = ' + IntToStr(ComboEmpresa.KeyValue);
    end
  else
    begin
      SqlContasReceber.MacroByName('MEmpresa').Value := '0=0';
      SQLTotais.MacroByName('MEmpresa').Value := '0=0';
    end;

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MCliente').Value := 'CR.CLIEA13ID = ' + '"'+ ComboCliente.KeyValue + '"';
      SQLTotais.MacroByName('MCliente').Value := 'CR.CLIEA13ID = ' + '"'+ ComboCliente.KeyValue + '"';
    end
  else
    begin
      SqlContasReceber.MacroByName('MCliente').Value := '0=0';
      SQLTotais.MacroByName('MCliente').Value := '0=0';
    end;

  if (ComboTipoCliente.KeyValue <> null) and (ComboTipoCliente.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MTipoCliente').Value := 'CL.TPCLICOD = '+ ComboTipoCliente.Value;
      SQLTotais.MacroByName('MTipoCliente').Value := 'CL.TPCLICOD = '+ ComboTipoCliente.Value;
    end
  else
    begin
      SqlContasReceber.MacroByName('MTipoCliente').Value := '0=0';
      SQLTotais.MacroByName('MTipoCliente').Value := '0=0';
    end;

  if (ComboTipoDocumento.KeyValue <> null) and (ComboTipoDocumento.KeyValue > 0) then
    begin
      SqlContasReceber.MacroByName('MTipoDocumento').Value := 'CR.TPDCICOD = ' + ComboTipoDocumento.KeyValue;
      SQLTotais.MacroByName('MTipoDocumento').Value        := 'CR.TPDCICOD = ' + ComboTipoDocumento.KeyValue;
    end
  else
    begin
      SqlContasReceber.MacroByName('MTipoDocumento').Value := '0=0';
      SQLTotais.MacroByName('MTipoDocumento').Value        := '0=0';
    end;

  SqlContasReceber.MacroByName('MEmitidos').Value := '0=0';
  SqlContasReceber.MacroByName('MEmitidos').Value := '0=0';
  case ComboEmitidos.ItemIndex of
    0 : SqlContasReceber.MacroByName('MEmitidos').Value := 'CR.CTRCCEMITIDOBOLETO = "S"';
    1 : SqlContasReceber.MacroByName('MEmitidos').Value := 'CR.CTRCCEMITIDOBOLETO = "N"';
  end;
  case ComboOrdem.ItemIndex of
    0 : SqlContasReceber.MacroByName('MOrdem').Value := 'CL.CLIEA60RAZAOSOC';
    1 : SqlContasReceber.MacroByName('MOrdem').Value := 'CR.CTRCA30NRODUPLICBANCO';
  end;

  Total := 0;
  Parcelas := 0;
  SQLContasReceber.Open;
  SQLTotais.Open;
  SQLTotais.First;
  while not SQLTotais.Eof do
    begin
      Total := Total + SQLTotais.FieldByName('TotalDocumento').AsFloat;
      Parcelas := Parcelas + SQLTotais.FieldByName('NROPARCELAS').AsInteger;
      SQLTotais.Next;
    end;
  TotalContasReceber.Text := FormatFloat('###0.00"',Total);
  EditParcelas.Text := IntToStr(Parcelas);
end;

procedure TFormTelaImpressaoDuplicata.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLTipoCliente.Active then SQLTipoCliente.Open;
  if not SQLEmpresa.Active then SQLEmpresa.Open;
  if not SQLTipoDocumento.Active then SQLTipoDocumento.Open;  
  De.Date := Date;
  Ate.Date := Date;
  ComboEmpresa.Value := EmpresaPadrao;
end;

procedure TFormTelaImpressaoDuplicata.MnDuplicatasClick(Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  // IMPRIME
  if DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString <> '' then
    begin
      if FileExists(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString) then
        ShellExecute(0,'Open',PChar(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString),PChar(ComboEmpresa.Value),PChar(DM.PathAplicacao),SW_NORMAL)
      else
        ReportDuplicatasServico.Print;
    end
  else
    ReportDuplicatasServico.Print;
end;

procedure TFormTelaImpressaoDuplicata.MnBloquetosClick(Sender: TObject);
begin
  inherited;
  if ComboBloqueto.Text = '' then
    begin
      ShowMessage('Você deve selecionar um bloqueto !');
      ComboBloqueto.SetFocus;
      Abort;
    end;

  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasNumeroDocParc.AsString         := dm.SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"'+SQLContasReceberNOFIA13ID.AsString+'"') + '-' + SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;
      TblDuplicatasLocPagto.AsString              := EditLocalPagto.Text;
      TblDuplicatasEndPagto.AsString              := EditEndPagto.Text;
      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 2, 85, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat       := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat       := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := MemoInst.Lines.Text;
      TblDuplicatasDocumentos.AsString            := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','"' + SQLContasReceberDUPLA13ID.AsString + '"' );
      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
      TblDuplicatas.Close;
    Report.WindowStyle.Title    := 'Emissão de Documentos';
    Report.ReportTitle          := 'Emissão de Documentos';
    Report.ReportName           := Dm.PathAplicacao + 'Bloquetos\' + ComboBloqueto.Text;
    Report.Execute;
    if Pergunta('SIM','Deseja trocar o status destes Boletos para Emitidos?') then
      begin
        SQLContasReceber.First;
        while not SQLContasReceber.Eof do
          begin
            DM.SQLTemplate.Close;
            DM.SQLTemplate.Sql.Clear;
            DM.SQLTemplate.Sql.Add('UPDATE CONTASRECEBER SET CTRCCEMITIDOBOLETO = "S"'+' Where CTRCA13ID = ' + '"' + SQLContasReceberCTRCA13ID.Value + '"') ;
            DM.SQLTemplate.ExecSql;
            DM.SQLTemplate.Close;
            SQLContasReceber.Next;
          end;
      end;
end;

procedure TFormTelaImpressaoDuplicata.FormActivate(Sender: TObject);
begin
  inherited;
  if DirectoryExists(DM.PathAplicacao + 'Bloquetos') then
    begin
      FileList.Directory := DM.PathAplicacao + 'Bloquetos';
      ComboBloqueto.Clear;
      ComboBloqueto.Items := FileList.Items;
      ComboBloqueto.Update;
    end;
end;

procedure TFormTelaImpressaoDuplicata.TblDuplicatasBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormTelaImpressaoDuplicata.Excluirregistroselecionado1Click(
  Sender: TObject);
begin
  inherited;
  EditParcelas.Text := IntToStr(StrToInt(EditParcelas.Text)- 1);
  TotalContasReceber.Text := FloatToStr(StrToFloat(TotalContasReceber.Text)- SQLContasReceberVALORTOTAL.AsFloat);
  SQLContasReceber.Delete;

end;

procedure TFormTelaImpressaoDuplicata.GeraTabelaTempDuplicata;
var
  FileStream : TFileStream;
  BlobStream : TStream;

begin
  try
    TblDuplicatas.Close;
    TblDuplicatas.DeleteTable;
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  except
    TblDuplicatas.CreateTable;
    TblDuplicatas.Open;
  end;

  SQLContasReceber.First;

  while not SQLContasReceber.Eof do
    begin
      TblDuplicatas.Append;
      TblDuplicatasEMPRICOD.AsString              := SQLContasReceberEMPRICOD.AsString;
      TblDuplicatasCTRCA13ID.AsString             := SQLContasReceberCTRCA13ID.AsString;
      TblDuplicatasCLIEA13ID.AsString             := SQLContasReceberCLIEA13ID.AsString;
      TblDuplicatasNOFIA13ID.AsString             := SQLContasReceberNOFIA13ID.AsString;
      TblDuplicatasCTRCN2VLR.AsString             := SQLContasReceberCTRCN2VLR.AsString;
      TblDuplicatasCTRCDEMIS.AsString             := SQLContasReceberCTRCDEMIS.AsString;
      TblDuplicatasCTRCDVENC.AsString             := SQLContasReceberCTRCDVENC.AsString;
      TblDuplicatasCTRCINROPARC.AsString          := SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCTRCN2DESCFIN.AsString         := SQLContasReceberCTRCN2DESCFIN.AsString;
      TblDuplicatasCTRCA30NRODUPLICBANCO.AsString := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString;
      TblDuplicatasNumeroDocParc.AsString         := SQLContasReceberCTRCA30NRODUPLICBANCO.AsString + ' - ' + SQLContasReceberCTRCINROPARC.AsString;
      TblDuplicatasCLIEA14CGC.AsString            := SQLContasReceberCLIEA14CGC.AsString;
      TblDuplicatasCLIEA20IE.AsString             := SQLContasReceberCLIEA20IE.AsString;
      TblDuplicatasCLIEA11CPF.AsString            := SQLContasReceberCLIEA11CPF.AsString;
      TblDuplicatasCLIEA10RG.AsString             := SQLContasReceberCLIEA10RG.AsString;
      TblDuplicatasCLIEA60RAZAOSOC.AsString       := SQLContasReceberCLIEA60RAZAOSOC.AsString;
      TblDuplicatasCLIEA60NOMEFANT.AsString       := SQLContasReceberCLIEA60NOMEFANT.AsString;
      TblDuplicatasCLIEA15FONE1.AsString          := SQLContasReceberCLIEA15FONE1.AsString;
      TblDuplicatasCLIEA15FONE2.AsString          := SQLContasReceberCLIEA15FONE2.AsString;
      TblDuplicatasCLIEA15FAX.AsString            := SQLContasReceberCLIEA15FAX.AsString;
      TblDuplicatasCLIEA60ENDRES.AsString         := SQLContasReceberCLIEA60ENDRES.AsString;
      TblDuplicatasCLIEA60BAIRES.AsString         := SQLContasReceberCLIEA60BAIRES.AsString;
      TblDuplicatasCLIEA60CIDRES.AsString         := SQLContasReceberCLIEA60CIDRES.AsString;
      TblDuplicatasCLIEA2UFRES.AsString           := SQLContasReceberCLIEA2UFRES.AsString;
      TblDuplicatasCLIEA8CEPRES.AsString          := SQLContasReceberCLIEA8CEPRES.AsString;
      TblDuplicatasCLIEA60ENDCOB.AsString         := SQLContasReceberCLIEA60ENDCOB.AsString;
      TblDuplicatasCLIEA60BAICOB.AsString         := SQLContasReceberCLIEA60BAICOB.AsString;
      TblDuplicatasCLIEA60CIDCOB.AsString         := SQLContasReceberCLIEA60CIDCOB.AsString;
      TblDuplicatasCLIEA2UFCOB.AsString           := SQLContasReceberCLIEA2UFCOB.AsString;
      TblDuplicatasCLIEA8CEPCOB.AsString          := SQLContasReceberCLIEA8CEPCOB.AsString;
      TblDuplicatasAVALA60RAZAOSOC.AsString       := SQLContasReceberAVALA60RAZAOSOC.AsString;

      if CheckLocalPagto.Checked then
        TblDuplicatasLocPagto.AsString            := SQLContasReceberCLIEA60CIDCOB.AsString + '-' + SQLContasReceberCLIEA2UFCOB.AsString
      else
        TblDuplicatasLocPagto.AsString            := EditLocalPagto.Text;

      if CheckEndCob.Checked then
        TblDuplicatasEndPagto.AsString            := SQLContasReceberCLIEA60ENDCOB.AsString + '-' + SQLContasReceberCLIEA60BAICOB.AsString + ' - ' + SQLContasReceberCLIEA8CEPCOB.AsString
      else
        TblDuplicatasEndPagto.AsString            := EditEndPagto.Text;

      ValorExtenso(VExt,TblDuplicatasCTRCN2VLR.Value, '', '', 02, 70, '*',3);
      TblDuplicatasExtensoLin1.AsString           := VExt[0];
      TblDuplicatasExtensoLin2.AsString           := VExt[1];

      if SQLTotais.Locate('CTRCA30NRODUPLICBANCO',TblDuplicatasCTRCA30NRODUPLICBANCO.AsString,[]) then
        TblDuplicatasTotalDocumento.AsFloat       := SQLTotaisTOTALDOCUMENTO.AsFloat
      else
        TblDuplicatasTotalDocumento.AsFloat       := SQLContasReceberCTRCN2VLR.AsFloat;

      TblDuplicatasInstrucoes.AsString            := MemoInst.Lines.Text;
      TblDuplicatasDocumentos.AsString            := SQLLocate('DUPLICATA','DUPLA13ID','DUPLA254DOCS','"' + SQLContasReceberDUPLA13ID.AsString + '"' );

      TblDuplicatas.Post;
      SQLContasReceber.Next;
    end;
end;
procedure TFormTelaImpressaoDuplicata.DuplicatasMercantil1Click(
  Sender: TObject);
begin
  inherited;
  GeraTabelaTempDuplicata;
  // IMPRIME
  if DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString <> '' then
    begin
      if FileExists(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString) then
        ShellExecute(0,'Open',PChar(DM.SQLConfigGeralCFGEA255EXEDUPLICATA.AsString),PChar(ComboEmpresa.Value),PChar(DM.PathAplicacao),SW_NORMAL)
      else
        ReportDuplicataMercantil.Print;
    end
  else
    ReportDuplicataMercantil.Print;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicataMercantil.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ReportDuplicatasServico.PreviewForm.WindowState  := wsMaximized;
end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicataMercantilBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;

begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageMercantil.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageMercantil.Picture:=nil;

end;

procedure TFormTelaImpressaoDuplicata.ReportDuplicatasServicoBeforePrint(
  Sender: TObject);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;

begin
  inherited;
  // Mostra Imagem Associada a empresa
  if SQLEmpresaEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream:= SQLEmpresa.CreateBlobStream(SQLEmpresaEMPRBLOGOTIPO,bmRead);
    JPEGImage := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ppImageServico.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ppImageServico.Picture:=nil;

end;

end.
