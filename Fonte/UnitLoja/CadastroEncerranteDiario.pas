unit CadastroEncerranteDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, ToolEdit, RXDBCtrl, DBCtrls, DB,
  DBTables, DBActns, ActnList, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEncerranteDiario = class(TFormCadastroTEMPLATE)
    SQLTemplateENCEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateENCEICOD: TIntegerField;
    SQLTemplateDATA: TDateTimeField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateBOMBICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateINICIO: TBCDField;
    SQLTemplateFINAL: TBCDField;
    SQLTemplateAFERICAO: TBCDField;
    SQLTemplateQTDEVENDA: TBCDField;
    SQLTemplateVLRTOTVENDAS: TBCDField;
    SQLTemplateCONCLUIDO: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label69: TLabel;
    ComboUsuario: TRxDBLookupCombo;
    SQLUsuario: TRxQuery;
    DSSQLUsuario: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel9: TPanel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit12: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    SQLBomba: TRxQuery;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLBombaEMPRICOD: TIntegerField;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaTANQICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    SQLBombaBOMBN2CONT: TBCDField;
    SQLBombaBOMBN3VLRVISTA: TBCDField;
    SQLBombaPENDENTE: TStringField;
    SQLBombaREGISTRO: TDateTimeField;
    SQLBombaCONVERTER: TStringField;
    SQLBombaPOINT: TIntegerField;
    SQLBombaSTATUS: TStringField;
    SQLBombaBOMBN3ENCERRANTE: TBCDField;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    ComboBomba: TRxDBLookupCombo;
    Label9: TLabel;
    ComboConcluido: TRxDBComboBox;
    SQLTemplateProdutoLookup: TStringField;
    DBEdit8: TDBEdit;
    SQLTemplateBombaLookup: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBOMBICODChange(Sender: TField);
    procedure SQLTemplateFINALChange(Sender: TField);
    procedure SQLTemplateAFERICAOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEncerranteDiario: TFormCadastroEncerranteDiario;

implementation

uses UnitLibrary;
{$R *.dfm}

procedure TFormCadastroEncerranteDiario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ENCERRANTEDIARIO';
  SQLUsuario.Open;
  SQLBomba.Open;
  SQLProduto.Open;
end;

procedure TFormCadastroEncerranteDiario.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateDATA.AsString      := FormatDateTime('dd/mm/yyyy',Now);
  SQLTemplateCONCLUIDO.AsString := 'N';
  SQLTemplateAFERICAO.Value     := 0 ;
  SQLTemplateFINAL.Value        := 0 ; 
end;

procedure TFormCadastroEncerranteDiario.SQLTemplateBOMBICODChange(
  Sender: TField);
begin
  inherited;
  SQLTemplatePRODICOD.AsString := SQLLocate('TANQUE', 'TANQICOD', 'PRODICOD', SQLTemplateBOMBICOD.AsString);
  SQLTemplateINICIO.AsString   := SQLLocate('BOMBA', 'BOMBICOD', 'BOMBN3ENCERRANTE', SQLTemplateBOMBICOD.AsString);
end;

procedure TFormCadastroEncerranteDiario.SQLTemplateFINALChange(
  Sender: TField);
begin
  inherited;
  IF SQLTemplateFINAL.Value > 0 THEN
  SQLTemplateQTDEVENDA.Value := SQLTemplateFINAL.Value - SQLTemplateAFERICAO.Value ;
end;

procedure TFormCadastroEncerranteDiario.SQLTemplateAFERICAOChange(
  Sender: TField);
begin
  inherited;
  IF SQLTemplateAFERICAO.Value > 0 THEN
    SQLTemplateQTDEVENDA.Value := SQLTemplateFINAL.Value - SQLTemplateAFERICAO.Value ;
end;

end.
