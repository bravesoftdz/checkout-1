unit CadastroContasReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit,
  VarSYS, FormResources, RXDBCtrl, DBActns, ActnList, ImgList,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, EDBNum;

type
  TFormCadastroContasReceber = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TBCDField;
    SQLTemplateCTRCN2DESCFIN: TBCDField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TBCDField;
    SQLTemplateCTRCN2TXMULTA: TBCDField;
    SQLTemplateCTRCA5TIPODARAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TBCDField;
    SQLTemplateCTRCN2TOTJUROREC: TBCDField;
    SQLTemplateCTRCN2TOTMULTAREC: TBCDField;
    SQLTemplateCTRCN2TOTDESCREC: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateEmpresaUltRecCalcField: TStringField;
    SQLTemplateTerminalCalcField: TStringField;
    SQLTemplateClienteCalcField: TStringField;
    SQLTemplateNumerarioCalcField: TStringField;
    SQLTemplatePortadorCalcField: TStringField;
    SQLTemplateTipoDocumentoCalcField: TStringField;
    SQLTemplatePlanodeContasCalcField: TStringField;
    SQLTemplateEmpresaDestCalcField: TStringField;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    RetornaTipoDoc: TSpeedButton;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    RetornaPortador: TSpeedButton;
    DBEdit12: TDBEdit;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RetornaEmpresa: TSpeedButton;
    RetornaCliente: TSpeedButton;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBDateEdit;
    DBEdit33: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SQLRecebimento: TQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    DSSQLRecebimento: TDataSource;
    SQLRecebimentoSaldoCalcField: TBCDField;
    SQLRecebimentoEmpresaUltRecCalcField: TStringField;
    ActionMainMenuBar1: TActionMainMenuBar;
    EvDBNumEdit1: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure RetornaClienteClick(Sender: TObject);
    procedure RetornaTipoDocClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure SQLRecebimentoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContasReceber: TFormCadastroContasReceber;

implementation

uses CadastroEmpresa, CadastroCliente, DataModulo, CadastroTipoDocumento,
  CadastroPlanodeContas, CadastroPortador;

{$R *.DFM}

procedure TFormCadastroContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONTASRECEBER' ;
  SQLRecebimento.Open ;
end;

procedure TFormCadastroContasReceber.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  {DM.MontarCampoLookup(SqlTemplate, 'EMPRICOD', 'EmpresaDestCalcField', 'EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC');
  DM.MontarCampoLookup(SqlTemplate, 'CLIEA13ID', 'ClienteCalcField', 'CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC');
  DM.MontarCampoLookup(SqlTemplate, 'TERMICOD', 'TerminalCalcField', 'TERMINAL', 'TERMICOD', 'TERMA60DESCR');
  DM.MontarCampoLookup(SqlTemplate, 'NUMEICOD', 'NumerarioCalcField', 'NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR');
  DM.MontarCampoLookup(SqlTemplate, 'PORTICOD', 'PortadorCalcField', 'PORTADOR', 'PORTICOD', 'PORTA60DESCR');
  DM.MontarCampoLookup(SqlTemplate, 'TPDCICOD', 'TipoDocumentoCalcField', 'TIPODOCUMENTO', 'TPDCICOD', 'TPDCA60DESCR');
  DM.MontarCampoLookup(SqlTemplate, 'PLCTA15COD', 'TipoDocumentoCalcField', 'PLANODECONTAS', 'PLCTA15COD', 'PLCTA60DESCR');}
end;

procedure TFormCadastroContasReceber.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICOD');
  CriaFormulario(TFormCadastroEmpresa, 'FormCadastroEmpresa', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaTipoDocClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  CriaFormulario(TFormCadastroPlanodeContas, 'FormCadastroPlanodeContas', False, True, '');
end;

procedure TFormCadastroContasReceber.SQLRecebimentoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //DM.MontarCampoLookup(SQLRecebimento, 'EMPRICODREC', 'EmpresaDestCalcField', 'EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC');
end;

end.
