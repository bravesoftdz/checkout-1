unit CadastroGraficaOrdemItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, CurrEdit, Placemnt, RxLookup;

type
  TFormCadastroGraficaOrdemItem = class(TFormCadastroTEMPLATE)
    SQLIcms: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLAtualizaItemPedido: TRxQuery;
    SQLGeral: TRxQuery;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label33: TLabel;
    DBEdit14: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit16: TEvDBNumEdit;
    DBEdit17: TEvDBNumEdit;
    DBEdit18: TEvDBNumEdit;
    DBEdit19: TEvDBNumEdit;
    DBEdit20: TEvDBNumEdit;
    DBEdit21: TEvDBNumEdit;
    DBEdit22: TEvDBNumEdit;
    DBEdit23: TEvDBNumEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    DBEdit27: TEvDBNumEdit;
    SQLTemplateORDITENSID: TIntegerField;
    SQLTemplateGRUPO_SERVICO: TIntegerField;
    SQLTemplateGARANTIA: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateORITN3QUANT: TBCDField;
    SQLTemplateORITN2VLRUNIT: TBCDField;
    SQLTemplateORITN2PERCDESC: TBCDField;
    SQLTemplateORITN2VLRDESC: TBCDField;
    SQLTemplateORITN2PERCICMS: TBCDField;
    SQLTemplateORITN2BASEICMS: TBCDField;
    SQLTemplateORITN2VLRICMS: TBCDField;
    SQLTemplateORITN2PERCSUBS: TBCDField;
    SQLTemplateORITN2BASESUBS: TBCDField;
    SQLTemplateORITN2VLRSUBS: TBCDField;
    SQLTemplateORITN2PERCIPI: TBCDField;
    SQLTemplateORITN2VLRIPI: TBCDField;
    SQLTemplateORITN2PERCISSQN: TBCDField;
    SQLTemplateORITN2VLRISSQN: TBCDField;
    SQLTemplateORITN2VLRFRETE: TBCDField;
    SQLTemplateORITN2VLRLUCRO: TBCDField;
    SQLTemplateORITN2PERCREDUCAO: TBCDField;
    SQLTemplateORITN3TOTVEND: TBCDField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplateORITN3QUANTVEND: TBCDField;
    SQLTemplateORITN2PERCCOMIS: TBCDField;
    SQLTemplateCPITICPOS: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateLOTEA30NRO: TStringField;
    SQLTemplateORITA254OBS: TStringField;
    SQLTemplateCFOPA5CODAUX: TStringField;
    Label9: TLabel;
    BtnProduto: TSpeedButton;
    Label28: TLabel;
    LSaldo: TLabel;
    SaldoAtual: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateTotalItemCalc: TBCDField;
    SQLTemplateReferenciaLookup: TStringField;
    SQLTemplateServicoLookup: TStringField;
    SQLTemplateControlaSerieLookup: TStringField;
    SQLTemplateUnidadeLookup: TStringField;
    SQLTemplateValorCompraLookup: TBCDField;
    SQLTemplateAgrupGradeLookup: TIntegerField;
    SQLTemplateGradeCodLookup: TIntegerField;
    SQLTemplatePesoBrutoLookup: TBCDField;
    SQLTemplatePesoLiquidoLookup: TBCDField;
    SQLTemplateCodAntigoLookup: TStringField;
    SQLNumeroItens: TQuery;
    SQLTemplateORDID: TIntegerField;
    SQLTemplateORMCTIPOSERVICOID: TIntegerField;
    SQLTipoServico: TRxQuery;
    SQLTipoServicoORMCTIPOSERVICOID: TIntegerField;
    SQLTipoServicoORMCA30TIPOSERVICO: TStringField;
    SQLTemplateTipoServicoLookup: TStringField;
    PanelServico: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;

    procedure EditProdutoEnter(Sender: TObject);
    procedure EditProdutoExit(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateORITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateORITN2VLRIPIChange(Sender: TField);
    procedure SQLTemplateORITN2PERCIPIChange(Sender: TField);
    procedure SQLTemplateORITN3QUANTChange(Sender: TField);
    procedure SQLTemplateORITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplateORITN2VLRDESCSetText(Sender: TField;
      const Text: String);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure SQLTemplateORITN2PERCICMSChange(Sender: TField);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateORITN2PERCREDUCAOChange(Sender: TField);
  private
    { Private declarations }
    Ocupado:Boolean;
    NovoTotalQuant,
    NovoTotalPesoBruto,
    NovoTotalPesoLiquido,
    NovoTotalItem,
    NovoTotalDesc,
    NovoTotalBASCALCICMS,
    NovoTotalVLRICMS,
    NovoTotalBASCALCSUBS,
    NovoTotalVLRSUBS,
    NovoTotalBASCALCCIPI,
    NovoTotalVLRIPI,
    NovoTotalVLRSERVICO,
    NovoTotalISSQN:Double;
    TotalQuant,
    TotalPesoBruto,
    TotalPesoLiquido,
    TotalItem,
    TotalDesc,
    TotalBASCALCICMS,
    TotalVLRICMS,
    TotalBASCALCSUBS,
    TotalVLRSUBS,
    TotalBASCALCCIPI,
    TotalVLRIPI,
    TotalVLRSERVICO,
    TotalISSQN:Double;
    CodigoPedido : String;
    PosicaoItem  : Integer;
    QtdePed, NovaQtdePed,Reducao : Double;
    TemProdutoSemSubsTrib, TemProdutoComSubsTrib : Boolean;
    procedure CalculaImpostos;
    Procedure AtualizaPedidoVenda(CodigoPedidoVenda:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
  public
    { Public declarations }
  end;

var
  FormCadastroGraficaOrdemItem: TFormCadastroGraficaOrdemItem;

implementation

uses TelaConsultaProduto, DataModulo, TelaLancamentoGradeNotaFiscal,
  UnitLibrary, TelaSaldoPorLote, TelaImportaItens,
  SearchLibrary, CadastroProdutos, TelaProdutoNumeroSerie,
  TelaNotaFiscalItemFiltro;

{$R *.dfm}

Procedure TFormCadastroGraficaOrdemItem.CalculaImpostos;
Var
  Substituicao:Double;
  UFEmit, UFDest : String;
Begin
  SQLTemplateORITN2VLRLUCRO.asFloat := (SQLTemplateORITN2VLRUNIT.asFloat - SQLTemplateValorCompraLookUp.asFloat) * SQLTemplateORITN3QUANT.asFloat;
  SQLTemplateORITN2VLRDESC.asFloat  := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) * (SQLTemplateORITN2PERCDESC.asFloat / 100);
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    SQLTemplateORITN2VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateORITN2PERCIPI.asFloat / 100);
  SQLTemplateORITN2VLRISSQN.asFloat  := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateORITN2PERCISSQN.asFloat / 100);
  If (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') and (SQLTemplateORITN2PERCICMS.AsFloat > 0) Then
    Begin
      SQLTemplateORITN2BASEICMS.asFloat     := SQLTemplateTotalItemCalc.asFloat;
      //CALCULAR NOVA BASE DE ICMS BASEADO EM OUTRO CAMPO NO ICMS.
      UFEmit := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',EmpresaPadrao);
      UFDest := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES','"'+DSMasterTemplate.DataSet.FieldbyName('CLIEA13ID').AsString+'"');
      try
        if Reducao <= 0 then
          REDUCAO := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString)));
      except
        REDUCAO := 0;
      end;

      if (REDUCAO > 0) and (UFEmit = UFDest) then
        begin
          SQLTemplateORITN2BASEICMS.asFloat := SQLTemplateTotalItemCalc.asFloat * (REDUCAO / 100);
        end;

      SQLTemplateORITN2VLRICMS.asFloat    := SQLTemplateORITN2BASEICMS.asFloat * (SQLTemplateORITN2PERCICMS.asFloat / 100);
      If SQLTemplateORITN2PERCSUBS.asFloat>0 Then
        Begin
          SQLTemplateORITN2BASESUBS.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateORITN2PERCREDUCAO.asFloat/100) * (1+(SQLTemplateORITN2PERCSUBS.asFloat/100));
          SQLTemplateORITN2VLRSUBS.asFloat    := (SQLTemplateORITN2BASESUBS.asFloat  * (SQLTemplateORITN2PERCICMS.asFloat / 100)) - SQLTemplateORITN2VLRICMS.asFloat;
        End
      Else
        Begin
          SQLTemplateORITN2BASESUBS.asFloat   := 0;
          SQLTemplateORITN2VLRSUBS.asFloat    := 0;
        End;
    End;
