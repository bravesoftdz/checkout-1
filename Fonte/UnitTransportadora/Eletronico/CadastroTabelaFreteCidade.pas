unit CadastroTabelaFreteCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, VarSys;

type
  TFormCadastroTabelaFreteCidade = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    gboColeta: TGroupBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    gboEntrega: TGroupBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    SQLCidade: TRxQuery;
    SQLEstado: TRxQuery;
    dsSQLCidade: TDataSource;
    dsSQLEstado: TDataSource;
    cblCidade: TRxDBLookupCombo;
    cblEstado: TRxDBLookupCombo;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    chkEntrega: TDBCheckBox;
    chkColeta: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    AcessaEstado: TSpeedButton;
    AcessaCidade: TSpeedButton;
    SQLTemplateCIDAICOD: TIntegerField;
    SQLTemplateCIDAA60NOME: TStringField;
    SQLTemplateTBFCCCOLETA: TStringField;
    SQLTemplateTBFCN2COLETAVLR: TBCDField;
    SQLTemplateTBFCN2COLETAEXCVLR: TBCDField;
    SQLTemplateTBFCN2COLETAPESOMX: TBCDField;
    SQLTemplateTBFCCENTREGA: TStringField;
    SQLTemplateTBFCN2ENTREGAVLR: TBCDField;
    SQLTemplateTBFCN2ENTREGAEXCVLR: TBCDField;
    SQLTemplateTBFCN2ENTREGAPESOMX: TBCDField;
    SQLTemplateTBFCN2TARIFAMINIMA: TBCDField;
    SQLTemplateTBFCCCALCULOPESO: TStringField;
    SQLTemplateTBFCN2VALORPESOEXEC: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateTBFTICOD: TIntegerField;
    SQLTemplateTBFCICOD: TIntegerField;
    SQLCidadeCIDAICOD: TIntegerField;
    SQLCidadeCIDAA60NOME: TStringField;
    SQLCidadeICMUA2UF: TStringField;
    SQLEstadoICMUA2UF: TStringField;
    SQLEstadoICMUN2ALIQUOTA: TBCDField;
    SQLEstadoICMSN2PERCSUBSTSAI: TBCDField;
    SQLEstadoICMUA30NOMEESTADO: TStringField;
    SQLTemplateICMUA2UF: TStringField;
    SQLTemplateICMUA30NOMEESTADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure AcessaEstadoClick(Sender: TObject);
    procedure AcessaCidadeClick(Sender: TObject);
    procedure chkColetaClick(Sender: TObject);
    procedure chkEntregaClick(Sender: TObject);
    procedure cblCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cblEstadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cblCidadeChange(Sender: TObject);
    procedure cblEstadoChange(Sender: TObject);
    procedure SQLTemplateCIDAICODChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaFreteCidade: TFormCadastroTabelaFreteCidade;

implementation

uses CadastroCidade, CadastroEstado, FormResources,
  CadastroTabelaFreteFaixaPeso;

{$R *.dfm}

procedure TFormCadastroTabelaFreteCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TabelaFreteCidade';

end;

procedure TFormCadastroTabelaFreteCidade.AcessaEstadoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateICMUA2UF;
  FieldOrigem := 'ICMUA2UF' ;
  DataSetLookup := SQLEstado;
  CriaFormulario(TFormCadastroEstado,'FormCadastroEstado',False,True,True,'') ;
end;

procedure TFormCadastroTabelaFreteCidade.AcessaCidadeClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplateCIDAICOD;
  FieldOrigem := 'CIDAICOD' ;
  SQLCidade.Close;
  SQLCidade.MacroByName('MFiltro').AsString := '0=0';
  SQLCidade.Open;
  DataSetLookup := SQLCidade;
  CriaFormulario(TFormCadastroCidade,'FormCadastroCidade',False,True,True,'') ;
end;

procedure TFormCadastroTabelaFreteCidade.chkColetaClick(Sender: TObject);
begin
  inherited;
  gboColeta.Visible := chkColeta.Checked;
end;

procedure TFormCadastroTabelaFreteCidade.chkEntregaClick(Sender: TObject);
begin
  inherited;
  gboEntrega.Visible := chkEntrega.Checked;
end;

procedure TFormCadastroTabelaFreteCidade.cblCidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaCidade.Click;
end;

procedure TFormCadastroTabelaFreteCidade.cblEstadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaEstado.Click;
end;

procedure TFormCadastroTabelaFreteCidade.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroTabelaFreteFaixaPeso,'FormCadastroTabelaFreteFaixaPeso',True,False,True,SQLTemplateCIDAA60NOME.AsString);
end;

procedure TFormCadastroTabelaFreteCidade.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTBFTICOD.AsInteger           := DSMasterTemplate.DataSet.FieldByName('TBFTICOD').AsInteger;
  SQLTemplateTBFCCCOLETA.AsString         := 'N';
  SQLTemplateTBFCN2COLETAVLR.AsFloat      := 0;
  SQLTemplateTBFCN2COLETAEXCVLR.AsFloat   := 0;
  SQLTemplateTBFCN2COLETAPESOMX.AsFloat   := 0;
  SQLTemplateTBFCCENTREGA.AsString        := 'N';
  SQLTemplateTBFCN2ENTREGAVLR.AsFloat     := 0;
  SQLTemplateTBFCN2ENTREGAEXCVLR.AsFloat  := 0;
  SQLTemplateTBFCN2ENTREGAPESOMX.AsFloat  := 0;
  SQLTemplateTBFCN2TARIFAMINIMA.AsFloat   := 0;
  SQLTemplateTBFCN2VALORPESOEXEC.AsFloat  := 0;
  SQLTemplateTBFCCCALCULOPESO.AsString    := 'S';

end;

procedure TFormCadastroTabelaFreteCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSMasterSys := Nil;
  DataSetLookup := Nil;
  FieldLookup   := Nil;
end;

procedure TFormCadastroTabelaFreteCidade.cblCidadeChange(Sender: TObject);
begin
  inherited;
  cblEstado.KeyValue := SQLCidade.FieldByName('ICMUA2UF').AsString;
end;

procedure TFormCadastroTabelaFreteCidade.cblEstadoChange(Sender: TObject);
begin
  inherited;
  if cblEstado.KeyValue <> Null then
     begin
        SQLCidade.Close;
        SQLCidade.MacroByName('MFiltro').AsString := 'ICMUA2UF = "' + cblEstado.KeyValue + '"';
        SQLCidade.Open;
     end
  else
     begin
        SQLCidade.Close;
        SQLCidade.MacroByName('MFiltro').AsString := '0=0';
        SQLCidade.Open;
     end
end;

procedure TFormCadastroTabelaFreteCidade.SQLTemplateCIDAICODChange(
  Sender: TField);
begin
  inherited;
  cblEstado.KeyValue := SQLCidade.FieldByName('ICMUA2UF').AsString;
end;

end.
