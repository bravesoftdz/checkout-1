unit RelatorioProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32;

type
  TFormRelatorioProducao = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    SQLProduto: TRxQuery;
    SQLPedido: TRxQuery;
    SQLOrdemProducao: TRxQuery;
    DSSQLProduto: TDataSource;
    DSSQLPedido: TDataSource;
    dsSQLOrdemProducao: TDataSource;
    cblProduto: TRxDBLookupCombo;
    cblPedido: TRxDBLookupCombo;
    cblOrdemProducao: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DeTermino: TDateEdit;
    Label8: TLabel;
    AteTermino: TDateEdit;
    SQLRelatorio: TRxQuery;
    chkPrevTermino: TCheckBox;
    SQLPedidoORPRA13ID: TStringField;
    SQLPedidoPDVDA13ID: TStringField;
    SQLPedidoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoPDVDDEMISSAO: TDateTimeField;
    SQLOrdemProducaoORPRA13ID: TStringField;
    SQLOrdemProducaoDados: TStringField;
    SQLOrdemProducaoORPRDINICIO: TDateTimeField;
    SQLOrdemProducaoORPRDTERMINO: TDateTimeField;
    SQLOrdemProducaoORPRCSTATUS: TStringField;
    SQLOrdemProducaoORPRDPREVISAO: TDateTimeField;
    chkDatas: TCheckBox;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLRelatorioPRODICOD: TIntegerField;
    SQLRelatorioPRODA60DESCR: TStringField;
    SQLRelatorioPRODA60REFER: TStringField;
    SQLRelatorioPDVDA13ID: TStringField;
    SQLRelatorioPDVDDEMISSAO: TDateTimeField;
    SQLRelatorioPDVDCSTATUS: TStringField;
    SQLRelatorioPDVDTOBS: TStringField;
    SQLRelatorioPDVDCTIPOFRETE: TStringField;
    SQLRelatorioUSUAA60LOGIN: TStringField;
    SQLRelatorioCLIEA60RAZAOSOC: TStringField;
    SQLRelatorioCLIEA60CIDRES: TStringField;
    SQLRelatorioCLIEA2UFRES: TStringField;
    SQLRelatorioPRLTA13ID: TStringField;
    SQLRelatorioPRLTN2QTDE: TBCDField;
    SQLRelatorioPRLTA60DESCR: TStringField;
    SQLRelatorioPRLTN2TEMPOTOTAL: TBCDField;
    SQLRelatorioPRLTCSTATUS: TStringField;
    SQLRelatorioORPRA13ID: TStringField;
    SQLRelatorioORPRDINICIO: TDateTimeField;
    SQLRelatorioORPRDTERMINO: TDateTimeField;
    SQLRelatorioORPRCSTATUS: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaPDVDDEMISSAO: TDateTimeField;
    TblTemporariaPDVDCSTATUS: TStringField;
    TblTemporariaPDVDTOBS: TStringField;
    TblTemporariaPDVDCTIPOFRETE: TStringField;
    TblTemporariaUSUAA60LOGIN: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60CIDRES: TStringField;
    TblTemporariaCLIEA2UFRES: TStringField;
    TblTemporariaPRLTA13ID: TStringField;
    TblTemporariaPRLTN2QTDE: TBCDField;
    TblTemporariaPRLTA60DESCR: TStringField;
    TblTemporariaPRLTN2TEMPOTOTAL: TBCDField;
    TblTemporariaPRLTCSTATUS: TStringField;
    TblTemporariaORPRA13ID: TStringField;
    TblTemporariaORPRDINICIO: TDateTimeField;
    TblTemporariaORPRDTERMINO: TDateTimeField;
    TblTemporariaORPRCSTATUS: TStringField;
    Report: TCrpe;
    procedure SQLOrdemProducaoCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure cblProdutoChange(Sender: TObject);
    procedure cblPedidoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProducao: TFormRelatorioProducao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioProducao.SQLOrdemProducaoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLOrdemProducaoORPRDINICIO.IsNull then
     begin
        SQLOrdemProducaoDados.AsString := 'Inicio ' + FormatDateTime('dd/mm/yyyy hh:mm', SQLOrdemProducaoORPRDINICIO.AsDateTime);
        if SQLOrdemProducaoORPRCSTATUS.AsString = 'O' then
           SQLOrdemProducaoDados.AsString := SQLOrdemProducaoDados.AsString + ' Conclúida em ' + FormatDateTime('dd/mm/yyyy hh:mm', SQLOrdemProducaoORPRDTERMINO.AsDateTime)
        else
           SQLOrdemProducaoDados.AsString := SQLOrdemProducaoDados.AsString + ' Prev. Conclusão: ' + FormatDateTime('dd/mm/yyyy hh:mm', SQLOrdemProducaoORPRDPREVISAO.AsDateTime);
     end;
