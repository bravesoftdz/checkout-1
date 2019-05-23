unit CadastroPedidoVendaItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls,  VarSys, FormResources,
  CurrEdit;

type
  TFormCadastroPedidoVendaItem = class(TFormCadastroTEMPLATE)
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePVITN3QUANT: TBCDField;
    SQLTemplatePVITN2VLRUNIT: TBCDField;
    SQLTemplatePVITN2PERCDESC: TBCDField;
    SQLTemplatePVITN2VLRDESC: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    BtnProduto: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateTotalItemCalc: TBCDField;
    SQLTemplateReferenciaLookUp: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit8: TEvDBNumEdit;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    Label14: TLabel;
    Label15: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplatePVITN3QUANTVEND: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit3: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    Label24: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplatePDVDA60OBS: TStringField;
    Label16: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    SQLTemplatePVITN2PERCCOMIS: TBCDField;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplatePDVDA255OBS1: TStringField;
    LSaldo: TLabel;
    SaldoAtual: TCurrencyEdit;
    SQLGeral: TRxQuery;
    SQLTemplateLOTEA30NRO: TStringField;
    DBEditLote: TDBEdit;
    LabelLote: TLabel;
    TblPedidoVenda: TTable;
    TblPedidoVendaPDVDA13ID: TStringField;
    TblPedidoVendaPDVDDEMISSAO: TDateTimeField;
    TblPedidoVendaPDVDCTIPO: TStringField;
    TblPedidoVendaPDVDCSTATUS: TStringField;
    TblPedidoVendaPDVDN2VLRDESC: TBCDField;
    TblPedidoVendaPDVDN2TOTPROD: TBCDField;
    TblPedidoVendaPDVDN2TOTPED: TBCDField;
    TblPedidoVendaPDVDN2VLRDESCPROM: TBCDField;
    DSTblPedidoVenda: TDataSource;
    TblPedidoVendaCLIEA13ID: TStringField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    SQLTemplateSUBGA60DESCR: TStringField;
    SQLTemplateGRUPA60DESCR: TStringField;
    SQLTemplateVARIA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacao: TRxQuery;
    SQLGrupoSubGrupoVariacaoPRODICOD: TIntegerField;
    SQLGrupoSubGrupoVariacaoGRUPA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacaoSUBGA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacaoVARIA60DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplatePVITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplatePVITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBEditLoteExit(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    ProcuraProduto,
    Ocupado:Boolean;
    NovoTotalItem,
    NovoTotalDesc:Double;
    TotalItem,
    TotalDesc:Double;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVendaItem: TFormCadastroPedidoVendaItem;

implementation

uses DataModulo, TelaConsultaProduto, TelaLancamentoGradePedido,
  UnitLibrary, TelaSaldoPorLote;

{$R *.dfm}

procedure TFormCadastroPedidoVendaItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PEDIDOVENDAITEM';
  if not TblPedidoVenda.Active then TblPedidoVenda.Open;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDVDA13ID').Value := DataSet.DataSource.DataSet.FindField('PDVDA13ID').Value;
  SQLTemplatePVITN3QUANT.asFloat         := 1;
  SQLTemplatePVITN3QUANTVEND.asFloat     := 0;
  SQLTemplatePVITN2VLRUNIT.asFloat       := 0;
  SQLTemplatePVITN2PERCDESC.asFloat      := 0;
  SQLTemplatePVITN2VLRDESC.asFloat       := 0;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) - SQLTemplatePVITN2VLRDESC.AsFloat;
  If DM.GerandoPedidoVenda Then Exit;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
    End;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      SQLGrupoSubGrupoVariacao.Close;
      SQLGrupoSubGrupoVariacao.ParamByName('Produto').Value := DataSet.FieldByName('PRODICOD').AsInteger;
      SQLGrupoSubGrupoVariacao.Open;
      DataSet.FieldByName('GRUPA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoGRUPA60DESCR.AsVariant;
      DataSet.FieldByName('SUBGA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoSUBGA60DESCR.AsVariant;
      DataSet.FieldByName('VARIA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoVARIA60DESCR.AsVariant;
    end;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  If ProcuraProduto or DM.GerandoPedidoVenda Then Exit;
  If EncontrouProduto(SQLTemplate.FieldByName('PRODICOD').asString,DM.SQLTemplate) Then
    Begin
      ProcuraProduto := True;
      SQLTemplate.FieldByName('PRODICOD').asVariant := DM.SQLTemplate.FindField('PRODICOD').asVariant;
      ProcuraProduto := False;
    End;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) Then
     Begin
      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          SQLTemplatePVITN2VLRUNIT.asFloat := RetornaPreco(DM.SQLTemplate,DM.SQLConfigVendaTPRCICOD.asString,SQLTemplate.DataSource.DataSet.FieldByName('ClienteTabelaPrecoLookUp').asString);
          Ocupado:=False;
        End;
      If (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
         (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) Then
        CriaFormulario(TFormTelaLancamentoGradePedido,'FormTelaLancamentoGradePedido',False,False,'')
      else
        begin
          SaldoAtual.Value := 0 ;
          if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
            begin
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
              SQLGeral.SQL.Add('where EMPRICOD = ' + DM.SQLConfigGeralCFGEIEMPPADRAO.AsString) ;
              SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
              SQLGeral.Open ;
              if not SQLGeral.Eof then
                begin
                  SaldoAtual.Font.Color := clBlack ;
                  SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').AsFloat;
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
     end;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN2PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplatePVITN2PERCDESC.asFloat > 0) Then
    SQLTemplatePVITN2VLRDESC.asFloat  := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) * (SQLTemplatePVITN2PERCDESC.asFloat / 100)
  Else
    SQLTemplatePVITN2VLRDESC.asFloat := 0;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplatePVITN2VLRDESC.asFloat  := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) * (SQLTemplatePVITN2PERCDESC.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemPV:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  DM.InserindoItemPV:=False;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
    if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= IdNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;
  If (SQLTemplatePVITN2VLRUNIT.asFloat = 0) Then
    Begin
      ShowMessage('O valor não pode ser zero!');
      SQLTemplatePVITN2VLRUNIT.FocusControl;
      Abort;
    End;
  If (SQLTemplatePVITN3QUANT.asFloat = 0) Then
    Begin
      ShowMessage('A quantidade não pode ser zero!');
      SQLTemplatePVITN3QUANT.FocusControl;
      Abort;
    End;
  inherited;
  NovoTotalItem := SQLTemplateTotalItemCalc.asFloat;
  NovoTotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
{  If SQLTemplate.DataSource.DataSet.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto!');
      Abort;
    End;}
  inherited;
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
{  If SQLTemplate.DataSource.DataSet.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto!');
      Abort;
    End;}
  inherited;
  TotalItem := 0;
  TotalDesc := 0;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
{  If SQLTemplate.DataSource.DataSet.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto!');
      Abort;
    End;}
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
  inherited;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemPV:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  DM.InserindoItemPV:=False;
end;

procedure TFormCadastroPedidoVendaItem.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_F2 Then
    BtnProduto.Click;
end;

procedure TFormCadastroPedidoVendaItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,'');
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SaldoAtual.Font.Color := clBlack ;
  SaldoAtual.Value      := 0 ;
