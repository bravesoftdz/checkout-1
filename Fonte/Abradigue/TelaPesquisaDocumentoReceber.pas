unit TelaPesquisaDocumentoReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, RxLookup, StdCtrls,
  Buttons, jpeg, ExtCtrls, DBCtrls, VarSys;

type
  TFormTelaPesquisarDocumentoReceber = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    BtnAdicionar: TSpeedButton;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditDocumento: TEdit;
    ComboEmpresa: TRxDBLookupCombo;
    DBGridLista: TDBGrid;
    DSSQLContasReceber: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    DSTblRecebimento: TDataSource;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoDtVencimento: TDateTimeField;
    SQLRecebimentoClienteNome: TStringField;
    SQLRecebimentoParcela: TIntegerField;
    SQLRecebimentoValor: TFloatField;
    SQLRecebimentoValorJuro: TFloatField;
    SQLRecebimentoValorMulta: TFloatField;
    SQLRecebimentoValorDesconto: TFloatField;
    SQLRecebimentoValorTotal: TFloatField;
    SQLRecebimentoBaixar: TBooleanField;
    SQLRecebimentoDocumento: TStringField;
    SQLRecebimentoEmissao: TDateField;
    SQLRecebimentoNroDuplicBanco: TStringField;
    SQLRecebimentoValorOriginal: TFloatField;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditDocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPesquisarDocumentoReceber: TFormTelaPesquisarDocumentoReceber;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaPesquisarDocumentoReceber.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;

end;

procedure TFormTelaPesquisarDocumentoReceber.BtnFecharTelaClick(
  Sender: TObject);
begin
  FormTelaPesquisarDocumentoReceber.ModalResult := MrCancel;
end;

procedure TFormTelaPesquisarDocumentoReceber.BtnAdicionarClick(
  Sender: TObject);
begin
  if not SQLContasReceber.IsEmpty then
    begin
      if not SQLRecebimento.Locate('CTRCA13ID',SQLContasReceberCTRCA13ID.AsString,[]) then
        FormTelaPesquisarDocumentoReceber.ModalResult := MrOk
      else
        begin
          Informa('Documento já selecionado!');
          Abort;
          Exit;
        end;
    end
  else
    begin
      Informa('Nenhum Documento Selecionado!');
      Abort;
      Exit;
    end;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
  ComboEmpresa.Value := IntToStr(EmpresaCorrente);
  try
    SQLRecebimento.Open;
  except
  end;
end;

procedure TFormTelaPesquisarDocumentoReceber.EditDocumentoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.MacroByName('MDocumento').AsString := 'CR.CTRCA30NRODUPLICBANCO = "' + EditDocumento.Text + '"';
      SQLContasReceber.Open;
      if SQLContasReceber.IsEmpty then
        EditDocumento.SetFocus;
    end;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLRecebimento.Close;
end;

procedure TFormTelaPesquisarDocumentoReceber.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnAdicionar.Click;
end;

procedure TFormTelaPesquisarDocumentoReceber.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=char(13) Then
    begin
      Perform(Wm_NextDlgCtl,0,0);
    end;
end;

end.
