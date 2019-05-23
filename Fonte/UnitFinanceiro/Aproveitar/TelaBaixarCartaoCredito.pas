unit TelaBaixarCartaoCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  Grids, DBGrids, Mask, ToolEdit, CurrEdit, RxLookup, ComCtrls, DB,
  DBTables, RxQuery, RXCtrls;

type
  TFormTelaBaixarCartaoCredito = class(TFormTelaGeralTEMPLATE)
    PagePrincipal: TPageControl;
    PaginaContas: TTabSheet;
    PanelFundoBxDocREc: TPanel;
    PanelTopBxDocREc: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    ComboCartao: TRxDBLookupCombo;
    ValorTotal: TCurrencyEdit;
    DBGridLista: TDBGrid;
    PaginaBancoTesouraria: TTabSheet;
    NroResumo: TEdit;
    BtnSelecionarDoc: TSpeedButton;
    BtnBaixarDoc: TSpeedButton;
    Mensagem: TLabel;
    Label7: TLabel;
    RetornaCC: TSpeedButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RetornaOperBanc: TSpeedButton;
    Label14: TLabel;
    BtnEmpresa: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    SQLCartaoCredito: TRxQuery;
    SQLCartaoCreditoNUMEICOD: TIntegerField;
    SQLCartaoCreditoNUMEA30DESCR: TStringField;
    DSSQLCartaoCredito: TDataSource;
    DSSQLParcelasCartao: TDataSource;
    SQLParcelasCartao: TRxQuery;
    SQLParcelasCartaoCTRCA13ID: TStringField;
    SQLParcelasCartaoEMPRICOD: TIntegerField;
    SQLParcelasCartaoCLIEA13ID: TStringField;
    SQLParcelasCartaoClienteCalcField: TStringField;
    SQLParcelasCartaoCTRCDVENC: TDateTimeField;
    SQLParcelasCartaoCTRCN2VLR: TBCDField;
    SQLParcelasCartaoCTRCDEMIS: TDateTimeField;
    SQLParcelasCartaoCTRCA15NUMRESCART: TStringField;
    SQLParcelasCartaoCUPOA13ID: TStringField;
    SQLParcelasCartaoCTRCDULTREC: TDateTimeField;
    SQLParcelasCartaoCTRCN2TOTREC: TBCDField;
    Label5: TLabel;
    DtBaixa: TDateEdit;
    Panel4: TPanel;
    Button1: TRxSpeedButton;
    ApenasBaixar: TRxSpeedButton;
    DSSQLBanco: TDataSource;
    SQLBanco: TRxQuery;
    SQLBancoMVBCA13ID: TStringField;
    SQLBancoEMPRICOD: TIntegerField;
    SQLBancoMVBCICOD: TIntegerField;
    SQLBancoMVBCDLANC: TDateTimeField;
    SQLBancoBANCA5COD: TStringField;
    SQLBancoCTCRICOD: TIntegerField;
    SQLBancoMVBCA6NROCHQ: TStringField;
    SQLBancoMVBCN2VLRDEB: TBCDField;
    SQLBancoMVBCN2VLRCRED: TBCDField;
    SQLBancoMVBCDCHQBOMPARA: TDateTimeField;
    SQLBancoMVBCDCHQBAIXA: TDateTimeField;
    SQLBancoMVBCA254HIST: TStringField;
    SQLBancoMVBCA60FAVORECIDO: TStringField;
    SQLBancoOPBCICOD: TIntegerField;
    SQLBancoMVBCCALTSALD: TStringField;
    SQLBancoPENDENTE: TStringField;
    SQLBancoREGISTRO: TDateTimeField;
    SQLBancoEmpresaCalcField: TStringField;
    SQLBancoBancoCalcField: TStringField;
    SQLBancoTitularCalcField: TStringField;
    SQLBancoOperacaoBancoCalcField: TStringField;
    SQLBancoCOntaCorreneCalcField: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure ApenasBaixarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure SQLBancoCalcFields(DataSet: TDataSet);
    procedure SQLBancoBeforePost(DataSet: TDataSet);
    procedure SQLBancoNewRecord(DataSet: TDataSet);
    procedure SQLBancoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    procedure BaixarParcelas ;
  public
    { Public declarations }
  end;

var
  FormTelaBaixarCartaoCredito: TFormTelaBaixarCartaoCredito;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixarCartaoCredito.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCartaoCredito.Open ;
end;

