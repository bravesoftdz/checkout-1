unit RelatorioReceitasDespesasPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32, DateUtils,
  Grids, DBGrids;

type
  TFormRelatorioReceitasDespesasPlanoContas = class(TFormRelatorioTEMPLATE)
    SQLReceitas: TRxQuery;
    Report: TCrpe;
    SQLAux: TQuery;
    GroupData: TRadioGroup;
    SQLReceitasPLCTA15COD: TStringField;
    SQLReceitasPLCTA15CODPAI: TStringField;
    SQLReceitasPLCTA30CODEDIT: TStringField;
    SQLReceitasPLCTA60DESCR: TStringField;
    SQLReceitasPLCTCTIPOSALDO: TStringField;
    SQLReceitasPLCTCANALSINT: TStringField;
    SQLPlanoContas: TRxQuery;
    TblRegistros: TTable;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTICODREDUZ: TIntegerField;
    SQLPlanoContasPLCTINIVEL: TIntegerField;
    SQLPlanoContasPLCTA15CODPAI: TStringField;
    SQLPlanoContasPLCTA30CODEDIT: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoContasPLCTCANALSINT: TStringField;
    SQLPlanoContasPLCTCTIPOSALDO: TStringField;
    TblTemporariaPLCTA15COD: TStringField;
    TblTemporariaPLCTICODREDUZ: TIntegerField;
    TblTemporariaPLCTINIVEL: TIntegerField;
    TblTemporariaPLCTA15CODPAI: TStringField;
    TblTemporariaPLCTA30CODEDIT: TStringField;
    TblTemporariaPLCTA60DESCR: TStringField;
    TblTemporariaPLCTCANALSINT: TStringField;
    TblTemporariaPLCTCTIPOSALDO: TStringField;
    SQLReceitasRECEITA: TBCDField;
    SQLReceitasDESPESA: TBCDField;
    TblTemporariaRECEITA: TBCDField;
    TblTemporariaDESPESA: TBCDField;
    SQLPlanoContasRECEITA: TBCDField;
    SQLPlanoContasDESPESA: TBCDField;
    TblTemporariaVALOR: TBCDField;
    TblTemporariaPERC: TBCDField;
    SQLPlanoContasVALOR: TBCDField;
    SQLPlanoContasPERC: TBCDField;
    TblRegistrosPLCTA15COD: TStringField;
    TblRegistrosPLCTA15CODPAI: TStringField;
    TblRegistrosPLCTA30CODEDIT: TStringField;
    TblRegistrosPLCTA60DESCR: TStringField;
    TblRegistrosPLCTCTIPOSALDO: TStringField;
    TblRegistrosPLCTCANALSINT: TStringField;
    TblRegistrosRECEITA: TBCDField;
    TblRegistrosDESPESA: TBCDField;
    SQLAuxPLCTA15COD: TStringField;
    SQLAuxPLCTA15CODPAI: TStringField;
    SQLAuxPLCTA30CODEDIT: TStringField;
    SQLAuxPLCTA60DESCR: TStringField;
    SQLAuxPLCTCTIPOSALDO: TStringField;
    SQLAuxPLCTCANALSINT: TStringField;
    SQLAuxRECEITA: TBCDField;
    SQLAuxDESPESA: TBCDField;
    SQLDespesas: TRxQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    SQLTesouraria: TRxQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    SQLContasReceber: TRxQuery;
    TblLancamentos: TTable;
    SQLContasPagar: TRxQuery;
    SQLContasPagarDOCUMENTO: TStringField;
    SQLContasPagarPARCELA: TIntegerField;
    SQLContasPagarVALOR: TBCDField;
    SQLContasPagarPLCTA15COD: TStringField;
    SQLContasPagarPLANOCONTAS: TStringField;
    SQLContasPagarCLIENTEFORNECEDOR: TStringField;
    SQLContasReceberDOCUMENTO: TStringField;
    SQLContasReceberPARCELA: TIntegerField;
    SQLContasReceberVALOR: TBCDField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberPLANOCONTAS: TStringField;
    SQLContasReceberCLIENTEFORNECEDOR: TStringField;
    TblLancamentosDOCUMENTO: TStringField;
    TblLancamentosPARCELA: TIntegerField;
    TblLancamentosVALOR: TBCDField;
    TblLancamentosPLCTA15COD: TStringField;
    TblLancamentosPLANOCONTAS: TStringField;
    TblLancamentosCLIENTEFORNECEDOR: TStringField;
    SQLTesourariaLanc: TRxQuery;
    SQLTesourariaLancDOCUMENTO: TStringField;
    SQLTesourariaLancPARCELA: TIntegerField;
    SQLTesourariaLancPLCTA15COD: TStringField;
    SQLTesourariaLancPLANOCONTAS: TStringField;
    SQLTesourariaLancCLIENTEFORNECEDOR: TStringField;
    SQLTesourariaLancVALOR: TBCDField;
    SQLMovimentoBanco: TRxQuery;
    SQLMovimentoBancoPLCTA15COD: TStringField;
    SQLMovimentoBancoPLCTA15CODPAI: TStringField;
    SQLMovimentoBancoPLCTA30CODEDIT: TStringField;
    SQLMovimentoBancoPLCTA60DESCR: TStringField;
    SQLMovimentoBancoPLCTCTIPOSALDO: TStringField;
    SQLMovimentoBancoPLCTCANALSINT: TStringField;
    SQLMovimentoBancoDESPESA: TBCDField;
    SQLMovimentoBancoRECEITA: TBCDField;
    SQLBancoLanc: TRxQuery;
    SQLBancoLancDOCUMENTO: TStringField;
    SQLBancoLancPARCELA: TIntegerField;
    SQLBancoLancPLCTA15COD: TStringField;
    SQLBancoLancPLANOCONTAS: TStringField;
    SQLBancoLancCLIENTEFORNECEDOR: TStringField;
    SQLBancoLancVALOR: TBCDField;
    TblTemporariaPERCRECEITA: TFloatField;
    SQLPagamentoJuros: TRxQuery;
    SQLPagamentoMultas: TRxQuery;
    SQLPagamentoDesconto: TRxQuery;
    SQLPagamentoJurosPLCTA15COD: TStringField;
    SQLPagamentoJurosPLCTA15CODPAI: TStringField;
    SQLPagamentoJurosPLCTA30CODEDIT: TStringField;
    SQLPagamentoJurosPLCTA60DESCR: TStringField;
    SQLPagamentoJurosPLCTCTIPOSALDO: TStringField;
    SQLPagamentoJurosPLCTCANALSINT: TStringField;
    SQLPagamentoMultasPLCTA15COD: TStringField;
    SQLPagamentoMultasPLCTA15CODPAI: TStringField;
    SQLPagamentoMultasPLCTA30CODEDIT: TStringField;
    SQLPagamentoMultasPLCTA60DESCR: TStringField;
    SQLPagamentoMultasPLCTCTIPOSALDO: TStringField;
    SQLPagamentoMultasPLCTCANALSINT: TStringField;
    SQLPagamentoDescontoPLCTA15COD: TStringField;
    SQLPagamentoDescontoPLCTA15CODPAI: TStringField;
    SQLPagamentoDescontoPLCTA30CODEDIT: TStringField;
    SQLPagamentoDescontoPLCTA60DESCR: TStringField;
    SQLPagamentoDescontoPLCTCTIPOSALDO: TStringField;
    SQLPagamentoDescontoPLCTCANALSINT: TStringField;
    SQLPagamentoMultasDESPESA: TFloatField;
    SQLPagamentoMultasRECEITA: TBCDField;
    SQLPagamentoDescontoDESPESA: TFloatField;
    SQLPagamentoDescontoRECEITA: TBCDField;
    SQLPagamentoJurosDESPESA: TFloatField;
    SQLPagamentoJurosRECEITA: TBCDField;
    SQLRecebimentoJuros: TRxQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField1: TFloatField;
    BCDField5: TBCDField;
    SQLRecebimentoMultas: TRxQuery;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    FloatField2: TFloatField;
    BCDField6: TBCDField;
    SQLRecebimentoDesconto: TRxQuery;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    FloatField3: TFloatField;
    BCDField7: TBCDField;
    Panel1: TPanel;
    CheckAnalitico: TCheckBox;
    gboComp: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cboMesDe: TComboBox;
    cboAnoDe: TComboBox;
    cboMesAte: TComboBox;
    cboAnoAte: TComboBox;
    dsSQLTesouraria: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure CalculaTotais;
    procedure IncluirRegistroTabelaTemp(TabelaOrigem,TabelaDestino : TDataSet);
    procedure GroupDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DeChange(Sender: TObject);
    procedure cboMesDeChange(Sender: TObject);
  private
    { Private declarations }
  public
  TemPai:Boolean;
  TRec,TDesp,
  TotalReceita,
  TotalDespesa,
  TotalGeralReceita,
  TotalGeralDespesa : Double;
  Tam               : string ;
    { Public declarations }
  end;