End;

procedure TFormCadastroGraficaOrdemItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroGraficaOrdemItem.EditProdutoExit(Sender: TObject);
begin
  inherited;
  IF not (SQLTemplate.State In ([dsInsert, dsEdit])) then
    Exit;
  if (Copy(EditProduto.Text,0,1) >= '0') and(Copy(EditProduto.Text,0,1) <= '9') then
  begin
    if Pos('.',EditProduto.Text) > 0 then // é posição de estoque
      SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorCodigoAntigo(EditProduto.Text);
    if Pos('.',EditProduto.Text) = 0 then // é codigo ou codigo de barras
      FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
  end else
    FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
end;

procedure TFormCadastroGraficaOrdemItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroGraficaOrdemItem.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('STATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);

end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplatePRODICODChange(
  Sender: TField);
var
  BaseCalculo:Double;
  BKPBookMark:TBookMark;
begin
  inherited;
  EditProduto.Text := SQLTemplate.FieldByName((Sender as TField).FieldName).AsString;
  if DM.SQLTemplate.FindField('PRODCSERVICO').asstring = 'S' then
    PanelServico.Visible := True
  else
    PanelServico.Visible := False;

  If DM.GerandoNotaFiscal Then Exit;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').AsString],1)) Then
    Begin
      // Verifica Produto Com Subs. Tributária
      if (not DM.GerandoNotaFiscal) and (not DM.ImportandoColetor) and (not DM.ImportandoPedidoVenda) then
        begin
          if TemProdutoSemSubsTrib then
            if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString = 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  Informa('Já existe(m) produto(s) SEM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos COM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  SQLTemplate.Cancel;
                  Abort;
                  Exit;
                end;
          if TemProdutoComSubsTrib then
            if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString <> 'S' then
              if DM.SQLConfigVendaCFVECINFPRODSUBTRI.AsString = 'S' then
                begin
                  Informa('Já existe(m) produto(s) COM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos SEM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
                  SQLTemplate.Cancel;
                  Abort;
                  Exit;
                end;
        end;

      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          BaseCalculo:=0;
          If SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString = '' Then
            Begin
              ShowMessage('Tipo de movimentação não tem campo para cálculo de ICMS!');
              Abort;
            End
          Else
            If DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat <> 0 Then
              If (AnsiUpperCase(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString)='PRODN3VLRVENDA') Then
                SQLTemplateORITN2VLRUNIT.asFloat := RetornaPreco(DM.SQLTemplate,DM.SQLConfigVendaTPRCICOD.asString,SQLTemplate.DataSource.DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').asString)
              Else
                SQLTemplateORITN2VLRUNIT.asFloat := DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat;
          If DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asVariant = Null Then
            If (SQLTemplate.DataSource.DataSet.FindField('DATA').asDateTime - DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asDateTime < 365) Then
              SQLTemplateORITN2VLRUNIT.asFloat := SQLTemplateORITN2VLRUNIT.asFloat - (SQLTemplateORITN2VLRUNIT.asFloat * 0.20);

          If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
            Begin
              If (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) Then
                SQLTemplateORITN2PERCIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
              SQLTemplateORITN2VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateORITN2PERCIPI.asFloat / 100);
            End;

          If DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' Then
            Begin
              SQLTemplateORITN2PERCISSQN.asFloat := DM.SQLConfigVendaCFVEN3ALIQISSQN.asFloat;
              SQLTemplateORITN2VLRISSQN.asFloat  := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateORITN2PERCISSQN.asFloat / 100);
            End;

          If (DM.SQLTemplate.FindField('ICMSICOD').asVariant<>Null) AND
             (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') Then
            Begin
              SQLICMS.Close;
              SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
              SQLICMS.Open;
              If SQLTemplate.DataSource.DataSet.FieldByName('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
                Begin
                  SQLICMSUF.Close;
                  SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
                  SQLICMSUF.Open;
                  SQLTemplateORITN2PERCICMS.asFloat     := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;

                  If (SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').asVariant<>null) and
                     (SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').AsString <>'')   Then
                     begin
                        Case SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').AsString[1] Of
                          'C':Begin
                                SQLTemplateORITN2PERCSUBS.asFloat      := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
//                                SQLTemplateORITN2PERCREDUCAO.asFloat   := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                                SQLTemplateORITN2PERCREDUCAO.asFloat   := 0;
                              End;
                         end;
                     end
                  Else
                     begin
                       SQLTemplateORITN2PERCSUBS.asFloat      := 0;
                       SQLTemplateORITN2PERCREDUCAO.asFloat   := 0;
                     end;
                  SQLICMSUF.Close;
                End
              Else
                Begin
                  SQLTemplateORITN2PERCICMS.asFloat     := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
                  If (SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').asVariant<>null) and
                     (SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').AsString <>'')   Then
                    begin
                      Case SQLTemplate.DataSource.DataSet.FindField('OrigemDestinoLookUp').AsString[1] Of
                        'C':Begin
                              SQLTemplateORITN2PERCREDUCAO.asFloat  := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                              SQLTemplateORITN2PERCSUBS.asFloat     := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                            End;
                       end;
                     end
                    Else
                      begin
                        SQLTemplateORITN2PERCSUBS.asFloat      := 0;
                        SQLTemplateORITN2PERCREDUCAO.asFloat   := 0;
                      End;
                End;
              SQLICMS.Close;
            End;
          Ocupado:=False;
        End;
      If (Not DM.ImportandoPedidoVenda) and
         (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
         (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) Then
        CriaFormulario(TFormTelaLancamentoGradeNotaFiscal,'FormTelaLancamentoGradeNotaFiscal',False,False,True,'')
      else
        begin
          SaldoAtual.Caption := '0' ;
          SaldoAtual.Update;
          if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
            begin
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
              SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
              SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
              SQLGeral.Open ;
              if not SQLGeral.Eof then
                begin
                  SaldoAtual.Caption := FloatToStr(SQLGeral.FieldByName('PSLDN3QTDE').asFloat) ;
                  SaldoAtual.Update;
                  if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
                    if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
                      SaldoAtual.Font.Color := clRed ;
                  if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
                    if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
                      SaldoAtual.Font.Color := clBlue ;
                end ;
              SQLGeral.Close ;
            end ;
        end ;
    End;
    if PanelServico.Visible then
      DBEdit3.SetFocus
    else
      DBEdit9.setFocus;

end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) - SQLTemplateORITN2VLRDESC.AsFloat;
  If DM.GerandoNotaFiscal Then Exit;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant    := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant  := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant  := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('ServicoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
          DataSet.FieldByName('PesoBrutoLookup').AsVariant   := DM.SQLTemplate.FindField('PRODN3PESOBRUTO').AsVariant;
          DataSet.FieldByName('PesoLiquidoLookup').AsVariant := DM.SQLTemplate.FindField('PRODN3PESOLIQ').AsVariant;
          DataSet.FieldByName('ValorCompraLookUp').AsVariant := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant  := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('CodAntigoLookup').AsVariant   := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
          DataSet.FieldByName('UnidadeLookup').AsVariant     := DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLTemplate.FindField('UNIDICOD').AsString);
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := MensagemLookUp;
          DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
          DataSet.FieldByName('PesoBrutoLookup').AsVariant     := NULL;
          DataSet.FieldByName('PesoLiquidoLookup').AsVariant   := NULL;
          DataSet.FieldByName('ValorCompraLookUp').AsVariant   := NULL;
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := MensagemLookUp;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := MensagemLookUp;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant    := NULL;
      DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
      DataSet.FieldByName('PesoBrutoLookup').AsVariant     := NULL;
      DataSet.FieldByName('PesoLiquidoLookup').AsVariant   := NULL;
      DataSet.FieldByName('ValorCompraLookUp').AsVariant   := NULL;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
      DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
    End;

end;

procedure TFormCadastroGraficaOrdemItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'ORD_MEC_ITENS';
  NumItem := 0;
  DM.GerarNovaNota := False;
  TemProdutoComSubsTrib := False;
  TemProdutoSemSubsTrib := False;
  PanelServico.Visible   := False;

end;

Procedure TFormCadastroGraficaOrdemItem.AtualizaPedidoVenda(CodigoPedidoVenda:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
Begin
  SQLAtualizaItemPedido.ParamByName('PDVDA13ID').AsString  := CodigoPedidoVenda;
  SQLAtualizaItemPedido.ParamByName('PVITIITEM').AsInteger := PosicaoItemPedido;
  SQLAtualizaItemPedido.ParamByName('NovaQtdePed').AsFloat := NovaQtdePed;
  SQLAtualizaItemPedido.ParamByName('QtdePed').AsFloat     := QtdePed;
  SQLAtualizaItemPedido.ExecSQL;
End;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2VLRIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    If (SQLTemplateORITN2VLRIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
      SQLTemplateORITN2PERCIPI.asFloat := (SQLTemplateORITN2VLRIPI.asFloat / SQLTemplateTotalItemCalc.asFloat) * 100
    Else
      Begin
        SQLTemplateORITN2VLRIPI.asFloat  := 0;
        SQLTemplateORITN2PERCIPI.asFloat := 0;
      End;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2PERCIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') Then
    If (SQLTemplateORITN2PERCIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
      SQLTemplateORITN2VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateORITN2PERCIPI.asFloat / 100)
    Else
      SQLTemplateORITN2VLRIPI.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN3QUANTChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateORITN2PERCDESC.asFloat > 0) Then
    SQLTemplateORITN2VLRDESC.asFloat := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) * (SQLTemplateORITN2PERCDESC.asFloat / 100)
  Else
    SQLTemplateORITN2VLRDESC.asFloat := 0;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2VLRDESCSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateORITN2VLRDESC.asFloat > 0) Then
    SQLTemplateORITN2PERCDESC.asFloat := (SQLTemplateORITN2VLRDESC.asFloat /(SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat)) * 100
  Else
    SQLTemplateORITN2PERCDESC.asFloat := 0;
  CalculaImpostos;
  Ocupado:=False;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateORDID.Value               := DataSet.DataSource.DataSet.FindField('ORDID').Value;
  SQLTemplateORITN3QUANT.asFloat       :=1;
  SQLTemplateORITN2BASEICMS.asFloat    :=0;
  SQLTemplateORITN2BASESUBS.asFloat    :=0;
  SQLTemplateORITN2PERCDESC.asFloat    :=0;
  SQLTemplateORITN2PERCICMS.asFloat    :=0;
  SQLTemplateORITN2PERCIPI.asFloat     :=0;
  SQLTemplateORITN2PERCISSQN.asFloat   :=0;
  SQLTemplateORITN2PERCSUBS.asFloat    :=0;
  SQLTemplateORITN2VLRDESC.asFloat     :=0;
  SQLTemplateORITN2VLRFRETE.asFloat    :=0;
  SQLTemplateORITN2VLRICMS.asFloat     :=0;
  SQLTemplateORITN2VLRIPI.asFloat      :=0;
  SQLTemplateORITN2VLRISSQN.asFloat    :=0;
  SQLTemplateORITN2VLRLUCRO.asFloat    :=0;
  SQLTemplateORITN2VLRSUBS.asFloat     :=0;
  SQLTemplateORITN2VLRUNIT.asFloat     :=0;
  EditProduto.Clear;
  EditProduto.SetFocus;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if not DM.ImportandoPedidoVenda then
    begin
      if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
        if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= IdNo then
          begin
            SQLTemplateLOTEA30NRO.FocusControl;
            Abort;
          end;

      if (SQLTemplateORITN2VLRUNIT.asFloat = 0) Then
        begin
          ShowMessage('O valor unitário não pode ser zero!');
          SQLTemplateORITN2VLRUNIT.FocusControl;
          Abort;
        end;

      if (SQLTemplateORITN3QUANT.asFloat = 0) Then
        begin
          ShowMessage('A quantidade não pode ser zero!');
          SQLTemplateORITN3QUANT.FocusControl;
          Abort;
        end;

      if SQLLocate('PRODUTO','PRODICOD','PRODCSUBSTRIB',SQLTemplatePRODICOD.AsString) = 'S' then
        TemProdutoComSubsTrib := True
      else
        TemProdutoSemSubsTrib := True;
    end;
  inherited;

  if DataSet.FieldByName('ORITN3QUANT').asFloat > DataSet.FieldByName('ORITN3TOTVEND').asFloat then
    DataSet.FieldByName('ORITN3QUANTVEND').asFloat := DataSet.FieldByName('ORITN3TOTVEND').asFloat
  else
    DataSet.FieldByName('ORITN3QUANTVEND').asFloat := DataSet.FieldByName('ORITN3QUANT').asFloat;

  if DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    begin
      NovoTotalQuant         := 0;
      NovoTotalPesoBruto     := 0;
      NovoTotalPesoLiquido   := 0;
      NovoTotalItem          := 0;
      NovoTotalBASCALCICMS   := 0;
      NovoTotalVLRICMS       := 0;
      NovoTotalBASCALCSUBS   := 0;
      NovoTotalVLRSUBS       := 0;
      NovoTotalBASCALCCIPI   := 0;
      NovoTotalVLRIPI        := 0;
    end
  else
    begin
      NovoTotalQuant         := SQLTemplateORITN3QUANT.AsFloat;
      NovoTotalPesoBruto     := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      NovoTotalPesoLiquido   := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      NovoTotalItem          := SQLTemplateTotalItemCalc.asFloat;
      NovoTotalBASCALCICMS   := SQLTemplateORITN2BASEICMS.asFloat;
      NovoTotalVLRICMS       := SQLTemplateORITN2VLRICMS.asFloat;
      NovoTotalBASCALCSUBS   := SQLTemplateORITN2BASESUBS.asFloat;
      NovoTotalVLRSUBS       := SQLTemplateORITN2VLRSUBS.asFloat;
      if SQLTemplateORITN2VLRIPI.asFloat > 0 then
        NovoTotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      else
        NovoTotalBASCALCCIPI   := 0;
      NovoTotalVLRIPI        := SQLTemplateORITN2VLRIPI.asFloat;
    end;
  NovoTotalDesc := SQLTemplateORITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    NovoTotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  else
    NovoTotalVLRSERVICO  := 0;
  NovoTotalISSQN         := SQLTemplateORITN2VLRISSQN.asFloat;
  NovaQtdePed   := SQLTemplateORITN3QUANTVEND.asFloat;
  CodigoPedido  := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem   := DataSet.FindField('PVITIITEM').asInteger;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV := True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=False;

  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCICMS').asFloat - TotalBASCALCICMS) + NovoTotalBASCALCICMS;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRICMS').asFloat - TotalVLRICMS) + NovoTotalVLRICMS;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCSUBS').asFloat - TotalBASCALCSUBS) + NovoTotalBASCALCSUBS;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSUBS').asFloat - TotalVLRSUBS) + NovoTotalVLRSUBS;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCCIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2BASCALCCIPI').asFloat - TotalBASCALCCIPI) + NovoTotalBASCALCCIPI;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRIPI').asFloat - TotalVLRIPI) + NovoTotalVLRIPI;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRISSQN').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRISSQN').asFloat - TotalISSQN) + NovoTotalISSQN;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat - TotalVLRSERVICO) + NovoTotalVLRSERVICO;
  SQLTemplate.DataSource.DataSet.FindField('ORITN3PESBRUT').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN3PESBRUT').asFloat - TotalPesoBruto) + NovoTotalPesoBruto;
  SQLTemplate.DataSource.DataSet.FindField('ORITN3PESLIQ').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN3PESLIQ').asFloat - TotalPesoLiquido) + NovoTotalPesoLiquido;
  SQLTemplate.DataSource.DataSet.FindField('ORITN3QUANT').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN3QUANT').asFloat - TotalQuant) + NovoTotalQuant;
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  If (CodigoPedido<>'') and (NovaQtdePed <> QtdePed) Then
    AtualizaPedidoVenda(CodigoPedido,PosicaoItem,QtdePed,NovaQtdePed);
  DM.InserindoItemNV:=False;
  Inc(NumItem);

  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'ORDID = "' + SQLTemplateORDID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto    := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino       := DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDNotaFiscal  := SQLTemplateORDID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente     := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodEmpresa    := DSMasterTemplate.DataSet.FieldByName('EMPRICODDEST').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodFornecedor := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.QtdeSerie      := SQLTemplateORITN3QUANT.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;

