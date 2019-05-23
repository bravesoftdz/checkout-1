unit CadastroInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, RxLookup, DBCtrls, DBTables, DBActns,
  ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, RxDBComb;

type
  TFormCadastroInsumo = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLUnidade: TRxQuery;
    dsSQLUnidade: TDataSource;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadePENDENTE: TStringField;
    SQLUnidadeREGISTRO: TDateTimeField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    DBEdit12: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SQLICMS: TRxQuery;
    DSSQLICMS: TDataSource;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    SQLExec: TRxQuery;
    Button4: TRxSpeedButton;
    AcessaMarca: TSpeedButton;
    AcessaICMS: TSpeedButton;
    AcessaUnidade: TSpeedButton;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label16: TLabel;
    SQLProdutoSaldoNovo: TRxQuery;
    SQLProdutoSaldoNovoEMPRICOD: TIntegerField;
    SQLProdutoSaldoNovoPRODICOD: TIntegerField;
    SQLProdutoSaldoNovoPSLDN3QTDE: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMIN: TBCDField;
    SQLProdutoSaldoNovoPSLDN3QTDMAX: TBCDField;
    SQLProdutoSaldoNovoPENDENTE: TStringField;
    SQLProdutoSaldoNovoREGISTRO: TDateTimeField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    AcessaCor: TSpeedButton;
    AcessaTamanho: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    SQLTamanho: TRxQuery;
    SQLTamanhoGRADICOD: TIntegerField;
    SQLTamanhoGRTMICOD: TIntegerField;
    SQLTamanhoGRTMA5DESCR: TStringField;
    DSSQLTamanho: TDataSource;
    DSSQLCor: TDataSource;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODA255DESCRTEC: TStringField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplatePRODN3PESOBRUTO: TBCDField;
    SQLTemplatePRODN3PESOLIQ: TBCDField;
    SQLTemplatePRODN3CAPACEMBAL: TBCDField;
    SQLTemplatePRODN3VLRVENDA: TBCDField;
    SQLTemplatePRODN3VLRCOMPRA: TBCDField;
    SQLTemplatePRODN3VLRCUSTO: TBCDField;
    SQLTemplatePRODN3VLRCUSTOMED: TBCDField;
    SQLTemplatePRODN3PERCIPI: TBCDField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODA60DIMENSAO: TStringField;
    SQLTemplatePRODCTIPO: TStringField;
    SQLTemplatePRODN2PIS: TBCDField;
    SQLTemplatePRODA254COMPQUIMICA: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePRODN2COMISVISTA: TBCDField;
    SQLTemplatePRODN2COMISPRAZO: TBCDField;
    SQLTemplatePRODN3QTDEBAIXA: TBCDField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplatePRODN3PERCMARGLUCR: TBCDField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLTemplatePRODITIPOPRODBALAN: TStringField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODN3VLRCOMPRAMED: TBCDField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLICMSICMSICOD: TIntegerField;
    SQLICMSICMSA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    SQLTemplatePRODN3ALTURA: TBCDField;
    SQLTemplatePRODN3LARGURA: TBCDField;
    SQLTemplatePRODN3DIMENTOTAL: TBCDField;
    SQLTemplatePRODN3COMPRIMENTO: TBCDField;
    SQLTemplatePRODN2PERDA: TBCDField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure AcessaUnidadeClick(Sender: TObject);
    procedure AcessaMarcaClick(Sender: TObject);
    procedure AcessaICMSClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLProdutoSaldoNovoBeforePost(DataSet: TDataSet);
    procedure AcessaCorClick(Sender: TObject);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcessaTamanhoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplatePRODN3ALTURAChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Editando : Boolean;    
  public
    { Public declarations }
  end;

var
  FormCadastroInsumo: TFormCadastroInsumo;

implementation

uses FormResources, VarSYS, CadastroInsumosFilhos, CadastroFornecedores,
  CadastroUnidade, CadastroMarca, CadastroICMS, CadastroProdutoFornecedor,
  UnitLibrary, CadastroCor, CadastroTamanho;

{$R *.dfm}

procedure TFormCadastroInsumo.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTO';
  if not SQLUnidade.Active        then SQLUnidade.Active       := True;
  if not SQLMarca.Active          then SQLMarca.Active         := True;
  if not SQLICMS.Active           then SQLICMS.Active          := True;
  if not SQLTamanho.Active        then SQLTamanho.Active       := True;
  if not SQLCor.Active            then SQLCor.Active           := True;