end;

procedure TFormRelatorioProducao.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLProduto.Active       then SQLProduto.Active       := True;
  if not SQLPedido.Active        then SQLPedido.Active        := True;
  if not SQLOrdemProducao.Active then SQLOrdemProducao.Active := True;
end;

procedure TFormRelatorioProducao.ExecutarBtnClick(Sender: TObject);
Var CampoTermino, Clausula : String;

begin
  inherited;
  Clausula := '';

  if chkPrevTermino.Checked then
     CampoTermino := 'ORPRDPREVISAO'
  else
     CampoTermino := 'ORPRDTERMINO';

  if not chkDatas.Checked then // Verifica datas
     begin
       if De.Date > Ate.Date then
          begin
            Informa('A data final de Inicio da Produção deve ser posterior a ' + FormatDateTime('dd/mm/yyyy', De.Date));
            Ate.SetFocus;
            Abort;
          end
       else
          begin
            if Clausula = '' then
               Clausula := '( ORDEMPRODUCAO.ORPRDINICIO >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', De.Date) + '" as TimeStamp) and ' +
                           ' ORDEMPRODUCAO.ORPRDINICIO <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', Ate.Date) + '" as TimeStamp))'
            else
               Clausula := Clausula + ' and ' +
                           ' (ORDEMPRODUCAO.ORPRDINICIO >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', De.Date) + '" as TimeStamp) and ' +
                           ' ORDEMPRODUCAO.ORPRDINICIO <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', Ate.Date) + '" as TimeStamp))';
          end;

       if DeTermino.Date > AteTermino.Date then
          begin
            Informa('A data final de Término da Produção deve ser posterior a ' + FormatDateTime('dd/mm/yyyy', DeTermino.Date));
            AteTermino.SetFocus;
            Abort;
          end
       else
          begin
            if Clausula = '' then
               Clausula := '( ORDEMPRODUCAO.' + CampoTermino + ' >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', DeTermino.Date) + '" as TimeStamp) and ' +
                           ' ORDEMPRODUCAO.' + CampoTermino + ' <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', AteTermino.Date) + '" as TimeStamp))'
            else
               Clausula := Clausula + ' and ' +
                           ' (ORDEMPRODUCAO.' + CampoTermino + ' >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', DeTermino.Date) + '" as TimeStamp) and ' +
                           ' ORDEMPRODUCAO.' + CampoTermino + ' <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:nn', AteTermino.Date) + '" as TimeStamp))';
          end;     end;

  if cblProduto.KeyValue <> Null then
     begin
        if Clausula = '' then
           Clausula := ' PRODUTOPROD.PRODICOD = ' + IntToStr(cblProduto.KeyValue)
        else
           Clausula := Clausula + ' and PRODUTOPROD.PRODICOD = ' + IntToStr(cblProduto.KeyValue);
     end;

  if cblPedido.KeyValue <> Null then
     begin
       if Clausula = '' then
          Clausula := ' PEDIDOVENDA.PDVDA13ID = "' + cblPedido.KeyValue + '"'
       else
          Clausula := Clausula + ' and PEDIDOVENDA.PDVDA13ID = "' + cblPedido.KeyValue + '"'
     end;

  if cblPedido.KeyValue <> Null then
     begin
       if Clausula = '' then
          Clausula := ' PEDIDOVENDA.PDVDA13ID = "' + cblPedido.KeyValue + '"'
       else
          Clausula := Clausula + ' and  PEDIDOVENDA.PDVDA13ID = "' + cblPedido.KeyValue + '"'
     end;

  if cblOrdemProducao.KeyValue <> Null then
     begin
       if Clausula = '' then
          Clausula := ' ORDEMPRODUCAOITEM.ORPRA13ID = "' + cblOrdemProducao.KeyValue + '"'
       else
          Clausula := Clausula + ' and ORDEMPRODUCAOITEM.ORPRA13ID = "' + cblOrdemProducao.KeyValue + '"'
     end;

  if Clausula = '' then
     begin
        Informa('Não há filtro para a pesquisa.');
        Abort;
     end;

  SQLRelatorio.Close;
  SQLRelatorio.MacroByName('MFiltro').AsString := Clausula;
  SQLRelatorio.Open;

  if SQLRelatorio.IsEmpty then
     begin
        Informa('Não há resultado para a pesquisa.');
        Abort;
     end;

  try
     TblTemporaria.Close;
     TblTemporaria.DeleteTable;
     TblTemporaria.CreateTable;
  except
     TblTemporaria.CreateTable;
  end;

  BatchMove.Execute;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorios Item Producao.rpt';
  Report.WindowStyle.Title := 'Itens em Produção';
  Report.ReportTitle       := 'Itens em Produção'; 

  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '"' + EmpresaAtualNome + '"';
  Report.Formulas.Send;

  Report.Execute;