{  if Pergunta('SIM','Deseja incluir outro Produto nesta nota?') then
    SQLTemplate.Append
  else
    Close;}
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant       := 0;
      TotalPesoBruto   := 0;
      TotalPesoLiquido := 0;
      TotalItem        := 0;
      TotalBASCALCICMS := 0;
      TotalVLRICMS     := 0;
      TotalBASCALCSUBS := 0;
      TotalVLRSUBS     := 0;
      TotalBASCALCCIPI := 0;
      TotalVLRIPI      := 0;
    End
  Else
    Begin
      TotalQuant       := SQLTemplateORITN3QUANT.asFloat;
      TotalPesoBruto   := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      TotalPesoLiquido := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      TotalItem        := SQLTemplateTotalItemCalc.asFloat;
      TotalBASCALCICMS := SQLTemplateORITN2BASEICMS.asFloat;
      TotalVLRICMS     := SQLTemplateORITN2VLRICMS.asFloat;
      TotalBASCALCSUBS := SQLTemplateORITN2BASESUBS.asFloat;
      TotalVLRSUBS     := SQLTemplateORITN2VLRSUBS.asFloat;
      If SQLTemplateORITN2VLRIPI.asFloat>0 Then
        TotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      Else
        TotalBASCALCCIPI   := 0;
      TotalVLRIPI      := SQLTemplateORITN2VLRIPI.asFloat;
    End;
  TotalDesc        := SQLTemplateORITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO  := 0;
  TotalISSQN         := SQLTemplateORITN2VLRISSQN.asFloat;
  QtdePed            := SQLTemplateORITN3QUANTVEND.asFloat;

