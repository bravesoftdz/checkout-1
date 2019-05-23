unit TelaGeracaoFreteIcms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, RxLookup, DB,
  DBTables, RxQuery, Buttons, jpeg, ExtCtrls, CurrEdit, UCrpe32;

type
  TFormTelaGeracaoFreteIcms = class(TFormTelaGeralTEMPLATE)
    SQLPesquisa: TRxQuery;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    DSSQLCFOP: TDataSource;
    Label33: TLabel;
    RxDBLookupComboNatOP: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    edBaseCalculo: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    edPercentual: TCurrencyEdit;
    Label6: TLabel;
    edTotal: TCurrencyEdit;
    btPesquisar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SQLItens: TRxQuery;
    SQLItensFRETA13ID: TStringField;
    SQLItensFRITICOD: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensPRODN2VLR: TBCDField;
    SQLItensFRITN2ICMS: TBCDField;
    SQLItensFRITN2VLRICMS: TBCDField;
    SQLItensUNIDICOD: TIntegerField;
    SQLItensFRITN3QTDE: TBCDField;
    SQLItensFRITA30ESPECIE: TStringField;
    SQLItensFRITA30MARCA: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    SQLItensPENDENTE: TStringField;
    SQLItensFRITN3OUTROS: TBCDField;
    SQLItensFRITANATCARGA: TStringField;
    SQLItensFRITN3PESO: TBCDField;
    SQLItensFRITN2VLRNOTA: TBCDField;
    SQLItensFRITINOTAFISCAL: TStringField;
    SQLItensFRITN2VLRVALOREM: TBCDField;
    SQLItensCFOPA5COD: TStringField;
    SQLItensFRITN2VOLUMES: TBCDField;
    SQLItensFRITN2PEDAGIO: TBCDField;
    SQLItensFRITN4PERCVALOREM: TBCDField;
    SQLItensFRITN2PESOVLR: TBCDField;
    SQLItensFRITCCOLETA: TStringField;
    SQLItensFRITCENTREGA: TStringField;
    SQLItensTBFTICOD: TIntegerField;
    SQLItensCIDAICOD: TIntegerField;
    SQLItensFRITN3CAT: TBCDField;
    SQLPesquisaSUM: TBCDField;
    DSTemplate: TDataSource;
    SQLCount: TRxQuery;
    DSSQLItens: TDataSource;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    RxDBLookupComboCliente: TRxDBLookupCombo;
    Label7: TLabel;
    SQLTemplate: TRxQuery;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateFRETICOD: TIntegerField;
    SQLTemplateFRETCSTATUS: TStringField;
    SQLTemplateCLIEA13IDREMETE: TStringField;
    SQLTemplateCLIEA13IDDESTINO: TStringField;
    SQLTemplateCLIEA13IDCONSIG: TStringField;
    SQLTemplateFRETCPAGO: TStringField;
    SQLTemplateFRETTOBS: TStringField;
    SQLTemplateFRETN2VLR: TBCDField;
    SQLTemplateFRETN2VLRTOTAL: TBCDField;
    SQLTemplateFRETN3QTDETOTAL: TBCDField;
    SQLTemplateFRETN2BASECALCULO: TBCDField;
    SQLTemplateFRETN2ICMS: TBCDField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateVEICA13ID: TStringField;
    SQLTemplateFRETN2VLRCOMISSAO: TBCDField;
    SQLTemplateCLIEA13IDREDESPACH: TStringField;
    SQLTemplateFRETINROFORM: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateFUNCA13ID: TStringField;
    Report: TCrpe;
    TblFrete: TTable;
    TblFreteRemeNome: TStringField;
    TblFreteRemeEnd: TStringField;
    TblFreteRemeCidade: TStringField;
    TblFreteRemeCnpj: TStringField;
    TblFreteRemeIE: TStringField;
    TblFreteRemeUF: TStringField;
    TblFreteDestNome: TStringField;
    TblFreteDestEnd: TStringField;
    TblFreteDestCidade: TStringField;
    TblFreteDestCnpj: TStringField;
    TblFreteDestIE: TStringField;
    TblFreteDestUf: TStringField;
    TblFreteConsNome: TStringField;
    TblFreteConsEnd: TStringField;
    TblFreteConsCidade: TStringField;
    TblFreteConsUf: TStringField;
    TblFreteConsCNPJ: TStringField;
    TblFreteConsIE: TStringField;
    TblFreteProduto: TStringField;
    TblFreteNotaFiscal: TStringField;
    TblFreteQuantidade: TFloatField;
    TblFreteUnidade: TStringField;
    TblFreteValorFrete: TFloatField;
    TblFreteValorTotalFrete: TFloatField;
    TblFretePagar: TStringField;
    TblFretePago: TStringField;
    TblFreteEspecie: TStringField;
    TblFreteObservacao: TStringField;
    TblFreteVlrColeta: TFloatField;
    TblFreteVlrEntrega: TFloatField;
    TblFreteNaturezaCarga: TStringField;
    TblFretePeso: TFloatField;
    TblFreteBaseCalculoIcms: TFloatField;
    TblFreteIcms: TFloatField;
    TblFretePercIcms: TFloatField;
    TblFreteDescrIcms: TStringField;
    TblFretePesoTotal: TFloatField;
    TblFreteNotasTotalVlr: TFloatField;
    TblFreteNatOperacao: TStringField;
    TblFreteCFOP: TStringField;
    TblFreteQtdeVolumes: TFloatField;
    TblFreteFreteValorem: TFloatField;
    TblFreteFretePedagio: TFloatField;
    TblFreteRedespCNPJ: TStringField;
    TblFreteRedesNome: TStringField;
    TblFreteResdepEnd: TStringField;
    TblFreteRedespCidade: TStringField;
    TblFreteRedespUF: TStringField;
    TblFreteRedespIE: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLItensNewRecord(DataSet: TDataSet);
    procedure SQLItensBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoFreteIcms: TFormTelaGeracaoFreteIcms;

