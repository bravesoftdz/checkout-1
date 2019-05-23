unit CadastroTabelaPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTabelaPrecoProduto = class(TFormCadastroTEMPLATE)
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateTPCPN3VLRVENDA: TBCDField;
    SQLTemplateTPCPN3MARGLUCR: TBCDField;
    SQLTemplateTPCPN3VLRVENDAPROM: TBCDField;
    SQLTemplateTPCPDINIPROMO: TDateTimeField;
    SQLTemplateTPCPDFIMPROMO: TDateTimeField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBDateEdit;
    DBEdit5: TDBDateEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    MnAssistente: TMenuItem;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplatePRODA60REFER: TStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Report: TCrpe;
    TblTemporaria: TTable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaCodProduto: TStringField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA30ADESCRREDUZ: TStringField;
    TblTemporariaPRODA255DESCRTEC: TStringField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaPRODN3VLRVENDAPROM: TBCDField;
    TblTemporariaPRODDINIPROMO: TDateTimeField;
    TblTemporariaPRODDFIMPROMO: TDateTimeField;
    TblTemporariaPRODN3VLRCOMPRA: TBCDField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaSALDO: TBCDField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    TblTemporariaPRODCTIPOBAIXA: TStringField;
    TblTemporariaREGISTRO: TDateField;
    TblTemporariaUnidadeDesc5: TStringField;
    TblTemporariaMarcaDescr: TStringField;
    TblTemporariaVLRMargem: TFloatField;
    TblTemporariaGrupoDescr: TStringField;
    TblTemporariaICMSICOD: TIntegerField;
    TblTemporariaPRODN3VLRVENDA2: TBCDField;
    MnListagemdePrecos: TMenuItem;
    SQLProdutoPdvs: TRxQuery;
    N1: TMenuItem;
    RetransmitirtodosprodutosparaosPDVs1: TMenuItem;
    function EnviaProdutoPDVs(Tipo : string) : boolean;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure MnAssistenteClick(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateTPCPN3VLRVENDAChange(Sender: TField);
    procedure SQLTemplateTPCPN3MARGLUCRChange(Sender: TField);
    procedure MnListagemdePrecosClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure RetransmitirtodosprodutosparaosPDVs1Click(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    AlterandoValores:Boolean;
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaPrecoProduto: TFormCadastroTabelaPrecoProduto;

implementation

uses CadastroProdutos, DataModulo, TelaManutencaoTabelaPreco;

{$R *.dfm}

procedure TFormCadastroTabelaPrecoProduto.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='TABELAPRECOPRODUTO';
end;

procedure TFormCadastroTabelaPrecoProduto.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant
      Else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
    End
  Else
    DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('TPRCICOD').Value   := DataSet.DataSource.DataSet.FindField('TPRCICOD').Value;
  SQLTemplateTPCPN3MARGLUCR.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDA.asFloat     := 0;
  SQLTemplateTPCPN3VLRVENDAPROM.asFloat := 0;
end;

procedure TFormCadastroTabelaPrecoProduto.MnAssistenteClick(
  Sender: TObject);
begin
  inherited;
  DM.TabelaPrecoAssistente := SQLTemplate.DataSource.DataSet.FindField('TPRCICOD').asString;
  CriaFormulario(TFormTelaManutencaoTabelaPreco,'FormTelaManutencaoTabelaPreco',False,False,True,'');
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          SQLTemplatePRODA60REFER.asVariant   := DM.SQLTemplate.FindField('PRODA60REFER').asVariant;
          SQLTemplateTPCPN3VLRVENDA.asVariant := DM.SQLTemplate.FindField('PRODN3VLRVENDA').asVariant;
          SQLTemplateTPCPN3MARGLUCR.asVariant := DM.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asVariant;
        End;
    End;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateTPCPN3VLRVENDAChange(
  Sender: TField);
begin
  inherited;
  If AlterandoValores Then Exit;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          AlterandoValores := True;
          If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='O') AND (DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat>0) Then
            SQLTemplateTPCPN3MARGLUCR.asFloat := ((SQLTemplateTPCPN3VLRVENDA.asVariant / DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat) - 1) * 100;
          If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (DM.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat>0) Then
            SQLTemplateTPCPN3MARGLUCR.asFloat := ((Sender.AsFloat / DM.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat) - 1) * 100;
          AlterandoValores := False;
        End;
    End;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateTPCPN3MARGLUCRChange(
  Sender: TField);
begin
  inherited;
  If AlterandoValores Then Exit;
  If SQLTemplate.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').asString],1) Then
        Begin
          AlterandoValores := True;
          If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='O' Then
            SQLTemplateTPCPN3VLRVENDA.asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat * (1+(SQLTemplateTPCPN3VLRVENDA.AsFloat/100));
          If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U' Then
            SQLTemplateTPCPN3VLRVENDA.AsFloat := DM.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat * (1+(SQLTemplateTPCPN3VLRVENDA.AsFloat/100));
          AlterandoValores := False;
        End;
    End;
end;

procedure TFormCadastroTabelaPrecoProduto.MnListagemdePrecosClick(
  Sender: TObject);
begin
  inherited;
  TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable ;
    TblTemporaria.CreateTable ;
  except
    TblTemporaria.CreateTable ;
  end ;
  TblTemporaria.Open ;

  SQLTemplate.Open ;
  while not SQLTemplate.Eof do
    begin
      TblTemporaria.Append ;
      TblTemporariaPRODICOD.AsString        := SQLTemplatePRODICOD.AsString;
      TblTemporariaCodProduto.AsString      := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',SQLTemplatePRODICOD.AsString);
      TblTemporariaPRODA60DESCR.AsString    := SQLTemplateProdutoLookUp.AsString;
      TblTemporariaPRODN3VLRVENDA.AsString  := SQLTemplateTPCPN3VLRVENDA.AsString;
      TblTemporaria.Post;
      SQLTemplate.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos.rpt';
  Report.ReportTitle       := 'Listagem de Produtos com Preco' ;
  Report.WindowStyle.Title := 'Listagem de Produtos com Preco' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  Report.Execute ;
end;

function TFormCadastroTabelaPrecoProduto.EnviaProdutoPDVs(Tipo : string) : boolean ;
var i : integer;
begin
  {Atualiza a tabela ProdutoPDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = "C"';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLProdutoPdvs.close;
          SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.Open;
          if SQLProdutoPdvs.IsEmpty then
            SQLProdutoPdvs.append
          else
            SQLProdutoPdvs.edit;

          {Alimenta Campos}
          SQLProdutoPdvs.fieldbyname('TERMICOD').AsString  := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.fieldbyname('TPRCICOD').AsString  := sqlTemplateTPRCICOD.AsString;
          SQLProdutoPdvs.fieldbyname('PRODICOD').AsString  := sqlTemplatePRODICOD.AsString;
          SQLProdutoPdvs.fieldbyname('EXCLUIR').AsString   := Tipo;
          SQLProdutoPdvs.Post;

          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;

  {fecha terminal}
  dm.sqlconsulta.Close;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  EnviaProdutoPDVs('N');
end;

procedure TFormCadastroTabelaPrecoProduto.RetransmitirtodosprodutosparaosPDVs1Click(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  if sqlTemplate.IsEmpty then
    ShowMessage('É preciso ter produtos!')
  else
    begin
      sqlTemplate.First;
      while not sqlTemplate.eof do
        begin
          sqlTemplate.Edit;
          SQLTemplatePENDENTE.Value := 'S';
          SQLTemplateREGISTRO.Value := now;
          sqlTemplate.Post;
          sqlTemplate.Next;
        end;
      sqlTemplate.First;
      ShowMessage('Produtos Retransmitidos no proximo ciclo de integração!');
    end;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroTabelaPrecoProduto.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  EnviaProdutoPDVs('S');

  inherited;
end;

end.