var
  FormRelatorioReceitasDespesasPlanoContas: TFormRelatorioReceitasDespesasPlanoContas;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioReceitasDespesasPlanoContas.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  TblRegistros.Close;
  try
    TblRegistros.DeleteTable;
    TblRegistros.CreateTable;
  except
    TblRegistros.CreateTable;
    TblRegistros.Open;
  end;

  TblLancamentos.Close;
  try
    TblLancamentos.DeleteTable;
    TblLancamentos.CreateTable;
  except
    TblLancamentos.CreateTable;
    TblLancamentos.Open;
  end;

  SQLReceitas.Close;
  SQLDespesas.Close;
  SQLTesouraria.Close;
  SQLMovimentoBanco.Close;
  SQLContasPagar.Close;
  SQLContasReceber.Close;
  SQLTesourariaLanc.Close;

  SQLReceitas.MacroByName('MEmpresaRecebido').asString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTASRECEBER','');
  SQLDespesas.MacroByName('MEmpresaPago').asString     := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTASPAGAR','');

  SQLReceitas.MacroByName('MDataRecebido').asString    := '0=0';
  SQLDespesas.MacroByName('MDataPago').asString        := '0=0';

  SQLReceitas.MacroByName('Campo').asString            := '0=0';
  SQLDespesas.MacroByName('Campo').asString            := '0=0';

  SQLMovimentoBanco.MacroByName('MEmpresaComp').AsString       := '0=0';

  SQLTesouraria.MacroByName('MEmpresa').AsString            := SQLDeLista(ComboEmpresa,ListaEmpresas,'','TESOURARIA','');
  SQLTesouraria.MacroByName('MDataMov').AsString            := 'TESOURARIA.TESODMOV>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                               '" AND TESOURARIA.TESODMOV<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
  SQLMovimentoBanco.MacroByName('MEmpresaComp').AsString    := SQLDeLista(ComboEmpresa,ListaEmpresas,'','MOVIMENTOBANCO','');
  SQLMovimentoBanco.MacroByName('MDataComp').AsString       := 'MOVIMENTOBANCO.MVBCDLANC>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                               '" AND MOVIMENTOBANCO.MVBCDLANC<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';

  // CRIAR LISTA DO PLANO DE CONTAS
  SQLPlanoContas.Close;
  SQLPlanoContas.Open;

  TblTemporaria.Close;
  try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
    TblTemporaria.Open;
  end;

  BatchMove.Destination := TblTemporaria;
  BatchMove.Source      := SQLPlanoContas;
  BatchMove.Execute;

  TblTemporaria.Close;
  TblTemporaria.AddIndex('CodConta','PLCTA15COD',[IxPrimary]);
  TblTemporaria.Open ;

  case GroupData.ItemIndex of
    0 : begin
          SQLReceitas.MacroByName('MDataRecebido').asString    := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND CONTASRECEBER.CTRCDEMIS <= "'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
          SQLReceitas.MacroByName('Campo').asString            := 'CONTASRECEBER.CTRCN2VLR';
          SQLDespesas.MacroByName('MDataPago').asString        := 'CONTASPAGAR.CTPGDTEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND CONTASPAGAR.CTPGDTEMIS <= "'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
          SQLDespesas.MacroByName('Campo').asString            := 'CONTASPAGAR.CTPGN3VLR';

          SQLContasReceber.MacroByName('MDataRecebido').AsString := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND CONTASRECEBER.CTRCDEMIS <= "'+ FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
        end;
    1 : begin

