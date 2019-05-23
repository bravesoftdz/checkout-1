unit CadastroProducaoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup;

type
  TFormCadastroProducaoLote = class(TFormCadastroTEMPLATE)
    SQLTemplatePRLTA13ID: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRLTICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRLTN2QTDE: TBCDField;
    SQLProduto: TRxQuery;
    dsSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    GroupBox1: TGroupBox;
    dblProduto: TRxDBLookupCombo;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplatePRLTA60DESCR: TStringField;
    SQLTemplatePRLTN2TEMPOTOTAL: TBCDField;
    gpoTempo: TGroupBox;
    SQLTemplatePRODA60DESCR: TStringField;
    AcessaProduto: TSpeedButton;
    SQLCountTOTAL: TRxQuery;
    SQLCountTOTALTEMPOTOTAL: TBCDField;
    SQLCountTOTALCAPACIDADE: TBCDField;
    SQLCountTOTALMEDIA: TFloatField;
    lblTempoProducaoLote: TLabel;
    SQLTemplatePRLTCSTATUS: TStringField;
    Label4: TLabel;
    SQLTemplateStatus: TStringField;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure dblProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure SQLCountTOTALAfterOpen(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    TempoTotal              : Double;
    ParametroInterno        : String;
  public
    { Public declarations }
  end;

var
  FormCadastroProducaoLote: TFormCadastroProducaoLote;

implementation

uses VarSYS, FormResources, CadastroProdutos, DataModulo;

{$R *.dfm}

procedure TFormCadastroProducaoLote.FormCreate(Sender: TObject);
begin
  ParametroInterno := DM.ParametroExterno;
  DM.ParametroExterno := '';
  inherited;
  Tabela := 'PRODUCAOLOTE';
  if not SQLProduto.Active then SQLProduto.Active := True;
end;

procedure TFormCadastroProducaoLote.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRLTN2QTDE.AsFloat   := 1;
  SQLTemplatePRLTCSTATUS.AsString := 'N';
end;

procedure TFormCadastroProducaoLote.dblProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaProduto.Click;
end;

procedure TFormCadastroProducaoLote.AcessaProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplatePRODICOD;
  FieldOrigem := 'PRODICOD';
  DataSetLookup := SQLProduto;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,'Lote: ' + SQLTemplatePRLTA60DESCR.AsString);
end;

procedure TFormCadastroProducaoLote.SQLCountTOTALAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SQLCountTOTAL.First;
  TempoTotal := 0;

  if SQLCountTOTAL.IsEmpty then
     TempoTotal := 0;

  while not SQLCountTOTAL.Eof do
     begin
        TempoTotal := TempoTotal + SQLCountTOTALMEDIA.AsFloat;
        SQLCountTOTAL.Next;
     end;

  gpoTempo.Visible := TempoTotal <> 0;
end;

procedure TFormCadastroProducaoLote.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRLTN2TEMPOTOTAL.AsVariant := TempoTotal;
end;

procedure TFormCadastroProducaoLote.DSTemplateDataChange(Sender: TObject;
  Field: TField);
Var A1,A2,A3, Tempo : Double;
begin
  inherited;
  if not SQLTemplatePRODICOD.IsNull then
     begin
        lblTempoProducaoLote.Caption := '';
        SQLCountTOTAL.Close;
        SQLCountTOTAL.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        SQLCountTOTAL.Open;

        if TempoTotal <> 0 then
           begin
              Tempo := SQLTemplatePRLTN2QTDE.AsFloat * TempoTotal;

              if pos(',',FloatToStr((Tempo/60) / 24)) > 0 then
                 A1 := StrToFloat(copy(FloatToStr((Tempo/60) / 24),0,pos(',',FloatToStr((Tempo/60) / 24))-1))
              else
                 A1 := (Tempo/60) / 24;

              if pos(',',FloatToStr((Tempo/60) - (A1 * 24))) > 0 then
                 A2 := StrToFloat(copy(FloatToStr((Tempo/60) - (A1 * 24)),0,pos(',',FloatToStr((Tempo/60) - (A1 * 24)))-1))
              else
                 A2 := (Tempo/60) - (A1 * 24);

              A3 := (((Tempo/60) - (A1 * 24) - (A2)) * 60);

              if A1 <> 0 then
                 if lblTempoProducaoLote.Caption = '' then
                    lblTempoProducaoLote.Caption := FloatToStrF(A1, ffGeneral, 0, 2) + ' Dias'
                 else
                    lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption + ' e ' + FloatToStr(A1) + ' Dias';
              if A2 <> 0 then
                 if lblTempoProducaoLote.Caption = '' then
                    lblTempoProducaoLote.Caption := FloatToStrF(A2, ffGeneral, 0, 2) + ' Horas'
                 else
                    lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption + ' e ' + FloatToStr(A2) + ' Horas';
              if A3 <> 0 then
                 if lblTempoProducaoLote.Caption = '' then
                    lblTempoProducaoLote.Caption := FloatToStrF(A3, ffGeneral, 0, 2) + ' Minutos'
                 else
                    lblTempoProducaoLote.Caption := lblTempoProducaoLote.Caption  + ' e ' + FloatToStr(A3) + ' Minutos';
           end;
     end;
end;

procedure TFormCadastroProducaoLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := nil;
  DSMasterSys   := nil;
end;

procedure TFormCadastroProducaoLote.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTemplatePRLTCSTATUS.IsNull then
     case SQLTemplatePRLTCSTATUS.AsString[1] of
         'N' : SQLTemplateStatus.AsString := 'Nenhum';
         'A' : SQLTemplateStatus.AsString := 'Aguardando...';
         'P' : SQLTemplateStatus.AsString := 'Produzindo...';
         'C' : SQLTemplateStatus.AsString := 'Concluido';
     end;
end;

procedure TFormCadastroProducaoLote.SQLTemplateBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if ParametroInterno <> '' then
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := ParametroInterno
       else
          SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + ' and ' + ParametroInterno;
     end;
end;

end.