end;

procedure TFormCadastroPedidoVendaItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      LSaldo.Visible := False;
      SaldoAtual.Visible := False;
      SaldoAtual.Font.Color := clBlack ;
    End
  Else
    Begin
      LSaldo.Visible := True;
      SaldoAtual.Visible := True;
    End
end;

procedure TFormCadastroPedidoVendaItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplate.State in DsEditModes)then
    begin
      Application.CreateForm(TFormTelaSaldoPorLote,FormTelaSaldoPorLote);
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Close;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.ParamByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Open;
      FormTelaSaldoPorLote.SQLLoteSaldo.Close;
      FormTelaSaldoPorLote.SQLLoteSaldo.MacroByName('Produto').AsString := 'PRODICOD = ' + SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLLoteSaldo.Open;

      FormTelaSaldoPorLote.SQLLoteSaldo.First;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.First;
      
      FormTelaSaldoPorLote.ShowModal;
      if FormTelaSaldoPorLote.ModalResult = MrOk then
        begin
          SQLTemplateLOTEA30NRO.AsString := FormTelaSaldoPorLote.SQLLoteSaldoLOTEA30NRO.AsString;
        end
      else
        SQLTemplateLOTEA30NRO.AsString := '';

      FormTelaSaldoPorLote.Close;
    end;

end;

procedure TFormCadastroPedidoVendaItem.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  LabelLote.Visible  := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
end;

end.