implementation

uses DataModulo, UnitLibrary, VarSYS;

{$R *.dfm}

procedure TFormTelaGeracaoFreteIcms.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCFOP.Active    then SQLCFOP.Active    := True;
  if not SQLCliente.Active then SQLCliente.Active := True;

end;

procedure TFormTelaGeracaoFreteIcms.btPesquisarClick(Sender: TObject);
begin
  inherited;
  if not (RxDBLookupComboCliente.Text <> '...') then
     begin
        RxDBLookupComboCliente.SetFocus;
        Informa('Informe o Cliente');
        Abort
     end;

  if not (RxDBLookupComboNatOP.Text <> '...') then
     begin
        RxDBLookupComboNatOP.SetFocus;
        Informa('Informe a Natureza de Operação');
        Abort
     end;

  if (De.Date > Ate.Date) then
     begin
        De.SetFocus;
        Informa('A Data inicial deve ser Menor que a Data Final.');
        Abort;
     end;

  SQLPesquisa.Close;
  SQLPesquisa.MacroByName('MData').AsString := ' REGISTRO >= Cast("' + FormatDateTime('mm/dd/yyyy', De.Date) + ' 00:00:00" as TimeStamp) and ' +
                                               ' REGISTRO <= Cast("' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ' 23:59:59" as TimeStamp)';
  SQLPesquisa.Open;

  if SQLPesquisaSUM.AsFloat > 0 then
     begin
        edBaseCalculo.Value := SQLPesquisaSUM.AsFloat;

        if (edBaseCalculo.Value > 0) and (edPercentual.Value > 0) then
           edTotal.Value := edBaseCalculo.Value * (edPercentual.Value / 100);
     end;
end;