end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  if DM.SQLConfigVendaCFVEINROITENSNF.Value > 0 then
    if (NumItem = DM.SQLConfigVendaCFVEINROITENSNF.AsInteger) and (not Dm.ImportandoPedidoVenda) then
      begin
        if Pergunta('SIM','O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
          begin
            DM.GerarNovaNota := True;
            Close;
          end
        else
          Exit;
      end;

  TotalQuant       := 0;
  TotalPesoBruto   := 0;
  TotalPesoLiquido := 0;
  TotalItem        := 0;
  TotalDesc        := 0;
  TotalBASCALCICMS := 0;
  TotalVLRICMS     := 0;
  TotalBASCALCSUBS := 0;
  TotalVLRSUBS     := 0;
  TotalBASCALCCIPI := 0;
  TotalVLRIPI      := 0;
  TotalVLRSERVICO  := 0;
  TotalISSQN       := 0;
  QtdePed          := 0;

end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant        := 0;
      TotalPesoBruto    := 0;
      TotalPesoLiquido  := 0;
      TotalItem         := 0;
      TotalBASCALCICMS  := 0;
      TotalVLRICMS      := 0;
      TotalBASCALCSUBS  := 0;
      TotalVLRSUBS      := 0;
      TotalBASCALCCIPI  := 0;
      TotalVLRIPI       := 0;
    End
  Else
    Begin
      TotalQuant        := SQLTemplateORITN3QUANT.asFloat;
      TotalPesoBruto    := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      TotalPesoLiquido  := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateORITN3QUANT.asFloat;
      TotalItem         := SQLTemplateTotalItemCalc.asFloat;
      TotalBASCALCICMS  := SQLTemplateORITN2BASEICMS.asFloat;
      TotalVLRICMS      := SQLTemplateORITN2VLRICMS.asFloat;
      TotalBASCALCSUBS  := SQLTemplateORITN2BASESUBS.asFloat;
      TotalVLRSUBS      := SQLTemplateORITN2VLRSUBS.asFloat;
      If SQLTemplateORITN2VLRIPI.asFloat>0 Then
        TotalBASCALCCIPI   := SQLTemplateTotalItemCalc.asFloat
      Else
        TotalBASCALCCIPI   := 0;
      TotalVLRIPI       := SQLTemplateORITN2VLRIPI.asFloat;
    End;
  TotalDesc         := SQLTemplateORITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO := 0;
  TotalISSQN        := SQLTemplateORITN2VLRISSQN.asFloat;
  QtdePed           := SQLTemplateORITN3QUANTVEND.asFloat;
  CodigoPedido      := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem       := DataSet.FindField('PVITIITEM').asInteger;
  inherited;
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV:=True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat - TotalBASCALCICMS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat - TotalVLRICMS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat - TotalBASCALCSUBS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat - TotalVLRSUBS);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat - TotalBASCALCCIPI);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat - TotalVLRIPI);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat - TotalISSQN);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat - TotalVLRSERVICO);
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  If (CodigoPedido<>'') Then
    AtualizaPedidoVenda(CodigoPedido,PosicaoItem,QtdePed,0);
  DM.InserindoItemNV:=False;

  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  Dec(NumItem);

end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2PERCICMSChange(
  Sender: TField);
begin
  inherited;
  CalculaImpostos;
end;

procedure TFormCadastroGraficaOrdemItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('STATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroGraficaOrdemItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto) )
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeNotaFiscal') = nil)) then
  inherited;         
end;

procedure TFormCadastroGraficaOrdemItem.SQLTemplateORITN2PERCREDUCAOChange(
  Sender: TField);
begin
  inherited;
  Reducao := SQLTemplateORITN2PERCREDUCAO.AsFloat;
  CalculaImpostos;
end;

end.
