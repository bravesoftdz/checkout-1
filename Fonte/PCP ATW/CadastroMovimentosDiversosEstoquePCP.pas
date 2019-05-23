unit CadastroMovimentosDiversosEstoquePCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, RxDBComb, DBActns, ActnList, ImgList,
  RxLookup;

type
  TFormCadastroMovimentosDiversosEstoquePCP = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateMOVDICOD: TIntegerField;
    SQLTemplateMOVDDMOVIMENTO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMOVDA255OBS: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    Label3: TLabel;
    DBEdit3: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBMemo;
    SQLTemplateOperacaoEstoqueCalcField: TStringField;
    SQLTemplateMOVDCCONLUIDO: TStringField;
    ComboConcluido: TRxDBComboBox;
    Label5: TLabel;
    SQLOperacaoEstoque: TRxQuery;
    SQLItens: TRxQuery;
    SQLItensMOVDA13ID: TStringField;
    SQLItensMVDIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensMVDIN3QTD: TBCDField;
    SQLItensLOTEA30NRO: TStringField;
    TblEmpresa: TTable;
    SQLTemplateEmpresaLookup: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    AcessaOperacaoEstoque: TSpeedButton;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    ButtonEmpresa: TSpeedButton;
    DBEdit6: TDBEdit;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    dsSQLOperacaoEstoque: TDataSource;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure AcessaOperacaoEstoqueClick(Sender: TObject);
    procedure ButtonEmpresaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    MovimentarEstoque : boolean ;
  public
    { Public declarations }
  end;

var
  FormCadastroMovimentosDiversosEstoquePCP: TFormCadastroMovimentosDiversosEstoquePCP;

implementation

uses DataModulo,
     CadastroMovimentosDiversosEstoqueItemPCP, UnitLibrary,
     TelaConsultaEmpresa, TelaConsultaOperacaoEstoque;

{$R *.DFM}

procedure TFormCadastroMovimentosDiversosEstoquePCP.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').Value           := EmpresaPadrao;
  DataSet.FieldByName('MOVDDMOVIMENTO').Value     := Date;
  DataSet.FieldByName('MOVDCCONLUIDO').Value      := 'N';
  DataSet.FieldByName('USUAICOD').AsInteger       := UsuarioCorrente;
  DataSet.FieldByName('USUAA60LOGIN').AsString    := UsuarioAtualNome; 
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTODIVERSO';
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.FieldByName('EMPRICOD').IsNull then
    begin
      Informa('Você deve informar uma empresa !');
      Abort;
    end;

  if SQLTemplateOperacaoEstoqueCalcField.AsString = MensagemLookUp then
    begin
      Informa('Operação de Estoque não encontrada !');
      Abort;
    end;

  MovimentarEstoque := false ;
  if (Dataset.State = dsEdit) and
     (Dataset.FieldByName('MOVDCCONLUIDO') .Value = 'S') then
  begin
    MovimentarEstoque := true ;
  end ;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.SQLTemplateAfterPost(
  DataSet: TDataSet);
var Tipo : string ;
begin
  inherited;

  if MovimentarEstoque then
  begin
    SQLItens.Close ;
    SQLItens.MacroByName('MFiltro').Value := 'MOVDA13ID = "' + DataSet.FieldByName('MOVDA13ID').AsString + '"';
    SQLItens.Open ;

    Tipo := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', DataSet.FieldByName('OPESICOD').AsString);
    if Tipo = '' then
    begin
      Informa('Nesta Operação de Estoque não está configurada se o tipo de movimentação é ENTRADA ou SAÍDA');
      SQLTemplate.Edit;
      SQLTemplateMOVDCCONLUIDO.AsString := 'N';
      SQLTemplate.Post;
      Exit;
    end;

    SQLItens.First;
    while not SQLItens.EOF do
    begin
      GravaMovimentoEstoque(DM.SQLProduto,
                            DM.SQLProdutoFilho,
                            DM.SQLProdutoSaldo,
                            SQLTemplateEMPRICOD.AsInteger,
                            SQLItensPRODICOD.Value,
                            DataSet.FieldByName('OPESICOD').AsInteger,
                            SQLItensMVDIN3QTD.Value,
                            Tipo,
                            FormatDateTime('mm/dd/yyyy', Now),
                            '0', //Valor
                            'MOVIMENTOSDIVERSOS',
                            SQLTemplateMOVDA13ID.AsString,
                            SQLItensLOTEA30NRO.AsString);
      SQLItens.Next;
    end;
  end;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.BtnFecharTelaClick(
  Sender: TObject);
begin
  if (SQLTemplate.State = DsBrowse) and (SQLTemplate.FieldByName('MOVDCCONLUIDO') .Value = 'N') then
  begin
   if Pergunta('NAO','A movimentação de estoque somente será efetuada quando este movimento estiver com o campo concluído = "SIM" !' + #13 + 'Deseja concluir agora ?') then
     begin
       SQLTemplate.Edit;
       SQLTemplate.FieldByName('MOVDCCONLUIDO') .Value := 'S';
       Abort;
     end;  
  end;

  inherited;

end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser alterada !');
      Abort;
    end;
  if SQLTemplate.FieldByName('USUAICOD').AsInteger > 0 then
    if UsuarioCorrente <>  SQLTemplate.FieldByName('USUAICOD').AsInteger then
      begin
        Informa('Esta Operação foi iniciada por outro usuário, você não poderá modificar esta operação!');
        Abort;
      end;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.AcessaOperacaoEstoqueClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('OPESICOD');
  FieldOrigem := 'OPESICOD' ;
  CriaFormulario(TFormTelaConsultaOperacaoEstoque,'FormTelaConsultaOperacaoEstoque', False,True,'') ;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.ButtonEmpresaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa', False,True,'') ;

end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLTemplateMOVDCCONLUIDO.AsString = 'S' then
    begin
      Informa('Esta movimentação já foi concluída, portanto, não pode ser excluida !');
      Abort;
    end;
  if SQLTemplate.FieldByName('USUAICOD').AsInteger > 0 then
    if UsuarioCorrente <>  SQLTemplate.FieldByName('USUAICOD').AsInteger then
      begin
        Informa('Esta Operação foi iniciada por outro usuário, você não poderá modificar esta operação!');
        Abort;
      end;
    
  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaOperacaoEstoque.Click;
end;

procedure TFormCadastroMovimentosDiversosEstoquePCP.Button1Click(
  Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroMovimentosDiversosEstoqueItemPCP,'FormCadastroMovimentosDiversosEstoqueItemPCP',True,False,'Movimentos Diversos Nº ' + SQLTemplateMOVDA13ID.Value);
    end;
end;

end.