//          SQLReceitas.MacroByName('MDataRecebido').asString    := 'CONTASRECEBER.CTRCDULTREC>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
//                                                                  '" AND CONTASRECEBER.CTRCDULTREC<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
          SQLReceitas.MacroByName('MDataRecebido').asString    := 'Cast(CTRCA2MESCOMP || "/01/" || CTRCA4ANOCOMP as Date) >= "' + IntToStr(cboMesDe.ItemIndex + 1) + '/01/' + cboAnoDe.Text + '" and ' +
								  'Cast(CTRCA2MESCOMP || "/01/" || CTRCA4ANOCOMP as Date) <= "' + IntToStr(cboMesAte.ItemIndex + 2) + '/01/' + cboAnoAte.Text + '"';

          SQLReceitas.MacroByName('Campo').asString            := 'CONTASRECEBER.CTRCN2TOTREC';

          SQLDespesas.MacroByName('MDataPago').asString        := 'Cast(CTPGA2MESCOMP || "/01/" || CTPGA4ANOCOMP as Date) >= "' + IntToStr(cboMesDe.ItemIndex + 1) + '/01/' + cboAnoDe.Text + '" and ' +
								  'Cast(CTPGA2MESCOMP || "/01/" || CTPGA4ANOCOMP as Date) <= "' + IntToStr(cboMesAte.ItemIndex + 2) + '/01/' + cboAnoAte.Text + '"';
          SQLDespesas.MacroByName('Campo').asString            := 'CONTASPAGAR.CTPGN3VLR ';

          SQLContasReceber.MacroByName('MDataRecebido').AsString := 'Cast(CTRCA2MESCOMP || "/01/" || CTRCA4ANOCOMP as Date) >= "' + IntToStr(cboMesDe.ItemIndex + 1) + '/01/' + cboAnoDe.Text + '" and ' +
								  'Cast(CTRCA2MESCOMP || "/01/" || CTRCA4ANOCOMP as Date) <= "' + IntToStr(cboMesAte.ItemIndex + 2) + '/01/' + cboAnoAte.Text + '"';

          SQLPagamentoJuros.Close;
          SQLPagamentoMultas.Close;
          SQLPagamentoDesconto.Close;

          SQLPagamentoJuros.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLPagamentoJuros.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          //SQLPagamentoJuros.MacroByName('MEmpresaRecebido').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','RC','');

          SQLPagamentoMultas.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLPagamentoMultas.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          //SQLPagamentoMultas.MacroByName('MEmpresaRecebido').asString := SQLPagamentoJuros.MacroByName('MEmpresaRecebido').AsString;

          SQLPagamentoDesconto.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLPagamentoDesconto.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          //SQLPagamentoDesconto.MacroByName('MEmpresaRecebido').asString := SQLPagamentoJuros.MacroByName('MEmpresaRecebido').AsString;

          SQLRecebimentoMultas.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLRecebimentoMultas.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          SQLRecebimentoMultas.MacroByName('MEmpresaRecebido').asString := SQLDeLista(ComboEmpresa, ListaEmpresas,'','RC','EMPRICODREC');

          SQLRecebimentoDesconto.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLRecebimentoDesconto.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          SQLRecebimentoDesconto.MacroByName('MEmpresaRecebido').asString := SQLRecebimentoMultas.MacroByName('MEmpresaRecebido').asString;

          SQLRecebimentoJuros.ParamByName('PAGADPAGTO_INI').AsDate := De.Date;
          SQLRecebimentoJuros.ParamByName('PAGADPAGTO_FIM').AsDate := Ate.Date;
          SQLRecebimentoJuros.MacroByName('MEmpresaRecebido').asString := SQLRecebimentoMultas.MacroByName('MEmpresaRecebido').asString;

          SQLPagamentoJuros.Open;
          SQLPagamentoMultas.Open;
          SQLPagamentoDesconto.Open;

          SQLRecebimentoJuros.Open;
          SQLRecebimentoMultas.Open;
          SQLRecebimentoDesconto.Open;

          IncluirRegistroTabelaTemp(SQLPagamentoJuros,TblRegistros);
          IncluirRegistroTabelaTemp(SQLPagamentoMultas,TblRegistros);
          IncluirRegistroTabelaTemp(SQLPagamentoDesconto,TblRegistros);

          IncluirRegistroTabelaTemp(SQLRecebimentoJuros,TblRegistros);
          IncluirRegistroTabelaTemp(SQLRecebimentoMultas,TblRegistros);
          IncluirRegistroTabelaTemp(SQLRecebimentoDesconto,TblRegistros);
	end;

    2 : begin
          SQLReceitas.MacroByName('MDataRecebido').asString    := 'CONTASRECEBER.CTRCDULTREC>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND CONTASRECEBER.CTRCDULTREC<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
          SQLReceitas.MacroByName('Campo').asString            := 'CONTASRECEBER.CTRCN2TOTREC + CONTASRECEBER.CTRCN2TOTJUROREC + CONTASRECEBER.CTRCN2TOTMULTAREC + CONTASRECEBER.CTRCN2TOTMULTACOBR - CONTASRECEBER.CTRCN2TOTDESCREC';
          SQLDespesas.MacroByName('MDataPago').asString        := 'CONTASPAGAR.CTPGDULTPAGTO>="'+FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND CONTASPAGAR.CTPGDULTPAGTO<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
          SQLDespesas.MacroByName('Campo').asString            := 'CONTASPAGAR.CTPGN2TOTPAG + CONTASPAGAR.CTPGN3JUROPAGTO + CONTASPAGAR.CTPGN3MULTAPAGTO - CONTASPAGAR.CTPGN3DESCPAGTO';
          SQLContasReceber.MacroByName('MDataRecebido').AsString := 'CONTASRECEBER.CTRCDEMIS>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                    '" AND CONTASRECEBER.CTRCDEMIS<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
        end;

  end;

  ////////////////////////////////////////////////

  // CRIAR LISTA DE CONTAS PAGAR/RECEBER/TESOURARIA
  SQLReceitas.Open;
  SQLReceitas.First;
  SQLDespesas.Open;
  SQLDespesas.First;

  IncluirRegistroTabelaTemp(SQLReceitas,TblRegistros);
  IncluirRegistroTabelaTemp(SQLDespesas,TblRegistros);

  SQLTesouraria.Open;
  SQLTesouraria.First;
  SQLMovimentoBanco.Open;
  SQLMovimentoBanco.First;

  IncluirRegistroTabelaTemp(SQLTesouraria,TblRegistros);
  IncluirRegistroTabelaTemp(SQLMovimentoBanco,TblRegistros);

  // CALCULAR TOTAIS E ALIMENTAR PLANO DE CONTAS
  CalculaTotais;
  ////////////////////////////////////////////////
  // GERAR OS LANCAMENTOS PARA QUE POSSAM SER VISUALIZADOS NO RELATORIO
  if CheckAnalitico.Checked then
    begin
      // DADOS CONTAS A RECEBER
      SQLContasReceber.Close;
      SQLContasReceber.MacroByName('MEmpresaRecebido').asString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTASRECEBER','');
      SQLContasReceber.Open;
      BatchExec(SQLContasReceber,TblLancamentos);
      // DADOS CONTAS A PAGAR
      SQLContasPagar.Close;
      SQLContasPagar.MacroByName('MEmpresaPago').asString     := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CONTASPAGAR','');
      SQLContasPagar.Open;
      BatchExec(SQLContasPagar,TblLancamentos);
      // DADOS DA TESOURARIA
      SQLTesourariaLanc.Close;
      SQLTesourariaLanc.MacroByName('MEmpresa').AsString       := SQLDeLista(ComboEmpresa,ListaEmpresas,'','TESOURARIA','');
      SQLTesourariaLanc.MacroByName('MDataMov').AsString       := 'TESOURARIA.TESODMOV >= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND TESOURARIA.TESODMOV <= "'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
      SQLTesourariaLanc.MacroByName('MDebitoCredito').AsString  := 'TESOURARIA.TESON2VLRDEBITO > 0';
      SQLTesourariaLanc.MacroByName('Campo').AsString           := 'TESOURARIA.TESON2VLRDEBITO';
      SQLTesourariaLanc.Open;
      BatchExec(SQLTesourariaLanc,TblLancamentos);
      SQLTesourariaLanc.Close;
      SQLTesourariaLanc.MacroByName('MDebitoCredito').AsString  := 'TESOURARIA.TESON2VLRCREDITO > 0';
      SQLTesourariaLanc.MacroByName('Campo').AsString           := 'TESOURARIA.TESON2VLRCREDITO';
      SQLTesourariaLanc.Open;
      BatchExec(SQLTesourariaLanc,TblLancamentos);
      //DADOS MOVIMENTO BANCO
      SQLBancoLanc.Close;
      SQLBancoLanc.MacroByName('MEmpresa').AsString             := SQLDeLista(ComboEmpresa,ListaEmpresas,'','MOVIMENTOBANCO','');
      SQLBancoLanc.MacroByName('MDataMov').AsString             :='MOVIMENTOBANCO.MVBCDLANC>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND MOVIMENTOBANCO.MVBCDLANC<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
      SQLBancoLanc.MacroByName('MDebitoCredito').AsString       := 'MOVIMENTOBANCO.MVBCN2VLRDEB > 0';
      SQLBancoLanc.MacroByName('Campo').AsString                := 'MOVIMENTOBANCO.MVBCN2VLRDEB';
      SQLBancoLanc.Open;
      BatchExec(SQLBancoLanc,TblLancamentos);

      SQLBancoLanc.Close;
      SQLBancoLanc.MacroByName('MEmpresa').AsString             := SQLDeLista(ComboEmpresa,ListaEmpresas,'','MOVIMENTOBANCO','');
      SQLBancoLanc.MacroByName('MDataMov').AsString             :='MOVIMENTOBANCO.MVBCDLANC>= "' + FormatDateTime('mm/dd/yyyy',De.Date)+
                                                                  '" AND MOVIMENTOBANCO.MVBCDLANC<="'+FormatDateTime('mm/dd/yyyy',Ate.Date)+'"';
      SQLBancoLanc.MacroByName('MDebitoCredito').AsString       := 'MOVIMENTOBANCO.MVBCN2VLRCRED > 0';
      SQLBancoLanc.MacroByName('Campo').AsString                := 'MOVIMENTOBANCO.MVBCN2VLRCRED';
      SQLBancoLanc.Open;
      BatchExec(SQLBancoLanc,TblLancamentos);

      //////////////////////////////////////////////
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Receitas e Despesas Analitico.rpt';
      Report.ReportTitle       := 'Relat�rio de Receitas x Despesas por Plano de Contas Anal�tico';
      Report.WindowStyle.Title := 'Relat�rio de Receitas x Despesas por Plano de Contas Anal�tico';
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      if GroupData.ItemIndex = 0 then
        Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"'
      else
        Report.Formulas.Formula.Text := '"' + cboMesDe.Text + '/' + cboAnoDe.Text + ' at� ' +
                                        cboMesAte.Text + '/' + cboAnoAte.Text + '"';

      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa' ;
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
      //--------------------------------------------------------------------------\\
    end
  else
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Receitas Despesas.rpt';
      Report.ReportTitle       := 'Relat�rio de Receitas x Despesas por Plano de Contas';
      Report.WindowStyle.Title := 'Relat�rio de Receitas x Despesas por Plano de Contas';
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      if GroupData.ItemIndex = 0 then
        Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' at� ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"'
      else
        Report.Formulas.Formula.Text := '"' + cboMesDe.Text + '/' + cboAnoDe.Text + ' at� ' +
                                        cboMesAte.Text + '/' + cboAnoAte.Text + '"';      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa' ;
      Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Saldo' ;
      Report.Formulas.Formula.Text := '"' + FormatFloat('#,##0.00',TotalGeralReceita-TotalGeralDespesa) + '"' ;
      //--------------------------------------------------------------------------\\
      {Report.Formulas.Name         := 'TotalReceita' ;
      Report.Formulas.Formula.Text := '"' + FormatFloat('#,##0.00',TotalGeralReceita) + '"' ;}
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'TotalDespesa' ;
      Report.Formulas.Formula.Text := '"' + FormatFloat('#,##0.00',TotalGeralDespesa) + '"' ;
    end;
  Report.Execute ;
