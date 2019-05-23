unit TelaBaixarDocumentosReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FormResources, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Grids,
  DBGrids, Mask, ToolEdit, Db, DBTables, RxQuery, MemTable, RxLookup;

type
  TFormTelaBaixarDocumentosReceber = class(TFormTelaGeralTEMPLATE)
    BtnSelecionarDoc: TSpeedButton;
    PanelFundoBxDocREc: TPanel;
    PanelTopBxDocREc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGridLista: TDBGrid;
    Label3: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label4: TLabel;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPODARAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLRecebimentoTemp: TRxQuery;
    SQLRecebimentoTempUSUAICOD: TIntegerField;
    SQLRecebimentoTempCTRCA13ID: TStringField;
    SQLRecebimentoTempCTRCINROPARC: TIntegerField;
    SQLRecebimentoTempCLIEA13ID: TStringField;
    SQLRecebimentoTempRCTMN2VLRRECTO: TBCDField;
    SQLRecebimentoTempRCTMN2VLRJURO: TBCDField;
    SQLRecebimentoTempRCTMN2VLRMULTA: TBCDField;
    SQLRecebimentoTempRCTMN2DESC: TBCDField;
    SQLRecebimentoTempCLIEA60NOME: TStringField;
    DSSQLRecebimentoTemp: TDataSource;
    Label5: TLabel;
    DtBaixa: TDateEdit;
    SQLRecebimentoTempRCTMN2VLRVENC: TFloatField;
    SQLRecebimentoTempRCTMDVENC: TDateTimeField;
    UpdateSQLRecebimentoTemp: TUpdateSQL;
    ComboEmpresa: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    SQLContasReceberClienteCalcField: TStringField;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure SQLContasReceberCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaBaixarDocumentosReceber: TFormTelaBaixarDocumentosReceber;

implementation

uses CadastroEmpresa, CadastroCliente, DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormTelaBaixarDocumentosReceber.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open ;
  SQLCliente.Open ;

  ComboEmpresa.KeyValue := StrToInt(EmpresaPadrao);
  Data1.Date := Date ;
  Data2.Date := Date ;
end;

procedure TFormTelaBaixarDocumentosReceber.BtnSelecionarDocClick(
  Sender: TObject);
begin
  inherited;
  SQLRecebimentoTemp.Close ;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Add('delete from RECEBIMENTOTEMP') ;
  DM.SQLTemplate.SQL.Add('where USUAICOD = ' + IntToStr(DM.UsuarioAtual)) ;

  SQLRecebimentoTemp.MacroByName('MUsuario').Value := 'USUAICOD = ' + IntToStr(DM.UsuarioAtual) ;
  SQLRecebimentoTemp.Open ;
  
  SQLContasReceber.Close ;
  if ComboEmpresa.Text <> '' then
    SQLContasReceber.MacroByName('MEmpresa').Value := '(EMPRICOD = ' + ComboEmpresa.Value + ')' ;

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacroByName('MCliente').Value := 'CLIEA13ID = "' + ComboCliente.Value + '"' ;

  SQLContasReceber.MacroByName('MData').Value := '(CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', Data1.Date) + '") and ' +
                                                 '(CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Data2.Date) + '")' ;
  SQLContasReceber.Open ;
  SQLContasReceber.First ;
  while not SQLContasReceber.EOF do
  begin
    SQLRecebimentoTemp.Append ;
    SQLRecebimentoTempUSUAICOD.Value       := DM.UsuarioAtual ;
    SQLRecebimentoTempCTRCA13ID.Value      := SQLContasReceberCTRCA13ID.Value ;
    SQLRecebimentoTempCTRCINROPARC.Value   := SQLContasReceberCTRCINROPARC.Value ;
    SQLRecebimentoTempCLIEA13ID.Value      := SQLContasReceberCLIEA13ID.Value ;
    SQLRecebimentoTempRCTMDVENC.Value      := SQLContasReceberCTRCDVENC.Value ;
    SQLRecebimentoTempRCTMN2VLRVENC.Value  := SQLContasReceberCTRCN2VLR.Value ;
    SQLRecebimentoTempRCTMN2VLRRECTO.Value := SQLContasReceberCTRCN2VLR.Value ;
    SQLRecebimentoTempRCTMN2VLRJURO.Value  := 0 ;
    SQLRecebimentoTempRCTMN2VLRMULTA.Value := 0 ;
    SQLRecebimentoTempRCTMN2DESC.Value     := 0 ;
    SQLRecebimentoTempCLIEA60NOME.Value    := SQLContasReceberClienteCalcField.Value ;
    SQLRecebimentoTemp.Post ;

    SQLContasReceber.Next ;
  end ;

  SQLRecebimentoTemp.Close ;
  SQLRecebimentoTemp.Open ;


end;

procedure TFormTelaBaixarDocumentosReceber.SQLContasReceberCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //DM.MontarCampoLookup(SQLContasReceber, 'CLIEA13ID', 'ClienteCalcField', 'CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC');
end;

end.
