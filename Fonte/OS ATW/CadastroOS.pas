unit CadastroOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, RxLookup, RxDBComb,
  UCrpe32,UnitLibrary;

type
  TFormCadastroOS = class(TFormCadastroTEMPLATE)
    SQLTemplateOSA13ID: TStringField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateOSICOD: TIntegerField;
    SQLTemplateOSDEMISSAO: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateOSDPREVENTREGA: TDateTimeField;
    SQLTemplateOSCSTATUS: TStringField;
    SQLTemplateOSN2VLRSERVICO: TBCDField;
    SQLTemplateOSN2VLRDESC: TBCDField;
    SQLTemplateOSN2PERCDESC: TBCDField;
    SQLTemplateOSN2VLRPRODUTOS: TBCDField;
    SQLTemplateOSN2VLRTOTAL: TBCDField;
    SQLTemplateOSN2VLRFRETE: TBCDField;
    SQLTemplateOSN2BASEISSQN: TBCDField;
    SQLTemplateOSN2VLRISSQN: TBCDField;
    SQLTemplateOSOBS: TMemoField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplateOSDCONCLUSAO: TDateTimeField;
    SQLTemplateUSUA60RESPCONC: TStringField;
    SQLTemplateOSDENTREGA: TDateTimeField;
    SQLTemplateOSA60PESSOAENT: TStringField;
    SQLTemplateOSA30DOCPESENT: TStringField;
    SQLTemplateUSUA60RESPENT: TStringField;
    SQLTemplateUSUA60LOGIN: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label14: TLabel;
    DBMemoObs: TDBMemo;
    Label22: TLabel;
    DataEmissao: TDBDateEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    TOTAL: TDBEdit;
    Label11: TLabel;
    Label6: TLabel;
    DBVlrServico: TDBEdit;
    VlrFrete: TDBEdit;
    VlrDesconto: TDBEdit;
    Label7: TLabel;
    VlrProdutos: TDBEdit;
    Label9: TLabel;
    vlrISSQN: TDBEdit;
    Label16: TLabel;
    Label13: TLabel;
    BaseISSQN: TDBEdit;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    DBLTransportadora: TRxDBLookupCombo;
    DSSQLTransportadora: TDataSource;
    btProcuraTranspostadora: TSpeedButton;
    PercDesconto: TDBEdit;
    Label3: TLabel;
    DataPrevistaEntrega: TDBDateEdit;
    Label4: TLabel;
    SQLUsuario: TRxQuery;
    DSSQLUsuario: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    SQLUsuarios: TRxQuery;
    SQLUsuariosUSUAICOD: TIntegerField;
    SQLUsuariosUSUAA60LOGIN: TStringField;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Splitter1: TSplitter;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    SQLItensOSA13ID: TStringField;
    SQLItensOSITICOD: TIntegerField;
    SQLItensOSITTSTATUS: TStringField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensOSITA30NRONF: TStringField;
    SQLItensOSITCORIGNF: TStringField;
    SQLItensOSITA60EMPRESANF: TStringField;
    SQLItensOSITA60SERIEEQUIP: TStringField;
    SQLItensOSITTDESCREQUIP: TMemoField;
    SQLItensOSITTPROBLEMA: TMemoField;
    SQLItensOSITTSOLUCAO: TMemoField;
    SQLItensOSITTSOFTDRIVEUTIL: TMemoField;
    SQLItensOSITTOBS: TMemoField;
    SQLItensOSITN2VLRITEM: TBCDField;
    SQLItensOSITN2VLRDESC: TBCDField;
    SQLItensOSITN2PERCDESC: TBCDField;
    SQLItensOSITN2VLRTOTITEM: TBCDField;
    SQLItensOSITDCONCLUSAO: TDateTimeField;
    SQLItensUSUA60RESPCONC: TStringField;
    SQLItensUSUA60LOGIN: TStringField;
    SQLItensPENDENTE: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    Splitter2: TSplitter;
    SQLItemProduto: TRxQuery;
    DSSQLItemProduto: TDataSource;
    SQLProduto: TRxQuery;
    Label17: TLabel;
    PanelItensOS: TPanel;
    PanelProdutoItensOS: TPanel;
    DBGridOSItemProduto: TDBGrid;
    DBGridOSItem: TDBGrid;
    ImpressaoOS: TCrpe;
    mnImprimirOS: TMenuItem;
    tbOSImpressao: TTable;
    BatchMoveOSItem: TBatchMove;
    SQLOSImpressao: TRxQuery;
    tbItemOS: TTable;
    tbItemProduto: TTable;
    BatchMoveOSItemProduto: TBatchMove;
    BatchMoveOS: TBatchMove;
    SQLGeral: TRxQuery;
    mnCancelarOS: TMenuItem;
    mnConcluirOS: TMenuItem;
    GrupoDadosEntrega: TGroupBox;
    DBEditDocPessoaEntrega: TDBEdit;
    Label21: TLabel;
    DBEditPessoaEntrega: TDBEdit;
    Label20: TLabel;
    DBDataEntrega: TDBDateEdit;
    Label18: TLabel;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    mnEntregarOS: TMenuItem;
    Label5: TLabel;
    DBStatus: TRxDBComboBox;
    SQLItensFUNCA13ID: TStringField;
    SQLItensPRODA60DESCR: TStringField;
    SQLTemplateOSA60ENDENTR: TStringField;
    SQLTemplateOSA60BAIRROENT: TStringField;
    SQLTemplateOSAUFENTR: TStringField;
    SQLTemplateOSA15FONEENTR: TStringField;
    SQLTemplateOSA60CIDENTR: TStringField;
    SQLItensOSITDCANC: TDateTimeField;
    SQLItensOSITN2QTDE: TBCDField;
    GroupBoxCliFornEmp: TGroupBox;
    Label31: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEditCGCCPF: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    EditIERG: TDBEdit;
    DBEdit14: TDBEdit;
    DBLCliente: TRxDBLookupCombo;
    btProcuraCliente: TSpeedButton;
    Label30: TLabel;
    SQLTemplateCliFornEmpLookUp: TStringField;
    SQLTemplateCliFornEmpEnderecoLookUp: TStringField;
    SQLTemplateCliFornEmpEstadoLookUp: TStringField;
    SQLTemplateCliFornEmpBairroLookUp: TStringField;
    SQLTemplateCliFornEmpCEPLookUp: TStringField;
    SQLTemplateCliFornEmpCGCCPFLookUp: TStringField;
    SQLTemplateCliFornEmpIERGLookUp: TStringField;
    SQLTemplateCliFornEmpCidadeLookUp: TStringField;
    SQLTemplateCliFornEmpFoneLookUp: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLItensFUNCA60NOME: TStringField;
    SQLOSImpressaoOSA13ID: TStringField;
    SQLOSImpressaoTERMICOD: TIntegerField;
    SQLOSImpressaoEMPRICOD: TIntegerField;
    SQLOSImpressaoOSICOD: TIntegerField;
    SQLOSImpressaoOSDEMISSAO: TDateTimeField;
    SQLOSImpressaoCLIEA13ID: TStringField;
    SQLOSImpressaoOSDPREVENTREGA: TDateTimeField;
    SQLOSImpressaoOSCSTATUS: TStringField;
    SQLOSImpressaoOSN2VLRSERVICO: TBCDField;
    SQLOSImpressaoOSN2VLRDESC: TBCDField;
    SQLOSImpressaoOSN2PERCDESC: TBCDField;
    SQLOSImpressaoOSN2VLRPRODUTOS: TBCDField;
    SQLOSImpressaoOSN2VLRTOTAL: TBCDField;
    SQLOSImpressaoOSN2VLRFRETE: TBCDField;
    SQLOSImpressaoOSN2BASEISSQN: TBCDField;
    SQLOSImpressaoOSN2VLRISSQN: TBCDField;
    SQLOSImpressaoOSOBS: TMemoField;
    SQLOSImpressaoTRANICOD: TIntegerField;
    SQLOSImpressaoOSDCONCLUSAO: TDateTimeField;
    SQLOSImpressaoUSUA60RESPCONC: TStringField;
    SQLOSImpressaoOSDENTREGA: TDateTimeField;
    SQLOSImpressaoOSA60PESSOAENT: TStringField;
    SQLOSImpressaoOSA30DOCPESENT: TStringField;
    SQLOSImpressaoUSUA60RESPENT: TStringField;
    SQLOSImpressaoUSUA60LOGIN: TStringField;
    SQLOSImpressaoPENDENTE: TStringField;
    SQLOSImpressaoREGISTRO: TDateTimeField;
    SQLOSImpressaoOSA60ENDENTR: TStringField;
    SQLOSImpressaoOSA60BAIRROENT: TStringField;
    SQLOSImpressaoOSAUFENTR: TStringField;
    SQLOSImpressaoOSA15FONEENTR: TStringField;
    SQLOSImpressaoOSA60CIDENTR: TStringField;
    SQLOSImpressaoCLIEA60RAZAOSOC: TStringField;
    SQLOSImpressaoTRANA60RAZAOSOC: TStringField;
    SQLOSImpressaoCLIEA60CONTATO: TStringField;
    SQLOSImpressaoCLIEA15FONE1: TStringField;
    SQLOSImpressaoCLIEA15FONE2: TStringField;
    SQLOSImpressaoCLIEA60ENDRES: TStringField;
    SQLOSImpressaoCLIEA60CIDRES: TStringField;
    SQLOSImpressaoCLIEA2UFRES: TStringField;
    SQLOSImpressaoCLIEA8CEPRES: TStringField;
    SQLOSImpressaoEMPRA60RAZAOSOC: TStringField;
    SQLOSImpressaoEMPRA20FONE: TStringField;
    SQLOSImpressaoEMPRA20FAX: TStringField;
    SQLOSImpressaoEMPRA60END: TStringField;
    SQLOSImpressaoEMPRA60BAI: TStringField;
    SQLOSImpressaoEMPRA60CID: TStringField;
    SQLOSImpressaoEMPRA2UF: TStringField;
    SQLOSImpressaoEMPRA8CEP: TStringField;
    SQLOSImpressaoEMPRA14CGC: TStringField;
    SQLOSImpressaoEMPRA20IE: TStringField;
    SQLOSImpressaoEMPRA60EMAIL: TStringField;
    SQLOSImpressaoEMPRA60URL: TStringField;
    SQLItemProdutoDetalhe: TRxQuery;
    SQLItemProdutoDetalheOSA13ID: TStringField;
    SQLItemProdutoDetalheOSITICOD: TIntegerField;
    SQLItemProdutoDetalheOSIPICOD: TIntegerField;
    SQLItemProdutoDetalhePRODICOD: TIntegerField;
    SQLItemProdutoDetalheOSIPN3QTDE: TBCDField;
    SQLItemProdutoDetalheOSIPN2VLRCUSTO: TBCDField;
    SQLItemProdutoDetalheOSIPN2VLRTOTPROD: TBCDField;
    SQLItemProdutoDetalheUSUA60LOGIN: TStringField;
    SQLItemProdutoDetalhePENDENTE: TStringField;
    SQLItemProdutoDetalheREGISTRO: TDateTimeField;
    SQLItemProdutoDetalhePRODA60DESCR: TStringField;
    tbOSImpressaoOSA13ID: TStringField;
    tbOSImpressaoTERMICOD: TIntegerField;
    tbOSImpressaoEMPRICOD: TIntegerField;
    tbOSImpressaoOSICOD: TIntegerField;
    tbOSImpressaoOSDEMISSAO: TDateTimeField;
    tbOSImpressaoCLIEA13ID: TStringField;
    tbOSImpressaoOSDPREVENTREGA: TDateTimeField;
    tbOSImpressaoOSCSTATUS: TStringField;
    tbOSImpressaoOSN2VLRSERVICO: TBCDField;
    tbOSImpressaoOSN2VLRDESC: TBCDField;
    tbOSImpressaoOSN2PERCDESC: TBCDField;
    tbOSImpressaoOSN2VLRPRODUTOS: TBCDField;
    tbOSImpressaoOSN2VLRTOTAL: TBCDField;
    tbOSImpressaoOSN2VLRFRETE: TBCDField;
    tbOSImpressaoOSN2BASEISSQN: TBCDField;
    tbOSImpressaoOSN2VLRISSQN: TBCDField;
    tbOSImpressaoOSOBS: TMemoField;
    tbOSImpressaoTRANICOD: TIntegerField;
    tbOSImpressaoOSDCONCLUSAO: TDateTimeField;
    tbOSImpressaoUSUA60RESPCONC: TStringField;
    tbOSImpressaoOSDENTREGA: TDateTimeField;
    tbOSImpressaoOSA60PESSOAENT: TStringField;
    tbOSImpressaoOSA30DOCPESENT: TStringField;
    tbOSImpressaoUSUA60RESPENT: TStringField;
    tbOSImpressaoUSUA60LOGIN: TStringField;
    tbOSImpressaoPENDENTE: TStringField;
    tbOSImpressaoREGISTRO: TDateTimeField;
    tbOSImpressaoOSA60ENDENTR: TStringField;
    tbOSImpressaoOSA60BAIRROENT: TStringField;
    tbOSImpressaoOSAUFENTR: TStringField;
    tbOSImpressaoOSA15FONEENTR: TStringField;
    tbOSImpressaoOSA60CIDENTR: TStringField;
    tbOSImpressaoCLIEA60RAZAOSOC: TStringField;
    tbOSImpressaoTRANA60RAZAOSOC: TStringField;
    tbOSImpressaoCLIEA60CONTATO: TStringField;
    tbOSImpressaoCLIEA15FONE1: TStringField;
    tbOSImpressaoCLIEA15FONE2: TStringField;
    tbOSImpressaoCLIEA60ENDRES: TStringField;
    tbOSImpressaoCLIEA60CIDRES: TStringField;
    tbOSImpressaoCLIEA2UFRES: TStringField;
    tbOSImpressaoCLIEA8CEPRES: TStringField;
    tbOSImpressaoEMPRA60RAZAOSOC: TStringField;
    tbOSImpressaoEMPRA20FONE: TStringField;
    tbOSImpressaoEMPRA20FAX: TStringField;
    tbOSImpressaoEMPRA60END: TStringField;
    tbOSImpressaoEMPRA60BAI: TStringField;
    tbOSImpressaoEMPRA60CID: TStringField;
    tbOSImpressaoEMPRA2UF: TStringField;
    tbOSImpressaoEMPRA8CEP: TStringField;
    tbOSImpressaoEMPRA14CGC: TStringField;
    tbOSImpressaoEMPRA20IE: TStringField;
    tbOSImpressaoEMPRA60EMAIL: TStringField;
    tbOSImpressaoEMPRA60URL: TStringField;
    tbItemOSOSA13ID: TStringField;
    tbItemOSOSITICOD: TIntegerField;
    tbItemOSOSITTSTATUS: TStringField;
    tbItemOSPRODICOD: TIntegerField;
    tbItemOSOSITA30NRONF: TStringField;
    tbItemOSOSITCORIGNF: TStringField;
    tbItemOSOSITA60EMPRESANF: TStringField;
    tbItemOSOSITA60SERIEEQUIP: TStringField;
    tbItemOSOSITTDESCREQUIP: TMemoField;
    tbItemOSOSITTPROBLEMA: TMemoField;
    tbItemOSOSITTSOLUCAO: TMemoField;
    tbItemOSOSITTSOFTDRIVEUTIL: TMemoField;
    tbItemOSOSITTOBS: TMemoField;
    tbItemOSOSITN2VLRITEM: TBCDField;
    tbItemOSOSITN2VLRDESC: TBCDField;
    tbItemOSOSITN2PERCDESC: TBCDField;
    tbItemOSOSITN2VLRTOTITEM: TBCDField;
    tbItemOSOSITDCONCLUSAO: TDateTimeField;
    tbItemOSUSUA60RESPCONC: TStringField;
    tbItemOSUSUA60LOGIN: TStringField;
    tbItemOSPENDENTE: TStringField;
    tbItemOSREGISTRO: TDateTimeField;
    tbItemOSFUNCA13ID: TStringField;
    tbItemOSOSITDCANC: TDateTimeField;
    tbItemOSOSITN2QTDE: TBCDField;
    tbItemOSPRODA60DESCR: TStringField;
    tbItemOSFUNCA60NOME: TStringField;
    SQLItemProdutoOSA13ID: TStringField;
    SQLItemProdutoOSITICOD: TIntegerField;
    SQLItemProdutoOSIPICOD: TIntegerField;
    SQLItemProdutoPRODICOD: TIntegerField;
    SQLItemProdutoOSIPN3QTDE: TBCDField;
    SQLItemProdutoOSIPN2VLRCUSTO: TBCDField;
    SQLItemProdutoOSIPN2VLRTOTPROD: TBCDField;
    SQLItemProdutoUSUA60LOGIN: TStringField;
    SQLItemProdutoPENDENTE: TStringField;
    SQLItemProdutoREGISTRO: TDateTimeField;
    SQLItemProdutoPRODA60DESCR: TStringField;
    tbItemProdutoOSA13ID: TStringField;
    tbItemProdutoOSITICOD: TIntegerField;
    tbItemProdutoOSIPICOD: TIntegerField;
    tbItemProdutoPRODICOD: TIntegerField;
    tbItemProdutoOSIPN3QTDE: TBCDField;
    tbItemProdutoOSIPN2VLRCUSTO: TBCDField;
    tbItemProdutoOSIPN2VLRTOTPROD: TBCDField;
    tbItemProdutoUSUA60LOGIN: TStringField;
    tbItemProdutoPENDENTE: TStringField;
    tbItemProdutoREGISTRO: TDateTimeField;
    tbItemProdutoPRODA60DESCR: TStringField;
    Panel4: TPanel;
    mnComprovantedeEntrega: TMenuItem;
    gboDadosConclusao: TGroupBox;
    DataConclusao: TDBEdit;
    DBERespConclusao: TDBEdit;
    PanelPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    tbOSImpressaoEMPRBLOGOTIPO: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure btProcuraTranspostadoraClick(Sender: TObject);
    procedure btProcuraClienteClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DataPrevistaEntregaExit(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure mnImprimirOSClick(Sender: TObject);
    procedure DBStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBStatusDropDown(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure mnCancelarOSClick(Sender: TObject);
    procedure mnConcluirOSClick(Sender: TObject);
    procedure DBStatusChange(Sender: TObject);
    procedure ConcluirCancelarOS(Sender: TObject);
    procedure mnEntregarOSClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure DBGridOSItemDblClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateOSN2VLRDESCChange(Sender: TField);
    procedure SQLTemplateOSN2VLRSERVICOChange(Sender: TField);
    procedure SQLTemplateOSN2PERCDESCChange(Sender: TField);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridOSItemDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
  private

    { Private declarations }
    Ocupado : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroOS : TFormCadastroOS;
  EstatoAnterior : Integer;
  RetornoUser    : TInfoRetornoUser;
  CallDetail     : Boolean;
implementation

uses VarSYS, FormResources, CadastroTransportadora,
  TelaConsultaCliente, CadastroOSItem, DataModulo, TelaEntregaOS;

{$R *.dfm}

procedure TFormCadastroOS.FormCreate(Sender: TObject);
var Altura : Integer;
begin
  inherited;
  TABELA := 'OS';
  if not SQLTransportadora.Active then SQLTransportadora.Active  := True;
  if not SQLUsuario.Active        then SQLUsuario.Active         := True;
  if not SQLCliente.Active        then SQLCliente.Active         := True;
  if not SQLUsuarios.Active       then SQLUsuarios.Active        := True;
  if not SQLProduto.Active        then SQLProduto.Active         := true;
end;

procedure TFormCadastroOS.btProcuraTranspostadoraClick(Sender: TObject);
begin
  inherited;
  DSMasterSys   := DSTemplate;
  FieldLookup   := SQLTEmplate.FieldByName('TRANICOD');
  FieldOrigem   := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroOS.btProcuraClienteClick(Sender: TObject);
begin
  inherited;
  DSMasterSys   := DSTemplate;
  FieldLookup   := SQLTEmplate.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormTelaConsultaCliente,'FormTelaConsultaCliente',False,True,False,'');
end;

procedure TFormCadastroOS.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys   := DSTemplate;
  CriaFormulario(TFormCadastroOSItem,'FormCadastroOSItem',True,False,True,SQLTemplateOSA13ID.AsString);
end;

procedure TFormCadastroOS.ConcluirCancelarOS(Sender: TObject);
begin
  if DBStatus.ItemIndex = 2 then  //Cancelar
     begin
     if EstatoAnterior = 0 then
        begin
           Informa('Você não pode Cancelar uma OS com situação Em Aberto. Se não houver itens exclua-a.');
           DBStatus.ItemIndex := EstatoAnterior;
           Abort;
        end;

     if SQLItens.IsEmpty then
        begin
          if Application.MessageBox('Tem certeza que deseja Cancelar esta OS?','Atenção',MB_ICONQUESTION+MB_YESNO+MB_SYSTEMMODAL) = IdYes then
             begin
                Informa('Você não pode Cancelar uma OS que não contem Itens.'+char(#13)+'Verifique se esta OS esta fazia e Exclua-a caso necessário.');
                DBStatus.ItemIndex := EstatoAnterior;
             end;
        end;
       SQLTemplate.Edit;
       SQLTemplateOSCSTATUS.AsString := 'E';
       SQLTemplate.Post;
     end;

  if DBStatus.ItemIndex = 3 then  // Concluir
     begin
       SQLTemplate.Edit;
       SQLTemplateOSDCONCLUSAO.AsDateTime := Now;
       SQLTemplateOSCSTATUS.AsString := 'C';
       SQLTemplate.Post;
       gboDadosConclusao.Visible := True;
     end;
end;

procedure TFormCadastroOS.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (SQLTemplateOSCSTATUS.AsString = 'C') then  //Concluido
     begin
       mnConcluirOS.Enabled     := False;
       mnCancelarOS.Enabled     := True;
       mnEntregarOS.Enabled     := True;
       gboDadosConclusao.Visible:= True;
     end
  else
     begin
       mnConcluirOS.Enabled  := True;
       mnCancelarOS.Enabled  := False;
       mnEntregarOS.Enabled  := False;
       gboDadosConclusao.Visible := False;
     end;

  if (SQLTemplateOSCSTATUS.AsString = 'C') and (SQLTemplateOSDENTREGA.AsVariant <> NULL) then
    begin
      mnCancelarOS.Enabled  := False;
      mnEntregarOS.Enabled  := False;
      mnComprovantedeEntrega.Enabled := True;
      GrupoDadosEntrega.Visible:= True;
    end
  else
    if (SQLTemplateOSCSTATUS.AsString = 'C') and (SQLTemplateOSDENTREGA.AsVariant <> NULL) then
       begin
         mnComprovantedeEntrega.Enabled := False;
         mnEntregarOS.Enabled  := True;
         GrupoDadosEntrega.Visible:= False;
       end;

  if (SQLTemplateOSCSTATUS.AsString = 'E') then  //Cancelado
     begin
       gboDadosConclusao.Visible:= True;
       mnConcluirOS.Enabled  := False;
       mnCancelarOS.Enabled  := False;
       mnEntregarOS.Enabled  := False;
     end;

  if (SQLTemplateUSUA60LOGIN.AsString <> UsuarioAtualNome) and Self.Active then
     begin
       mnConcluirOS.Enabled  := False;
       mnCancelarOS.Enabled  := False;
       mnEntregarOS.Enabled  := False;
     end;
end;

procedure TFormCadastroOS.DataPrevistaEntregaExit(Sender: TObject);
begin
  inherited;
  if DataEmissao.Date > DataPrevistaEntrega.Date then
     begin
       Informa('A data de Previsão de Entrega não pode ser inferior a data de Emissão.');
       DataPrevistaEntrega.SetFocus;
     end;
end;

procedure TFormCadastroOS.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;

  SQLTemplateOSCSTATUS.AsString := 'A';
  SQLTemplateOSDEMISSAO.AsDateTime := Now;
  DBStatus.ItemIndex := 0;
  if SQLUsuarios.Locate('USUAICOD',DM.UsuarioAtual,[loCaseInsensitive]) then
     SQLTemplateUSUA60LOGIN.AsString := SQLUsuariosUSUAA60LOGIN.AsString;
  SQLTemplateOSN2PERCDESC.AsFloat := 0;
  SQLTemplateOSN2VLRDESC.AsFloat := 0;
  SQLTemplateOSN2VLRFRETE.AsFloat := 0;
  SQLTemplateOSN2VLRSERVICO.AsFloat := 0;
  SQLTemplateOSN2VLRPRODUTOS.AsFloat := 0;
  SQLTemplateOSDPREVENTREGA.AsDateTime := Now;

  SQLTemplateCLIEA13ID.FocusControl;

end;

procedure TFormCadastroOS.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DBStatus.ItemIndex = 3 then   //Concluido
     begin
        if SQLTemplateOSDCONCLUSAO.AsDateTime < DataEmissao.Date then
           begin
             DataConclusao.SetFocus;
             raise Exception.Create('A data de Conclusão não pode ser anterior a data de Emissão do Item.');
           end;
        if SQLTemplateOSDCONCLUSAO.AsDateTime = 0 then
           begin
              DataConclusao.SetFocus;
              raise Exception.Create('Você deve informar uma data de Conclusão antes de encerrar a OS.');
           end;
     end;

  if (DBStatus.ItemIndex in [2,3]) and (SQLTemplateOSDENTREGA.AsVariant = NULL) then
     begin
       AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser);
       if RetornoUser.NomeUsuarioAutenticado = '' then
          begin
            Informa('Você deve informar um Usuário e Senha corretos para encerrar o Item.'+char(#13)+'Tente novamente.');
            DBStatus.ItemIndex := EstadoAnterior;
            Abort;
          end;
        SQLTemplateUSUA60RESPCONC.AsString := RetornoUser.NomeUsuarioAutenticado;
     end;
end;

procedure TFormCadastroOS.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if CallDetail then
     begin
        CallDetail := False;
        Button3.Click;
     end;
end;

procedure TFormCadastroOS.mnImprimirOSClick(Sender: TObject);
begin
  inherited;
  try
    tbOSImpressao.Close;
    tbItemOS.Close;
    tbItemProduto.Close;
    tbOSImpressao.DeleteTable;
    tbItemOS.DeleteTable;
    tbItemProduto.DeleteTable;
    tbOSImpressao.CreateTable;
    tbItemOS.CreateTable;
    tbItemProduto.CreateTable;
  except
    begin
      tbOSImpressao.CreateTable;
      tbItemOS.CreateTable;
      tbItemProduto.CreateTable;
    end;
  end;
try
    BatchMoveOS.Execute;

    DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);
    if not tbOSImpressao.Active then tbOSImpressao.Open;
    tbOSImpressao.Edit;
    tbOSImpressaoEMPRBLOGOTIPO.Value := DM.SQLEmpresaEMPRBLOGOTIPO.Value;
    tbOSImpressao.Post;

    BatchMoveOSItem.Execute;
    BatchMoveOSItemProduto.Execute;
    tbOSImpressao.Close;
    tbOSImpressao.AddIndex('OSA13ID_KEY','OSA13ID',[IXPRIMARY]);
    tbItemOS.Close;
    tbItemOS.AddIndex('OSITICOD_KEY','OSA13ID;OSITICOD',[IXPRIMARY]);
    tbItemProduto.Close;
    tbItemProduto.AddIndex('ItemProd_KEY','OSA13ID;OSITICOD;OSIPICOD',[IXPRIMARY]);
    if (Sender as TMenuItem).Tag = 1 then
       begin
         ImpressaoOS.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\OSImpressao.rpt';
         ImpressaoOS.WindowStyle.Title := 'Impressão Ordem de Serviço';
       end;

    if (Sender as TMenuItem).Tag = 2 then
       begin
         ImpressaoOS.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\OSCompEntrega.rpt';
         ImpressaoOS.WindowStyle.Title := 'Impressão Comprovenate de Entrega OS';
       end;

    ImpressaoOS.WindowState:= wsMaximized;
    ImpressaoOS.Execute;
  except
     on E : ECrpeError do
     ShowMessage('Não foi possivel gerar o relatório.'+char(#13)+
                 E.Message);
  end;
end;

procedure TFormCadastroOS.DBStatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  EstatoAnterior := DBStatus.ItemIndex;
end;

procedure TFormCadastroOS.DBStatusDropDown(Sender: TObject);
begin
  inherited;
  EstatoAnterior := DBStatus.ItemIndex;
end;

procedure TFormCadastroOS.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     begin
     if (SQLTemplateOSCSTATUS.AsString = 'C') then
       if OP <> 'CANC' then
          begin
            Informa('Você não pode Alterar uma OS Concluída.');
            SQLTemplate.Cancel;
            Abort;
          end;
       if (SQLTemplateOSCSTATUS.AsString = 'E') then
          begin
            Informa('Você não pode Alterar uma OS Cancelada.');
            SQLTemplate.Cancel;
            Abort;
          end;
       if SQLTemplateOSDENTREGA.AsDateTime <> 0 then
          begin
            Informa('Você não pode Alterar uma OS já Entregue.');
            SQLTemplate.Cancel;
            Abort;
          end;
   end;
end;

procedure TFormCadastroOS.mnCancelarOSClick(Sender: TObject);
begin
  inherited;
  if SQLTemplateOSCSTATUS.AsString = 'A' then
     EstatoAnterior     := 0;
  if SQLTemplateOSCSTATUS.AsString = 'N' then
     EstatoAnterior     := 1;
  if SQLTemplateOSCSTATUS.AsString = 'E' then
     EstatoAnterior     := 2;
  if SQLTemplateOSCSTATUS.AsString = 'C' then
     EstatoAnterior     := 3;

  DBStatus.ItemIndex := 2;
  OP := 'CANC';
  ConcluirCancelarOS(DBStatus);
  OP := '';
end;

procedure TFormCadastroOS.mnConcluirOSClick(Sender: TObject);

begin
  inherited;
  if SQLTemplateOSCSTATUS.AsString = 'A' then
     EstatoAnterior     := 0;
  if SQLTemplateOSCSTATUS.AsString = 'N' then
     EstatoAnterior     := 1;
  if SQLTemplateOSCSTATUS.AsString = 'E' then
     EstatoAnterior     := 2;
  if SQLTemplateOSCSTATUS.AsString = 'C' then
     EstatoAnterior     := 3;

  DBStatus.ItemIndex := 3;

  if SQLItens.IsEmpty then
     begin
       Informa('Você não pode Concluir/Cancelar uma OS que não há Itens.'+char(#13)+'Verifique se esta OS esta vazia e Exclua-a ou Inclua novos itens caso necessário.');
       DBStatus.ItemIndex := EstatoAnterior;
       Abort;
     end;

  SQLGeral.Close;
  SQLGeral.SQL.Text := 'select count(OSA13ID) from OSITEM where OSA13ID = ''' + SQLTemplateOSA13ID.AsString + ''' and OSITTSTATUS = ''A'' ';
  SQLGeral.Open;

  if SQLGeral.FieldByName('COUNT').AsInteger > 0 then
     begin
       Informa('Há Itens em Aberto nessa OS.'+Char(#13)+'Conclua os itens antes de Conclir a OS.');
       DBStatus.ItemIndex := EstatoAnterior;
       Abort;
     end;

  ConcluirCancelarOS(Sender);
end;

procedure TFormCadastroOS.DBStatusChange(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in [dsInsert]) and (DBStatus.ItemIndex <> 0) then
     begin
        Informa('Você não pode incluir uma OS com o Estato diferente de <Aberto>.');
        DBStatus.ItemIndex := EstadoAnterior;
        Abort;
     end;

  if (EstatoAnterior = 3) and (DBStatus.ItemIndex <> 3) then
     begin
       Informa('Você não pode alterar o estato de uma OS já Concluída.');
       DBStatus.ItemIndex := EstatoAnterior;
       Abort;
     end;

  SQLGeral.Close;
  SQLGeral.SQL.Text := 'select count(OSA13ID) from OSITEM where OSA13ID = ''' + SQLTemplateOSA13ID.AsString + ''' and OSITTSTATUS = ''A'' ';
  SQLGeral.Open;
  
  if (SQLGeral.FieldByName('COUNT').AsInteger > 0) and ((DBStatus.ItemIndex = 3) or (DBStatus.ItemIndex = 2)) then
     begin
       Informa('Há Itens em Aberto nessa OS.'+Char(#13)+'Conclua os itens antes de Concluir/Cancelar a OS.');
       DBStatus.ItemIndex := EstatoAnterior;
       Abort;
     end;

  if ((DBStatus.ItemIndex = 3) or (DBStatus.ItemIndex = 2)) then
     ConcluirCancelarOS(Sender);
end;

procedure TFormCadastroOS.mnEntregarOSClick(Sender: TObject);
begin
  inherited;
  OP := 'CANC'; // Para deixar alterar um item Concluido
  Application.CreateForm(TFormTelaEntregaOS,FormTelaEntregaOS);
  OP := '';
end;

procedure TFormCadastroOS.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CallDetail := True;
end;

procedure TFormCadastroOS.DBGridOSItemDblClick(Sender: TObject);
begin
    Button3.Click;
end;

procedure TFormCadastroOS.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if (SQLTemplateUSUA60LOGIN.AsString <> UsuarioAtualNome) and Self.Active then
     begin
       Informa('Você não é o Autor dessa OS. Não pode Exclui-la.');
       SQLTemplate.Cancel;
       Abort;
     end;

  if SQLTemplateOSCSTATUS.AsString <> 'A' then
     begin
       Informa('Você só pode Excluir OS´s que estão em Aberto.');
       Abort;
     end;
  inherited;
end;

procedure TFormCadastroOS.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
        Begin
          DataSet.FieldByName('CliFornEmpLookup').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
          DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
          DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
          DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
          DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
          DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
          DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
          If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
            Begin
              DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
              DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
              DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '000.000.000-00;0;_';
            End
          Else
            Begin
              DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
              DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
              DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '00.000.000/0000-00;0;_';
            End;
        End
      Else
        DataSet.FieldByName('CliFornEmpLookup').asString     := MensagemLookUp;
    End
  Else
    DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;

//STATUS
end;

procedure TFormCadastroOS.SQLTemplateOSN2VLRDESCChange(Sender: TField);
begin
  inherited;
  if not Ocupado then
     begin
        Ocupado := True;
        if (SQLTemplate.State in dsEditModes) then
          if (SQLTemplateOSN2VLRSERVICO.AsFloat <> 0)then
              SQLTemplateOSN2PERCDESC.AsFloat := (SQLTemplateOSN2VLRDESC.AsFloat / SQLTemplateOSN2VLRSERVICO.AsFloat) * 100 ;
        SQLTemplateOSN2VLRSERVICOChange(Sender);
        Ocupado := False;
     end;
end;

procedure TFormCadastroOS.SQLTemplateOSN2VLRSERVICOChange(Sender: TField);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     begin
       SQLTemplateOSN2VLRDESC.AsFloat := SQLTemplateOSN2VLRSERVICO.AsFloat * (SQLTemplateOSN2PERCDESC.AsFloat / 100);
       SQLTemplateOSN2VLRTOTAL.AsFloat := (SQLTemplateOSN2VLRSERVICO.AsFloat - SQLTemplateOSN2VLRDESC.AsFloat) + SQLTemplateOSN2VLRPRODUTOS.AsFloat + SQLTemplateOSN2VLRFRETE.AsFloat;
       SQLTemplateOSN2BASEISSQN.AsFloat := SQLTemplateOSN2VLRSERVICO.AsFloat - SQLTemplateOSN2VLRDESC.AsFloat;
       SQLTemplateOSN2VLRISSQN.AsFloat := SQLTemplateOSN2BASEISSQN.AsFloat * (DM.SQLConfigVendaCFVEN3ALIQISSQN.AsFloat / 100);
     end;
end;

procedure TFormCadastroOS.SQLTemplateOSN2PERCDESCChange(Sender: TField);
begin
  inherited;
  if not Ocupado then
     begin
        Ocupado := True;
        if (SQLTemplate.State in dsEditModes) then
          if (SQLTemplateOSN2VLRSERVICO.AsFloat <> 0)then
              SQLTemplateOSN2VLRDESC.AsFloat := (SQLTemplateOSN2VLRSERVICO.AsFloat) * (SQLTemplateOSN2VLRDESC.AsFloat / 100);
        SQLTemplateOSN2VLRSERVICOChange(Sender);
        Ocupado := False;
     end;
end;

procedure TFormCadastroOS.SQLTemplateAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not SQLItens.Active then
     SQLItens.Active     := true;
  if not SQLItemProdutoDetalhe.Active  then
     SQLItemProdutoDetalhe.Active      := true;
end;

procedure TFormCadastroOS.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  if (SQLTemplateUSUA60LOGIN.AsString <> UsuarioAtualNome) and Self.Active then
     begin
       Informa('Você não é o Autor dessa OS. Não pode alterá-la.');
       DBStatus.ItemIndex := EstatoAnterior;
       SQLTemplate.Cancel;
       Abort;
     end;
  inherited;
end;

procedure TFormCadastroOS.FormActivate(Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroOS.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'OSCSTATUS' then
     begin
        if Column.Field.AsString = 'A' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'ABERTO');
        if Column.Field.AsString = 'N' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'ANDAMENTO');
        if Column.Field.AsString = 'E' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CANCELADO');
        if Column.Field.AsString = 'C' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CONCLUIDO');
     end;
end;


procedure TFormCadastroOS.DBGridOSItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'OSITTSTATUS' then
     begin
        if Column.Field.AsString = 'A' then
           DBGridOSItem.Canvas.TextOut(Rect.Left, Rect.Top + 2 ,'ABERTO');
        if Column.Field.AsString = 'C' then
           DBGridOSItem.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CONCLUIDO');
        if Column.Field.AsString = 'N' then
           DBGridOSItem.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CANCELADO');
     end;
     
  if Column.FieldName = 'OSITCORIGNF' then
     begin
        if Column.Field.AsString = 'I' then
           DBGridOSItem.Canvas.TextOut(Rect.Left, Rect.Top + 2,'Interna');
        if Column.Field.AsString = 'E' then
           DBGridOSItem.Canvas.TextOut(Rect.Left, Rect.Top + 2,'Externa');
     end;

end;

procedure TFormCadastroOS.SpeedButton1Click(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = "' + ComboCliente.Value + '" ';

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incomleta, verifique!');    

end;

end.