end;
procedure TFormRelatorioReceitasDespesasPlanoContas.CalculaTotais;
begin
  TblRegistros.First;
  while not TblRegistros.Eof do
    begin
      if TblTemporaria.FindKey([TblRegistrosPLCTA15COD.asString]) then
        begin
          TblTemporaria.Edit;
          If TblRegistrosPLCTCTIPOSALDO.AsString = 'D' Then
            TblTemporariaDESPESA.asFloat := TblTemporariaDESPESA.asFloat + TblRegistrosDESPESA.asFloat;
          If TblRegistrosPLCTCTIPOSALDO.AsString = 'C' Then
            TblTemporariaRECEITA.asFloat := TblTemporariaRECEITA.asFloat + TblRegistrosRECEITA.asFloat;
          TblTemporaria.Post;
        end;
      TblRegistros.Next;
    end;
  SQLAux.Close;
  SQLAux.Open;
  SQLAux.First;
  TotalGeralReceita := 0 ;
  TotalGeralDespesa := 0 ;
  While Not SQLAux.Eof Do
    Begin
      TblTemporaria.FindKey([SQLAuxPLCTA15COD.asString]);
      TblTemporaria.Edit;
      If TblTemporariaDESPESA.AsVariant = null Then
        TblTemporariaDESPESA.asFloat := 0 ;
      If TblTemporariaRECEITA.AsVariant = null Then
        TblTemporariaRECEITA.asFloat := 0 ;
      If TblTemporariaPLCTCANALSINT.AsString = 'S' Then
        TblTemporariaPLCTCANALSINT.AsString := '' ;
      TblTemporaria.Post ;
      TotalGeralReceita := TotalGeralReceita + TblTemporariaRECEITA.asFloat;
      TotalGeralDespesa := TotalGeralDespesa + TblTemporariaDESPESA.asFloat;

      If (SQLAuxPLCTA15COD.asString <> SQLAuxPLCTA15CODPAI.asString) and
         (SQLAuxPLCTA15CODPAI.asString <>'') and
         (TblTemporaria.FindKey([SQLAuxPLCTA15CODPAI.asString])) Then
        Begin
          TemPai := True;
          While TemPai Do
            Begin
              TblTemporaria.Edit;
              If SQLAuxPLCTCTIPOSALDO.AsString = 'D' Then
                TblTemporariaDESPESA.asFloat := TblTemporariaDESPESA.AsFloat + SQLAuxDESPESA.asFloat;
              If SQLAuxPLCTCTIPOSALDO.AsString = 'C' Then
                TblTemporariaRECEITA.asFloat := TblTemporariaRECEITA.AsFloat + SQLAuxRECEITA.asFloat;
              TblTemporaria.Post;

              If (TblTemporariaPLCTA15COD.asString = TblTemporariaPLCTA15CODPAI.asString) or
                 (TblTemporariaPLCTA15CODPAI.asString = '') Then
                TemPai := False
              Else
                TblTemporaria.FindKey([TblTemporariaPLCTA15CODPAI.asString]);
            End;
        End ;
      SQLAux.Next ;
    End ;
  ////////////////////////////////////////////////////////////
  SQLAux.First;
  while not SQLAux.Eof do
    begin
      //SOMAR TOTAIS E CALCULAR PERCENTUAIS
      If (SQLAuxPLCTA15CODPAI.asString<>'') and (SQLAuxPLCTA15CODPAI.asString<>SQLAuxPLCTA15COD.asString) Then
        Begin
          TblTemporaria.FindKey([SQLAuxPLCTA15COD.asString]);
          TblTemporaria.Edit;
          If (TblTemporariaPLCTCTIPOSALDO.asString='D') and (TotalGeralDespesa > 0) and (SQLAuxDESPESA.asFloat > 0) Then
            begin
              TblTemporariaPERC.asFloat        := SQLAuxDESPESA.asFloat/TotalGeralDespesa * 100;
              if TotalGeralReceita > 0 then
                TblTemporariaPERCRECEITA.AsFloat := SQLAuxDESPESA.asFloat / TotalGeralReceita * 100;
            end;
          If (TblTemporariaPLCTCTIPOSALDO.asString='C') and (TotalGeralReceita > 0) and (SQLAuxRECEITA.asFloat > 0)Then
            TblTemporariaPERC.asFloat := SQLAuxRECEITA.asFloat/TotalGeralReceita*100;
          TblTemporaria.Post;
        End
      Else
        Begin
          TblTemporaria.FindKey([SQLAuxPLCTA15COD.asString]);
          TblTemporaria.Edit;
          If TblTemporariaPLCTCTIPOSALDO.asString='D' Then
            If TotalGeralDespesa>0 Then
              TblTemporariaPERC.asFloat:=100
            Else
              TblTemporariaPERC.asFLoat:=0;
          If TblTemporariaPLCTCTIPOSALDO.asString='C' Then
            If TotalGeralReceita>0 Then
              TblTemporariaPERC.asFloat:=100
            Else
              TblTemporariaPERC.asFLoat:=0;
          TblTemporaria.Post;
        End;
      SQLAux.Next;
    end;

  //APAGAR AS CONTAS COM VALOR ZERADO
  TblTemporaria.First ;

  while not TblTemporaria.Eof do
    begin
      if (TblTemporariaDESPESA.Value > 0) or (TblTemporariaRECEITA.Value > 0) Then
        begin
          Tam := IntToSTr(Length(TblTemporariaPLCTA30CODEDIT.Value)) ;
          TblTemporaria.Edit ;
          TblTemporariaVALOR.Value        := TblTemporariaDESPESA.Value + TblTemporariaRECEITA.Value ;
          TblTemporariaPLCTA60DESCR.Value := Format('%-' + Tam + 's',[' ']) + TblTemporariaPLCTA60DESCR.Value;
          TblTemporaria.Post ;

          TblTemporaria.Next ;
        end
      else
        TblTemporaria.Delete ;
    end ;
