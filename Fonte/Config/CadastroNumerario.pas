unit CadastroNumerario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  VarSys, RxLookup, FormResources, UnitLibrary, DBActns, ActnList, ImgList,
  Variants, ExtDlgs, Serial, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroNumerario = class(TFormCadastroTEMPLATE)
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateNUMEA30DESCR: TStringField;
    SQLTemplateNUMECVISTAPRAZO: TStringField;
    SQLTemplateNUMECATIVO: TStringField;
    SQLTemplateNUMEA5TIPO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    ComboTipoPadrao: TRxDBComboBox;
    Button4: TRxSpeedButton;
    Label3: TLabel;
    ComboAtivo: TRxDBComboBox;
    SQLOperacaoCaixa: TRxQuery;
    Label7: TLabel;
    SQLTemplatePRCAA13ID: TStringField;
    TableProvedorCartao: TTable;
    SQLTemplatePRCAA60DESCR: TStringField;
    ComboCartao: TDBLookupComboBox;
    ButtonCadastroProvedorCartao: TSpeedButton;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    Label4: TLabel;
    RetornaPlanoContas: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    TabDebito: TTabSheet;
    Label14: TLabel;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    Panel4: TPanel;
    Label12: TLabel;
    SQLTemplatePlanodeContasCreditoCalcField: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    Label6: TLabel;
    ComboVistaPrazo: TRxDBComboBox;
    Label8: TLabel;
    SQLOperTes: TRxQuery;
    SQLOperTesOPTEICOD: TIntegerField;
    SQLOperTesOPTEA60DESCR: TStringField;
    SQLOperTesOPTECDEBCRED: TStringField;
    SQLOperTesPENDENTE: TStringField;
    SQLOperTesREGISTRO: TDateTimeField;
    SQLOperTesPLCTA15COD: TStringField;
    dsSQLOperTes: TDataSource;
    SQLTemplateOPTEICODENVTES: TIntegerField;
    ComboRamo: TRxDBLookupCombo;
    DBCheckBox38: TDBCheckBox;
    SQLTemplateNUMECVALETROCO: TStringField;
    SQLTemplateNUMEBIMAGEM: TBlobField;
    GroupBoxFOTO: TGroupBox;
    Image: TImage;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    PictureDialog: TOpenPictureDialog;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateNUMEN2TAXAADM: TFloatField;
    SQLTemplateNUMECBONUSTROCA: TStringField;
    DBCheckBox1: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure ComboAtivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCadastroProvedorCartaoClick(Sender: TObject);
    procedure ComboCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNumerario: TFormCadastroNumerario;

implementation

uses DataModulo, CadastroOperacaoCaixa, CadastroNumerarioTotalizadorECF,
  CadastroNumerarioTotalizadorCaixa, CadastroProvedorCartao,
  TelaConsultaPlanoContas;

{$R *.DFM}

procedure TFormCadastroNumerario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'NUMERARIO';
  if not TableProvedorCartao.Active then
    TableProvedorCartao.Open;
  SQLOperTes.Open;  
end;

procedure TFormCadastroNumerario.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateNUMEN2TAXAADM.IsNull then
    SQLTemplateNUMEN2TAXAADM.Value := 0;
    
  if SQLTemplateNUMEA30DESCR.Value = '' Then
    begin
      Beep;
      ShowMessage('O campo Descrição deve ser preenchido!');
      Abort;
    end;
end;

procedure TFormCadastroNumerario.Button1Click(Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroNumerarioTotalizadorECF,'FormCadastroNumerarioTotalizadorECF',True,False,True,'');
    end;
  if (Sender as TRxSpeedButton).Name = 'Button4' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroNumerarioTotalizadorCaixa,'FormCadastroNumerarioTotalizadorCaixa',True,False,True,'');
    end;
end;

procedure TFormCadastroNumerario.ComboAtivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Escape then
    begin
      if DSTemplate.DataSet.State in DsEditModes then
        SQLTemplate.FieldByName((Sender as TRxDBComboBox).DataField).AsString := '';
    end;
end;

procedure TFormCadastroNumerario.ButtonCadastroProvedorCartaoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PRCAA13ID');
  FieldOrigem := 'PRCAA13ID';
  CriaFormulario(TFormCadastroProvedorCartao,'FormCadastroProvedorCartao',False,True,True,'');
end;

procedure TFormCadastroNumerario.ComboCartaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    SQLTemplatePRCAA13ID.AsVariant := Null;
end;

procedure TFormCadastroNumerario.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15CODCRED').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODCRED').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCreditoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant  := Null;

  //PLANO CONTAS DEBITO
   If DataSet.FieldByName('PLCTA15CODDEB').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODDEB').AsString],1) Then
        DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasDebitoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant  := Null;

end;

procedure TFormCadastroNumerario.RetornaPlanoContasClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODCRED');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Operação de Estoque');

end;

procedure TFormCadastroNumerario.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEB');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Operação de Estoque');

end;

procedure TFormCadastroNumerario.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click;
end;

procedure TFormCadastroNumerario.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContasDebito.Click;

end;

procedure TFormCadastroNumerario.BtnCapturaFotoClick(Sender: TObject);
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  inherited;
  if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
    SQLTemplate.Edit;
  if PictureDialog.Execute then
  begin
    FileStream:=TFileStream.Create(PictureDialog.FileName,
      fmOpenRead or fmShareDenyWrite);
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateNUMEBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroNumerario.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateNUMEBIMAGEM.AsString := '';
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;
    end;
end;

procedure TFormCadastroNumerario.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  // Mostra Imagem Associada
  if SQLTemplateNUMEBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateNUMEBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      Image.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    Image.Picture:=nil;
end;

end.