procedure TFormTelaGeracaoFreteIcms.SpeedButton2Click(Sender: TObject);
Var Produto : String;
begin
  inherited;
  btPesquisar.Click;

  if edTotal.Value <= 0 then
     begin
      Informa('O Valor Total não pode ser Menor ou Igual a 0 (Zero)');
      Abort;
     end;

  if not SQLTemplate.Active then SQLTemplate.Active := True;
  SQLTemplate.Append;
  SQLTemplate.Post;

  if not SQLItens.Active then SQLItens.Active := True;
  SQLItens.Append;
  SQLItens.Post;



  TblFrete.Close;
  try
    TblFrete.DeleteTable;
    TblFrete.CreateTable;
  except
    TblFrete.CreateTable;
  end;
  TblFrete.Open;

  TblFrete.Append;
  TblFreteRemeNome.AsString   := SQLClienteCLIEA60RAZAOSOC.AsString;
  TblFreteRemeEnd.AsString    := SQLClienteCLIEA60ENDRES.AsString;
  TblFreteRemeCidade.AsString := SQLClienteCLIEA60CIDRES.AsString;
  TblFreteRemeUF.AsString     := SQLClienteCLIEA20IE.AsString;
  TblFreteRemeCnpj.AsString   := SQLClienteCLIEA14CGC.AsString;
  TblFreteRemeIE.AsString     := SQLClienteCLIEA20IE.AsString;

  TblFreteDestNome.AsString   := SQLClienteCLIEA60RAZAOSOC.AsString;
  TblFreteDestEnd.AsString    := SQLClienteCLIEA60ENDRES.AsString;
  TblFreteDestCidade.AsString := SQLClienteCLIEA60CIDRES.AsString;
  TblFreteDestCnpj.AsString   := SQLClienteCLIEA14CGC.AsString;
  TblFreteDestIE.AsString     := SQLClienteCLIEA20IE.AsString;
  TblFreteDestUf.AsString     := SQLClienteCLIEA20IE.AsString;

  TblFreteConsNome.AsString   := '';
  TblFreteConsEnd.AsString    := '';
  TblFreteConsCidade.AsString := '';
  TblFreteConsUf.AsString     := '';
  TblFreteConsCNPJ.AsString   := '';
  TblFreteConsIE.AsString     := '';

  if SQLTemplateFRETCPAGO.AsString = 'S' then
    begin
       TblFretePago.AsString       := '';
       TblFretePagar.AsString      := 'X';
    end
  else
    begin
      TblFretePago.AsString       := 'X';
      TblFretePagar.AsString      := '';
    end;

  Produto := SQLLocate('FRETEITEM','FRETA13ID','PRODICOD','"' + SQLTemplateFRETA13ID.AsString + '"');

  if Produto <> '' then
    TblFreteProduto.AsString    := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',Produto);

  SQLCount.Close;
  SQLCount.SQL.Text := 'select count(FRETA13ID) from FRETEITEM where FRETA13ID = "' + SQLTemplateFRETA13ID.AsString + '"';
  SQLCount.Open;

  TblFreteObservacao.AsString     := SQLTemplateFRETTOBS.AsString;
  if SQLCount.FieldByName('COUNT').AsInteger > 1 then
     TblFreteNotaFiscal.AsString    := 'ANEXOS'
  else
     if Length(SQLItensFRITINOTAFISCAL.AsString) < 15 then
        TblFreteNotaFiscal.AsString   := SQLItensFRITINOTAFISCAL.AsString
     else
        begin
          TblFreteObservacao.AsString := TblFreteObservacao.AsString + char(#13) + 'Notas: ' + SQLItensFRITINOTAFISCAL.AsString;
          TblFreteNotaFiscal.AsString := 'VIDE OBS';
        end;

  TblFreteQuantidade.AsFloat      := SQLTemplateFRETN3QTDETOTAL.AsFloat;
  TblFreteValorFrete.AsFloat      := 0;
  TblFreteValorTotalFrete.AsFloat := 0;
  TblFreteEspecie.AsString        := SQLLocate('FRETEITEM','FRETA13ID','FRITA30ESPECIE','"' + SQLTemplateFRETA13ID.AsString + '"');
  TblFreteUnidade.AsString        := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('FRETEITEM','FRETA13ID','UNIDICOD','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteVlrColeta.AsFloat       := StrToFloat(SQLLocate('FRETEITEM','FRETA13ID','FRITN3CAT','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteVlrEntrega.AsFloat      := StrToFloat(SQLLocate('FRETEITEM','FRETA13ID','FRITN3OUTROS','"' + SQLTemplateFRETA13ID.AsString + '"'));
  TblFreteNaturezaCarga.AsString  := SQLLocate('FRETEITEM','FRETA13ID','FRITANATCARGA','"' + SQLTemplateFRETA13ID.AsString + '"');
//  TblFretePeso.AsFloat            := SQLItensFRITN2PESOVLR.AsFloat;
  TblFreteIcms.AsFloat            := edTotal.Value;
  TblFreteBaseCalculoIcms.AsFloat := SQLTemplateFRETN2BASECALCULO.AsFloat;
  TblFretePercIcms.AsFloat        := SQLTemplateFRETN2ICMS.AsFloat;
  TblFretePesoTotal.AsFloat          := SQLItensFRITN3PESO.AsFloat;
  TblFreteNotasTotalVlr.AsFloat      := 0;
  TblFreteNatOperacao.AsString        := SQLCFOPCFOPA60DESCR.AsString;
  TblFreteCFOP.AsString               := SQLCFOPCFOPA5COD.AsString;
  TblFreteQtdeVolumes.AsFloat         := SQLItensFRITN2VOLUMES.AsFloat;
  TblFreteFreteValorem.AsFloat        := SQLItensFRITN2VLRVALOREM.AsFloat;
  TblFreteFretePedagio.AsFloat        := SQLItensFRITN2PEDAGIO.AsFloat;

  TblFrete.Post;


//  BatchMove.Execute;
  if not Dm.SQLConfigGeral.Active then Dm.SQLConfigGeral.Open;
  Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\FreteJatex.rpt';
  Report.ReportTitle       :=  'Conhecimento de Frete';
  Report.WindowStyle.Title :=  'Conhecimento de Frete';
  Report.Execute;

end;

procedure TFormTelaGeracaoFreteIcms.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FRETCPAGO').AsString := 'N';
  DataSet.FieldByName('FRETCSTATUS').AsString := 'A';
  DataSet.FieldByName('FRETN3QTDETOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLR').AsFloat := 0;
  DataSet.FieldByName('FRETN2VLRTOTAL').AsFloat := 0;
  DataSet.FieldByName('FRETN2BASECALCULO').AsFloat := edBaseCalculo.Value;
  DataSet.FieldByName('FRETN2VLRCOMISSAO').AsFloat := 0;
  DataSet.FieldByName('FRETN2ICMS').AsFloat := edPercentual.Value;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;
  DataSet.FieldByName('TERMICOD').AsInteger := TerminalCorrente;

  SQLCount.Close;
  SQLCount.SQL.Text := 'select max(FRETINROFORM) AS ProxForm from FRETE';
  SQLCount.Open;

  if SQLCount.FieldByName('ProxForm').IsNull then
     DataSet.FieldByName('FRETINROFORM').AsInteger := 1
  else
     DataSet.FieldByName('FRETINROFORM').AsInteger := SQLCount.FieldByName('ProxForm').AsInteger + 1;
end;

procedure TFormTelaGeracaoFreteIcms.SQLItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLItensFRITN2VLRNOTA.AsFloat := 0;
  SQLItensFRITN3QTDE.AsFloat    := 0;
  SQLItensFRITN3OUTROS.AsFloat  := 0;
  SQLItensFRITN3CAT.AsFloat     := 0;
  SQLItensFRITN3QTDE.AsFloat    := 1;
  SQLItensFRITN2ICMS.AsFloat    := 0;
  SQLItensFRITN3PESO.AsFloat    := 0;
  SQLItensFRITN4PERCVALOREM.AsFloat := 0;
  SQLItensFRITN2PEDAGIO.AsFloat     := 0;
  SQLItensFRITN2VOLUMES.AsFloat     := 0;
  SQLItensFRITA30ESPECIE.AsString   := 'CAIXA';
  SQLItensFRITCCOLETA.AsString      := 'N';
  SQLItensFRITCENTREGA.AsString     := 'N';
  SQLItensFRITN2PESOVLR.AsFloat     := 0;
  if (SQLItens.State in [dsInsert]) then
     begin
        SQLCount.Close;
        SQLCount.SQL.Text := 'select Max(FRITICOD) as MaxCount from FRETEITEM';
        SQLCount.Open;

        if (SQLCount.FieldByName('MaxCount').AsInteger = 0) or (SQLCount.FieldByName('MaxCount').AsInteger = null) then
           SQLItensFRITICOD.AsInteger := 1
        else
           SQLItensFRITICOD.AsInteger := SQLCount.FieldByName('MaxCount').AsInteger + 1;
        SQLItensPENDENTE.AsString := 'S';
        SQLItensREGISTRO.AsDateTime := Now;
     end;
end;

procedure TFormTelaGeracaoFreteIcms.SQLItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLItensFRETA13ID.AsString := SQLTemplateFRETA13ID.AsString;
  DM.CodigoAutomatico('FRETEITEM', DSSQLItens, SQLItens, 2,0);
  SQLItensCFOPA5COD.AsString := RxDBLookupComboNatOP.KeyValue;
  SQLItensPRODN2VLR.AsFloat  := edTotal.Value;
  SQLItensFRITN2ICMS.AsFloat := edPercentual.Value;
  SQLItensFRITN2VLRICMS.AsFloat := edTotal.Value/((100 - SQLItensFRITN2ICMS.AsFloat)/100) - edTotal.Value;
  SQLItensFRITN3QTDE.AsFloat    := 1;
  SQLItensFRITN2VLRNOTA.AsFloat := edBaseCalculo.Value;
  SQLItensPRODN2VLR.AsFloat     := edTotal.Value;
end;

procedure TFormTelaGeracaoFreteIcms.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [dsInsert] then
     DM.CodigoAutomatico('FRETE', DSTemplate, SQLTemplate, 3,0);
  SQLTemplateCLIEA13IDREMETE.AsString := RxDBLookupComboCliente.KeyValue;
  SQLTemplateCLIEA13IDDESTINO.AsString := RxDBLookupComboCliente.KeyValue;
end;

end.