procedure TFormTelaBaixarCartaoCredito.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited ;
  ValorTotal.Value := 0 ;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select sum(CTRCN2VLR) Total from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where NUMEICOD = ' + ComboCartao.Value) ;
  DM.SQLTemplate.SQL.Add('and CTRCA15NUMRESCART = "' + NroResumo.Text + '"') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('Total').Value > 0 then
    ValorTotal.Value := DM.SQLTemplate.FieldByName('Total').AsFloat ;

  SQLParcelasCartao.Close ;
  SQLParcelasCartao.MacroByName('MFiltro').Value := 'NUMEICOD = ' + ComboCartao.Value +
                                                    ' and CTRCA15NUMRESCART = "' + NroResumo.Text + '"' ;
  SQLParcelasCartao.Open ;
end;

procedure TFormTelaBaixarCartaoCredito.BaixarParcelas ;
begin
  inherited ;
  SQLParcelasCartao.DisableControls ;
  SQLParcelasCartao.First ;
  while not SQLParcelasCartao.Eof do
    begin
      SQLParcelasCartao.Edit ;
      SQLParcelasCartaoCTRCDULTREC.Value  := DtBaixa.Date ;
      SQLParcelasCartaoCTRCN2TOTREC.Value := SQLParcelasCartaoCTRCN2VLR.Value ;
      SQLParcelasCartao.Post ;

      SQLParcelasCartao.Next ;
    end ;
  SQLParcelasCartao.First ;
  SQLParcelasCartao.EnableControls ;
end ;

procedure TFormTelaBaixarCartaoCredito.ApenasBaixarClick(Sender: TObject);
begin
  inherited;
  BaixarParcelas ;
end;

procedure TFormTelaBaixarCartaoCredito.BitBtn1Click(Sender: TObject);
begin
  inherited;
  BaixarParcelas ;
end;

procedure TFormTelaBaixarCartaoCredito.BtnBaixarDocClick(Sender: TObject);
begin
  inherited;
  if ValorTotal.Value = 0 then
    begin
      Informa('Não há parcelas a serem baixadas') ;
      exit ;
    end ;
  PagePrincipal.ActivePage := PaginaBancoTesouraria ;
  SQLBanco.Open ;
  SQLBanco.Append ;
end;

procedure TFormTelaBaixarCartaoCredito.SQLBancoCalcFields(DataSet: TDataSet);
var Saldo : string ;
begin
  inherited;
  SQLBancoBancoCalcField.AsString         := SQLLocate('BANCO', 'BANCA5COD', 'BANCA60NOME',     '"' + SQLBancoBANCA5COD.AsString + '"') ;
  SQLBancoEmpresaCalcField.AsString       := SQLLocate('EMPRESA', 'EMPRICOD',   'EMPRA60RAZAOSOC', SQLBancoEMPRICOD.AsString) ;
  SQLBancoTitularCalcField.AsString       := SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA60TITULAR',  SQLBancoCTCRICOD.AsString) ;
  SQLBancoOperacaoBancoCalcField.AsString := SQLLocate('OPERACAOBANCO', 'OPBCICOD',  'OPBCA60DESCR',    SQLBancoOPBCICOD.AsString) ;
  Saldo := SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRN2SALDOATUAL',  SQLBancoCTCRICOD.AsString) ;
  if Saldo = '' then
    Saldo := '0' ;
  SQLBancoContaCorreneCalcField.AsString  := 'Agência: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15AGENCIA',  SQLBancoCTCRICOD.AsString) +
                                                '   C.C.: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15NUMERO',  SQLBancoCTCRICOD.AsString) +
                                                '   Saldo Atual: ' + FormatFloat('#,##0.00', StrToFloat(Saldo)) ;
end;

procedure TFormTelaBaixarCartaoCredito.SQLBancoBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  Case DataSet.State Of
    DsInsert: begin
                if (DataSet.Tag in [1,2,3]) Then
                  DM.CodigoAutomatico('MOVIMENTOBANCO', DSSQLBanco, DataSet, 2, 0);
              End;
  end;
end;

procedure TFormTelaBaixarCartaoCredito.SQLBancoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('EMPRICOD').AsString := EmpresaPadrao ;
end;

procedure TFormTelaBaixarCartaoCredito.SQLBancoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited ;
  Case DataSet.State Of
    DsInsert:
      Begin
        case DataSet.Tag Of
           1, 2 : DM.CodigoAutomatico('MOVIMENTOBANCO', DSSQLBanco, DataSet, 2, 0) ;
        end;
        Action:=DaRetry;
      End;
  end ;
end;

end.