end;

procedure TFormRelatorioReceitasDespesasPlanoContas.IncluirRegistroTabelaTemp(TabelaOrigem,TabelaDestino : TDataSet);
var
  I : Integer;
begin
  if not TabelaOrigem.Active then
     TabelaOrigem.Open;
  if not TabelaDestino.Active then
     TabelaDestino.Open;
  TabelaOrigem.First;
  while not TabelaOrigem.Eof do
    begin
      TabelaDestino.Append;
      for I := 0 to TabelaOrigem.FieldCount -1 do
        begin
          TabelaDestino.FieldByName(TabelaOrigem.Fields[I].FieldName).AsVariant :=
          TabelaOrigem.FieldByName(TabelaOrigem.Fields[I].FieldName).AsVariant;
        end;
      TabelaDestino.Post;
      TabelaOrigem.Next;
    end;
end;

procedure TFormRelatorioReceitasDespesasPlanoContas.GroupDataClick(
  Sender: TObject);
begin
  inherited;
  if GroupData.ItemIndex <> 1 then
    GroupBox1.Visible := True
  else
    GroupBox1.Visible := False;
  gboComp.Visible   := GroupData.ItemIndex = 1;
end;

procedure TFormRelatorioReceitasDespesasPlanoContas.FormCreate(
  Sender: TObject);