end;

procedure TFormCadastroInsumo.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [dsInsert] Then
    Begin
      SQLProdutoSaldoNovo.Close;
      SQLProdutoSaldoNovo.Open;
      SQLEmpresa.Close;
      SQLEmpresa.Open;
      SQLEmpresa.First;
      While Not SQLEmpresa.Eof Do
        Begin
          SQLProdutoSaldoNovo.Append;
          SQLProdutoSaldoNovoEMPRICOD.asInteger   := SQLEmpresaEMPRICOD.asInteger;
          SQLProdutoSaldoNovoPRODICOD.asInteger   := SQLTemplatePRODICOD.AsInteger;
          SQLProdutoSaldoNovoPSLDN3QTDE.asFloat   := 0;
          SQLProdutoSaldoNovoPSLDN3QTDMAX.asFloat := 0;
          SQLProdutoSaldoNovoPSLDN3QTDMIN.asFloat := 0;
          SQLProdutoSaldoNovo.Post;
          SQLEmpresa.Next;
        End;
    End;
  SQLTemplateREGISTRO.AsDateTime := Now;
  SQLTemplatePENDENTE.AsString   := 'S';
  SQLTemplatePRODCATIVO.asString          := 'S';
  SQLTemplatePRODCGERACOMIS.asString      := 'S';
  SQLTemplatePRODCSERVICO.asString        := 'N';
  SQLTemplatePRODCTIPOBAIXA.asString      := 'A';
  SQLTemplatePRODIAGRUPGRADE.AsInteger    := SQLTemplatePRODICOD.AsInteger;
  SQLTemplatePRODA30ADESCRREDUZ.AsString  := SQLTemplatePRODA60DESCR.AsString;
end;