end;

procedure TFormRelatorioProducao.cblProdutoChange(Sender: TObject);
begin
  inherited;
  if cblProduto.KeyValue <> Null then
     begin
        SQLPedido.Close;
        SQLPedido.MacroByName('MFiltro').AsString := ' PDVDA13ID in (select PDVDA13ID from PEDIDOVENDAITEM where PRODICOD = ' + IntToStr(cblProduto.KeyValue) + ')';
        SQLPedido.Open;

        SQLOrdemProducao.Close;
        SQLOrdemProducao.MacroByName('MFiltro').AsString := ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCAOITEM where PRLTA13ID in (select PRLTA13ID from PRODUCAOLOTE where PRODICOD = ' + IntToStr(cblProduto.KeyValue) + '))';
        SQLOrdemProducao.Open;
     end
  else
     begin
        SQLPedido.Close;
        SQLPedido.MacroByName('MFiltro').AsString := '0=0';
        SQLPedido.Open;

        SQLOrdemProducao.Close;
        SQLOrdemProducao.MacroByName('MFiltro').AsString := '0=0';
        SQLOrdemProducao.Open;
     end;

end;

procedure TFormRelatorioProducao.cblPedidoChange(Sender: TObject);
begin
  inherited;
  SQLProduto.Close;
  if cblPedido.KeyValue <> Null then
     //Seleciona Somente os Produtos que estão nesse Pedido
     SQLProduto.MacroByName('MFiltro').AsString := '(PRODUCAOLOTE.PRODICOD in (select PRODICOD from PEDIDOVENDAITEM where PDVDA13ID = "' + cblPedido.KeyValue + '"))'
  else
     SQLProduto.MacroByName('MFiltro').AsString := '0=0';
  SQLProduto.Open;

  if cblPedido.KeyValue <> Null then
     begin
        //Seleciona somente as OP´s que contem este Pedido
        SQLOrdemProducao.Close;
        if (SQLOrdemProducao.MacroByName('MFiltro').AsString = '0=0') then
          begin
             if (cblProduto.KeyValue <> Null) then
                 SQLOrdemProducao.MacroByName('MFiltro').AsString := ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCAOITEM where PRLTA13ID in (select PRLTA13ID from PRODUCAOLOTE where PRODICOD = ' + IntToStr(cblProduto.KeyValue) + ')) and ' +
                                                                     ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCITEMPED where PDVDA13ID = "' + cblPedido.KeyValue + '")'
             else
                 SQLOrdemProducao.MacroByName('MFiltro').AsString := ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCITEMPED where PDVDA13ID = "' + cblPedido.KeyValue + '")';
          end
        else
          begin
             if (cblProduto.KeyValue <> Null) then
                 SQLOrdemProducao.MacroByName('MFiltro').AsString := SQLOrdemProducao.MacroByName('MFiltro').AsString + ' and ' +
                                                                     ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCAOITEM where PRLTA13ID in (select PRLTA13ID from PRODUCAOLOTE where PRODICOD = ' + IntToStr(cblProduto.KeyValue) + ')) and ' +
                                                                     ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCITEMPED where PDVDA13ID = "' + cblPedido.KeyValue + '")'
             else
                 SQLOrdemProducao.MacroByName('MFiltro').AsString := SQLOrdemProducao.MacroByName('MFiltro').AsString + ' and ' +
                                                                     ' ORPRA13ID in (select ORPRA13ID from ORDEMPRODUCITEMPED where PDVDA13ID = "' + cblPedido.KeyValue + '")';
          end;

        SQLOrdemProducao.Open;
     end
  else
     begin
        //Seleciona todas as OP´s
        SQLOrdemProducao.Close;
        SQLOrdemProducao.MacroByName('MFiltro').AsString := '0=0';
        SQLOrdemProducao.Open;
     end;
end;

end.