begin
  inherited;
  cboMesDe.ItemIndex := MonthOf(Date) -1;
  cboMesAte.ItemIndex := MonthOf(Date) -1;

  cboAnoDe.ItemIndex  := cboAnoDe.Items.IndexOf(IntToStr(YearOf(Date)));
  cboAnoAte.ItemIndex := cboAnoAte.Items.IndexOf(IntToStr(YearOf(Date)));
end;

procedure TFormRelatorioReceitasDespesasPlanoContas.DeChange(
  Sender: TObject);
begin
  inherited;
  cboMesDe.ItemIndex := MonthOf(De.Date) -1;
  cboMesAte.ItemIndex := MonthOf(Ate.Date) -1;

  cboAnoDe.ItemIndex  := cboAnoDe.Items.IndexOf(IntToStr(YearOf(De.Date)));
  cboAnoAte.ItemIndex := cboAnoAte.Items.IndexOf(IntToStr(YearOf(Ate.Date)));
end;

procedure TFormRelatorioReceitasDespesasPlanoContas.cboMesDeChange(
  Sender: TObject);
begin
  inherited;
  De.Date  := StartOfAMonth(StrToInt(cboAnoDe.Text), cboMesDe.ItemIndex+1);
  Ate.Date := EndOfAMonth(StrToInt(cboAnoAte.Text), cboMesAte.ItemIndex+1);
end;

end.