procedure TFormCadastroInsumo.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('Se você deletar um Insumo poderá causar danos a árvore de produtos.'+Char(#13)+
                            'É aconselhável que não seja deletado nenhum insumo antes de conferir seus dependentes.'+char(#13)+
                            'Deseja continuar e deletar este Insumo?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = IdNo then Abort;
  inherited;
end;

procedure TFormCadastroInsumo.AcessaUnidadeClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('UNIDICOD');
  FieldOrigem   := 'UNIDICOD';
  DataSetLookup := SQLUnidade;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,'') ;
end;

procedure TFormCadastroInsumo.AcessaMarcaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('MARCICOD');
  FieldOrigem := 'MARCICOD' ;
  DataSetLookup := SQLMarca;
  CriaFormulario(TFormCadastroMarca,'FormCadastroMarca',False,True,'') ;
end;

procedure TFormCadastroInsumo.AcessaICMSClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('ICMSICOD');
  FieldOrigem   := 'ICMSICOD' ;
  DataSetLookup := SQLICMS;
  CriaFormulario(TFormCadastroICMS,'FormCadastroICMS',False,True,'') ;
end;

procedure TFormCadastroInsumo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  Editando := False;
  SQLTemplatePRODN3PESOBRUTO.asFloat      := 0;
  SQLTemplatePRODN3PESOLIQ.asFloat        := 0;
  SQLTemplatePRODN3CAPACEMBAL.asFloat     := 1;
  SQLTemplatePRODN2COMISVISTA.asFloat     := 0;
  SQLTemplatePRODN3VLRCOMPRA.asFloat      := 0;
  SQLTemplatePRODN3VLRCUSTO.asFloat       := 0;
  SQLTemplatePRODN3VLRVENDA.asFloat       := 0;
  SQLTemplatePRODN3QTDEBAIXA.asFloat      := 0;
  SQLTemplatePRODN3VLRCUSTOMED.asFloat    := 0;
  SQLTemplatePRODN3PERCIPI.asFloat        := 0;
  SQLTemplatePRODN3PERCMARGLUCR.asFloat   := 0;
  SQLTemplatePRODN2COMISPRAZO.asFloat     := 0;
  SQLTemplatePRODITIPOPRODBALAN.AsInteger := 0;
  SQLTemplatePRODDCAD.asDateTime          := Date;
  SQLTemplatePRODN2PIS.AsFloat            := 0;
  SQLTemplatePRODN3VLRCOMPRAMED.AsFloat   := 0;
  SQLTemplatePRODN3ALTURA.AsFloat	  := 0;
  SQLTemplatePRODN3LARGURA.AsFloat	  := 0;
  SQLTemplatePRODN3DIMENTOTAL.AsFloat	  := 0;
  SQLTemplatePRODN3COMPRIMENTO.AsFloat	  := 0;
  SQLTemplatePRODN2PERDA.AsFloat	  := 0;
  Editando := True;  
end;

procedure TFormCadastroInsumo.SQLTemplateDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if pos('FOREIGN KEY', E.Message) > 0 then
     begin
       Informa('Você não pode Excluir este Produto Filho (Insumo), pois ja esta sendo usado na arvore de produção.' + char(#13) + 'Exclua-o da Arvore que esta usando-o e tente exclui-lo novamente.' + char(#13) + 'Obrigado.');
       Abort;
     end;
end;

procedure TFormCadastroInsumo.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaMarca.Click;
end;

procedure TFormCadastroInsumo.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaICMS.Click;
end;

procedure TFormCadastroInsumo.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaUnidade.Click;

end;

procedure TFormCadastroInsumo.SQLProdutoSaldoNovoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormCadastroInsumo.AcessaCorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateCORICOD;
  FieldOrigem := 'CORICOD' ;
  DataSetLookup := SQLCor;
  CriaFormulario(TFormCadastroCor,'FormCadastroCor',False,True,'Insumo ' + SQLTemplatePRODICOD.AsString);
end;

procedure TFormCadastroInsumo.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaCor.Click;
end;

procedure TFormCadastroInsumo.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaTamanho.Click;
end;

procedure TFormCadastroInsumo.AcessaTamanhoClick(Sender: TObject);
begin
  inherited;
  DSMasterSys  := DSTemplate;
  FieldLookup := SQLTemplateGRTMICOD;
  FieldOrigem := 'GRTMICOD' ;
  DataSetLookup := SQLTamanho;
  CriaFormulario(TFormCadastroTamanho,'FormCadastroTamanho',False,True,'Insumo ' + SQLTemplatePRODICOD.AsString);
end;

procedure TFormCadastroInsumo.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroInsumosFilhos,'FormCadastroInsumosFilhos',True,False,SQLTemplatePRODA60DESCR.AsString);
    end ;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroProdutoFornecedor,'FormCadastroProdutoFornecedor',True,False,SQLTemplatePRODA60DESCR.AsString);
    end ;
end;

procedure TFormCadastroInsumo.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  Button3.Enabled := SQLTemplatePRODCTIPO.AsString = 'S';
end;

procedure TFormCadastroInsumo.SQLTemplatePRODN3ALTURAChange(
  Sender: TField);
begin
  inherited;
  if Editando then
     begin
        SQLTemplatePRODN3DIMENTOTAL.AsFloat := (SQLTemplatePRODN3ALTURA.AsFloat *
                                               SQLTemplatePRODN3COMPRIMENTO.AsFloat *
                                               SQLTemplatePRODN3LARGURA.AsFloat); //Em metros
        if SQLTemplatePRODN2PERDA.AsFloat <> 0 then
           SQLTemplatePRODN3DIMENTOTAL.AsFloat := SQLTemplatePRODN3DIMENTOTAL.AsFloat *
                                                  (1 + (SQLTemplatePRODN2PERDA.AsFloat / 100)); //Em metros
        if SQLTemplatePRODN3DIMENTOTAL.AsFloat > 0 then
           SQLTemplatePRODN3CAPACEMBAL.AsFloat := SQLTemplatePRODN3DIMENTOTAL.AsFloat;
        SQLTemplatePRODA60DIMENSAO.AsString    := 'Altura:  ' + FormatFloat('#,###0.000', SQLTemplatePRODN3ALTURA.AsFloat) + '; ' +
                                                  'Largura: ' + FormatFloat('#,###0.000', SQLTemplatePRODN3LARGURA.AsFloat) + '; ' +
                                                  'Comprimento: ' + FormatFloat('#,###0.000', SQLTemplatePRODN3COMPRIMENTO.AsFloat) + '; ' +
                                                  'Perda: ' + FormatFloat('#,###0.000', SQLTemplatePRODN2PERDA.AsFloat);
    end;
end;

procedure TFormCadastroInsumo.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  Editando := SQLTemplate.State in dsEditModes;
end;

procedure TFormCadastroInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys   := Nil;
  DataSetLookup := Nil;
end;

end.
