unit TelaLancImpCheqEmitido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, RxDBComb,
  DB, DBTables, RxLookup, RxQuery, DBCtrls, Menus, RXCtrls, VarSys;

type
  TFormTelaLancImpCheqEmitdos = class(TForm)
    Panel1: TPanel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditApelido: TEdit;
    EditDataVenc: TDateEdit;
    Label5: TLabel;
    EditFavorecido: TEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    EditObs: TEdit;
    ComboContaCorrente: TRxDBLookupCombo;
    Label4: TLabel;
    EditVlrTotalCheque: TCurrencyEdit;
    Label1: TLabel;
    EditNroCheque: TEdit;
    CheckCruzado: TCheckBox;
    ButtonImprimir: TRxSpeedButton;
    Buttongerar: TSpeedButton;
    ButtonCancel: TSpeedButton;
    DSTblContaCorrente: TDataSource;
    TblContaCorrente: TTable;
    TblContaCorrenteCTCRICOD: TIntegerField;
    TblContaCorrenteBANCA5COD: TStringField;
    TblContaCorrenteCTCRA15AGENCIA: TStringField;
    TblContaCorrenteCTCRA15NUMERO: TStringField;
    TblContaCorrenteCTCRA60TITULAR: TStringField;
    TblContaCorrenteCTCRN2LIMITE: TBCDField;
    TblContaCorrenteBancoNome: TStringField;
    TblBanco: TTable;
    TblBancoBANCA5COD: TStringField;
    TblBancoBANCA60NOME: TStringField;
    SQLChequeEmitido: TQuery;
    SQLChequeEmitidoCQEMA13ID: TStringField;
    SQLChequeEmitidoEMPRICOD: TIntegerField;
    SQLChequeEmitidoCQEMICOD: TIntegerField;
    SQLChequeEmitidoCTCRICOD: TIntegerField;
    SQLChequeEmitidoCQEMDEMIS: TDateTimeField;
    SQLChequeEmitidoCQEMDVENC: TDateTimeField;
    SQLChequeEmitidoCQEMN3VLR: TBCDField;
    SQLChequeEmitidoCQEMA60FAVORECIDO: TStringField;
    SQLChequeEmitidoCQEMINROCHEQUE: TIntegerField;
    SQLChequeEmitidoCQEMCCRUZADO: TStringField;
    SQLChequeEmitidoALINICOD: TIntegerField;
    SQLChequeEmitidoREGISTRO: TDateTimeField;
    SQLChequeEmitidoPENDENTE: TStringField;
    SQLChequeEmitidoCQEMA60HIST: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditApelidoExit(Sender: TObject);
    procedure GeraCheque ;
    procedure SQLChequeEmitidoBeforePost(DataSet: TDataSet);
    procedure ComboContaCorrenteExit(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtongerarClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
  Resposta : array [0..255] of char;

    { 
    procedure ButtongerarClick(Sender: TObject);Public declarations }
  end;

var
  FormTelaLancImpCheqEmitdos: TFormTelaLancImpCheqEmitdos;

implementation

uses TelaBaixarDocumentosPagar, DataModulo, CadastroContaCorrente,
  FormResources, PertoCheque, UnitLibrary;

{$R *.dfm}

procedure TFormTelaLancImpCheqEmitdos.FormCreate(Sender: TObject);
begin
  if not TblBanco.Active then TblBanco.Open;
  if TblContaCorrente.Active then TblContaCorrente.Close;
  EditDataVenc.Date := dm.DataBaseSistema;
end;

procedure TFormTelaLancImpCheqEmitdos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLChequeEmitido.Close;
  Action := CaFree;
end;

procedure TFormTelaLancImpCheqEmitdos.EditApelidoExit(Sender: TObject);
begin
  try
    StrToInt(EditApelido.Text);
  except
    ShowMessage('Número inválido !');
    SetFocus;
  end;
  if EditApelido.Text <> '' then
    begin
      TblContaCorrente.Open;
      if not TblContaCorrente.Locate('CTCRICOD',EditApelido.Text,[]) then
        begin
          if Application.MessageBox('Conta corrente não encontrada, deseja cadastrar agora ?','Informação',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
            begin
              CriaFormulario(TFormCadastroContaCorrente,'FormCadastroContaCorrente',False,False,'');
            end
           else
             begin
               TblContaCorrente.Close;
               Abort;
             end;
        end
      else
        begin
          ComboContaCorrente.Value := EditApelido.Text;
        end;
    end;
end;

procedure TFormTelaLancImpCheqEmitdos.GeraCheque ;
begin
  if not SQLChequeEmitido.Active then SQLChequeEmitido.Open ;
  SQLChequeEmitido.Append;
//  SQLChequeEmitidoALINICOD.Value       :=
  SQLChequeEmitidoCQEMA60FAVORECIDO.AsString   := EditFavorecido.Text;
  SQLChequeEmitidoCQEMA60HIST.AsString         := EditObs.Text;
  SQLChequeEmitidoCQEMDEMIS.AsString           := FormatDateTime('dd/mm/yyyy',dm.DataBaseSistema);
  SQLChequeEmitidoCQEMDVENC.AsDateTime         := EditDataVenc.Date;
  SQLChequeEmitidoCQEMN3VLR.Value              := EditVlrTotalCheque.Value;
  SQLChequeEmitidoEMPRICOD.Value               := EmpresaCorrente;
  SQLChequeEmitidoCQEMINROCHEQUE.AsString      := EditNroCheque.Text;
  SQLChequeEmitido.Post;
end ;
procedure TFormTelaLancImpCheqEmitdos.SQLChequeEmitidoBeforePost(
  DataSet: TDataSet);
begin
  DM.CodigoAutomatico('CHEQUEEMITIDO',NIL,DataSet,2,0);
end;

procedure TFormTelaLancImpCheqEmitdos.ComboContaCorrenteExit(
  Sender: TObject);
begin
  EditApelido.Text := ComboContaCorrente.Value;
end;

procedure TFormTelaLancImpCheqEmitdos.ButtonCancelClick(Sender: TObject);
begin
  FormTelaLancImpCheqEmitdos.ModalResult := MrCancel;
end;

procedure TFormTelaLancImpCheqEmitdos.ButtongerarClick(Sender: TObject);
begin
  GeraCheque;
end;

procedure TFormTelaLancImpCheqEmitdos.ButtonImprimirClick(Sender: TObject);
var
  DadosCheque : TInfoCheque;
begin
  inherited;
  DadosCheque.Data       := FormatDateTime('dd/mm/yy',dm.DataBaseSistema);
  DadosCheque.Cidade     := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao);
  DadosCheque.Favorecido := EditFavorecido.Text;
  DadosCheque.Cruzado    := CheckCruzado.Checked;
  DadosCheque.Valor      := EditVlrTotalCheque.Text;
  DadosCheque.BomPara    := EditDataVenc.Text;
  PreencheCheque('LPT1',10,Resposta,DadosCheque);
end;
end.
