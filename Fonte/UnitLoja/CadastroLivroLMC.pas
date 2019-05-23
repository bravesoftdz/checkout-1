unit CadastroLivroLMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, ToolEdit, RXDBCtrl, DBCtrls, DB, DBTables,
  DBActns, ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, RXCtrls, ExtCtrls, Buttons, jpeg, RxLookup, RDprint,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroLivroLMC = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateLILMICOD: TIntegerField;
    SQLTemplateLILMIPAGATUAL: TIntegerField;
    SQLTemplateLILMIPAGMAX: TIntegerField;
    SQLTemplateLILMDDTABERT: TDateTimeField;
    SQLTemplateLILMDDTFECHA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBDataPromoIni: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    DSSQLEmpresa: TDataSource;
    ComboEmpresa: TRxDBLookupCombo;
    TermodeAbertura1: TMenuItem;
    ermodeEncerramento1: TMenuItem;
    RDprint: TRDprint;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateLILMIPAGINI: TIntegerField;
    SQLTemplateLILMA60DISTRIB: TStringField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRA20IMUNIC: TStringField;
    SQLCapacidade: TRxQuery;
    SQLCapacidadeCAPACIDADE: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TermodeAbertura1Click(Sender: TObject);
    function MesExtenso(Data : TDateTime) : string;
    procedure ermodeEncerramento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroLivroLMC: TFormCadastroLivroLMC;

implementation

{$R *.dfm}

procedure TFormCadastroLivroLMC.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'LIVROLMC';
  SQLEmpresa.Open;
end;

procedure TFormCadastroLivroLMC.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateLILMDDTABERT.Value := Now;
end;

procedure TFormCadastroLivroLMC.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  Try
    inherited;
    if SQLTemplateLILMDDTFECHA.IsNull then
      if MessageDlg('Deseja Imprimir o Termo de Abertura?', mtConfirmation, [mbYes,mbNo], 0) = mrYEs then
        TermodeAbertura1Click(self);
  Except
  end;
end;

procedure TFormCadastroLivroLMC.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage('Impossível Gravar Registro.... Provavel Falha: Registro Duplicado');
  Action := daAbort;
end;

procedure TFormCadastroLivroLMC.TermodeAbertura1Click(Sender: TObject);
Var linha : Integer;
begin
  inherited;
  RDprint.Abrir;
  linha := 6;
  RDprint.ImpC(Linha, 40,'TERMO DE ABERTURA',[Expandido, Italico]); inc(linha,6);
  RDprint.ImpC(Linha, 40,'Este livro de número '+IntToStr(SQLTemplateLILMICOD.Value)+' contém '+inttoStr(SQLTemplateLILMIPAGMAX.asinteger)  +
  ' páginas numeradas de '+ SQLTemplateLILMIPAGINI.asstring +' a '+  SQLTemplateLILMIPAGMAX.asstring+'.',[normal]); inc(linha,6);
  RDprint.ImpF(Linha,  1,'Nome do estabelecimento: ',[normal]); inc(linha);
  RDPrint.ImpF(linha,  5, SQLEmpresaEMPRA60RAZAOSOC.AsString,[normal]); inc(linha,2);
  RDprint.ImpF(Linha,  1,'Endereço do estabelecimento: ',[normal]); inc(linha);
  RDPrint.ImpF(linha,  5, SQLEmpresaEMPRA60END.AsString,[normal]); inc(linha);
  RDprint.ImpF(Linha,  5,'Bairro '+SQLEmpresaEMPRA60BAI.AsString,[normal]); inc(linha);
  RDprint.ImpF(Linha,  5,SQLEmpresaEMPRA2uf.AsString+' - '+SQLEmpresaEMPRA8CEP.AsString,[normal]); inc(linha,2);
  RDprint.ImpF(Linha,  1,'CNPJ '+SQLEmpresaEMPRA14CGC.AsString+'     -     Inscr Estadual '+SQLEmpresaEMPRA20IE.AsString,[normal]);inc(linha,2);
  RDprint.ImpF(Linha,  1,'Inscrição Municipal '+SQLEmpresaEMPRA20IMUNIC.AsString,[normal]); inc(linha,2);
  RDprint.ImpF(Linha,  1,'Distribuidora com a qual opera: ',[normal]); inc(linha);
  RDPrint.ImpF(linha,  5,SQLTemplateLILMA60DISTRIB.AsString,[normal]); inc(linha,2);
  SQLCapacidade.Prepare;
  SQLCapacidade.Open;
  RDprint.ImpF(Linha,  1,'Capacidade Nominal de Armazenamento de '+SQLCapacidadeCAPACIDADE.AsString+' litros',[normal]); inc(linha,4);
  SQLCapacidade.Close;
  RDprint.ImpD(Linha, 78,SQLEmpresaEMPRA60CID.AsString+', '+MesExtenso(SQLTemplate.fieldbyname('LILMDDTABERT').asdatetime),[normal]); inc(linha,6);
  RDprint.impF(Linha,  1,'                 ____________________________________________',[normal]); inc(linha);
  RDprint.ImpF(Linha,  1,'                 Assinatura do Representante Legal da Empresa',[normal]);
  RDprint.Fechar;
end;

function TFormCadastroLivroLMC.MesExtenso(Data : TDateTime) : string;
var
   wDia, wMes, wAno : Word;
Const
     cMeses : Array[1..12] of String = ( 'Janeiro','Fevereiro','Marco',
                                         'Abril','Maio','Junho','Julho',
                                         'Agosto','Setembro','Outubro',
                                         'Novembro','Dezembro' );
begin
     DecodeDate(Data, wAno, wMes, wDia);
     Result := IntToStr(wdia) + ' de ' + cMeses[wMes]+' de '+ IntTostr(wano);
end;



procedure TFormCadastroLivroLMC.ermodeEncerramento1Click(Sender: TObject);
Var linha : Integer;
    fechamento:String;
begin
  inherited;
  fechamento:= InputBox('Fechamento','Data do Fechamento:',DateToStr(date));

  if Application.MessageBox('Confirma o FECHAMENTO do livro?' ,'Pergunta',MB_YESNO) = mryes then
  begin
    SQLTemplate.Edit;
    SQLTemplateLILMDDTFECHA.Value := StrToDate(fechamento);
    SQLTemplate.Post;
    RDprint.Abrir;
    linha := 35;
    RDprint.ImpC(Linha, 40,'TERMO DE FECHAMENTO',[Expandido, Italico]); inc(linha,6);
    RDprint.ImpD(Linha, 78,SQLEmpresaEMPRA60CID.AsString+', '+MesExtenso(SQLTemplate.fieldbyname('LILMDDTFECHA').asdatetime),[normal]); inc(linha,6);
    RDprint.impF(Linha,  1,'                 ____________________________________________',[normal]); inc(linha);
    RDprint.ImpF(Linha,  1,'                 Assinatura do Representante Legal da Empresa',[normal]);
    RDprint.Fechar;
  end;
end;

end.
