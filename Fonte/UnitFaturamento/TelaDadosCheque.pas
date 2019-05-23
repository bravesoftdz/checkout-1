unit TelaDadosCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  Buttons, DB, DBTables, MemTable, RxQuery, dblookup, DBCtrls;

type
  TFormTelaDadosCheque = class(TForm)
    Shape4: TShape;
    Label8: TLabel;
    ComboPortador: TRxDBLookupCombo;
    ComboBanco: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Agencia: TEdit;
    Label3: TLabel;
    NumConta: TEdit;
    Label4: TLabel;
    DtAbert: TDateEdit;
    Label5: TLabel;
    NomeTitular: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    ListaCheques: TDBGrid;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLBanco: TRxQuery;
    DSSQLBanco: TDataSource;
    Label9: TLabel;
    CGCPFChq: TEdit;
    Label10: TLabel;
    ComboStatus: TRxDBLookupCombo;
    SQLAlinea: TRxQuery;
    DSSQLAlinea: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListaChequesEnter(Sender: TObject);
    procedure ListaChequesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaChequesExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCheque: TFormTelaDadosCheque;

implementation

uses DataModulo, UnitLibrary, CadastroNotaFiscal;

{$R *.dfm}

procedure TFormTelaDadosCheque.BitBtn2Click(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaDadosCheque.BtnOkClick(Sender: TObject);
var
  MotBloq : string ;
begin
  if ComboPortador.Text = '' then
    begin
      Informa('O Portador deve ser informado') ;
      ComboPortador.Setfocus ;
      exit ;
    end ;

  if ComboStatus.Text = '' then
    begin
      Informa('O Status deve ser informado') ;
      ComboStatus.Setfocus ;
      exit ;
    end ;

  if ComboBanco.Text = '' then
    begin
      Informa('O Banco deve ser informado') ;
      ComboBanco.Setfocus ;
      exit ;
    end ;

  if Agencia.Text = '' then
    begin
      Informa('A agência deve ser informada') ;
      Agencia.Setfocus ;
      exit ;
    end ;

  if NumConta.Text = '' then
    begin
      Informa('O Número da conta deve ser informado') ;
      NumConta.Setfocus ;
      exit ;
    end ;

  if NomeTitular.Text = '' then
    begin
      Informa('O Nome do Titular deve ser informado') ;
      NomeTitular.Setfocus ;
      exit ;
    end ;

  if CGCPFChq.Text <> '' then
    begin
      MotBloq := SQLLocate('CLIENTE', 'CLIEA11CPF', 'MTBLICOD', '"' + CGCPFChq.Text + '"') ;
      if MotBloq = '' then
        MotBloq := SQLLocate('CLIENTE', 'CLIEA14CGC', 'MTBLICOD', '"' + CGCPFChq.Text + '"') ;

      if MotBloq <> '' then
        if SQLLocate('MOTIVOBLOQUEIO', 'MTBLICOD', 'MTBLA60DESCR', MotBloq) <> '' then
          Informa('Este Cliente está bloqueado por ' + SQLLocate('MOTIVOBLOQUEIO', 'MTBLICOD', 'MTBLA60DESCR', MotBloq)) ;
    end ;

  DM.TblCheques.First ;
  while not DM.TblCheques.EOF do
    begin
      DM.TblCheques.Edit ;
      if ComboPortador.Text <> '' then
        DM.TblChequesPORTICOD.AsString := ComboPortador.KeyValue ;
      if ComboBanco.Text <> '' then
        DM.TblChequesBANCA5COD.AsString := ComboBanco.KeyValue ;
      DM.TblChequesAGENCIA.Value   := Agencia.Text ;
      DM.TblChequesCONTA.Value     := NumConta.Text ;
      DM.TblChequesDATAABERT.Value := DtAbert.Date ;
      DM.TblChequesTITULAR.Value   := NomeTitular.Text ;
      DM.TblChequesCGCCPF.Value    := CGCPFChq.Text ;
      DM.TblChequesALINICOD.AsString := ComboStatus.KeyValue ;
      DM.TblCheques.Post ;

      DM.TblCheques.Next ;
    end ;
  Close ;
end;

procedure TFormTelaDadosCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaDadosCheque.FormCreate(Sender: TObject);
begin
  SQLPortador.Open ;
  SQLBanco.Open ;
  SQLAlinea.Open ;
end;

procedure TFormTelaDadosCheque.ListaChequesEnter(Sender: TObject);
begin
  FormTelaDadosCheque.KeyPreview := false ;
  ListaCheques.SelectedIndex := 1 ;
end;

procedure TFormTelaDadosCheque.ListaChequesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

var
  NumChq  : double ;
  BookMrk : TBookMark ;
begin
  if Key = VK_Return then
  begin
    if DM.TblCheques.EOF then
    begin
      BtnOk.SetFocus ;
      exit ;
    end ;
    //ROTINA PARA INCREMENTAR AUTOMATICAMENTE O NRO DOS CHEQUES
    if DM.TblCheques.State in  dsEditModes then
      DM.TblCheques.Post ;

    BookMrk := DM.TblCheques.GetBookmark ;
    NumChq  := DM.TblChequesNroCheque.Value ;
    DM.TblCheques.Next ;
    while not DM.TblCheques.EOF do
    begin
      NumChq := NumChq + 1 ;
      DM.TblCheques.Edit ;
      DM.TblChequesNroCheque.Value := NumChq ;
      DM.TblCheques.Post ;

      DM.TblCheques.Next ;
    end ;

    DM.TblCheques.GotoBookmark(BookMrk) ;

    DM.TblCheques.Next ;
    ListaCheques.SelectedIndex := 1 ;
  end ;
end;

procedure TFormTelaDadosCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return : Perform(WM_NextDlgCtl,0,0) ;
  end ;
end;

procedure TFormTelaDadosCheque.ListaChequesExit(Sender: TObject);
begin
  FormTelaDadosCheque.KeyPreview := true ;
end;

procedure TFormTelaDadosCheque.FormActivate(Sender: TObject);
begin
  DM.SQLClienteDadChq.Close ;
  DM.SQLClienteDadChq.MacroByName('MFiltro').Value := 'CLIEA13ID = "' + ClienteVenda + '"';
  DM.SQLClienteDadChq.Open ;
  if DM.SQLClienteDadChqBANCA5COD.Value <> '' then
    ComboBanco.KeyValue := DM.SQLClienteDadChqBANCA5COD.Value ;
  if DM.SQLClienteDadChqCLIEA5AGENCIA.Value <> '' then
    Agencia.Text := DM.SQLClienteDadChqCLIEA5AGENCIA.Value ;
  if DM.SQLClienteDadChqCLIEA10CONTA.Value <> '' then
    NumConta.Text := DM.SQLClienteDadChqCLIEA10CONTA.Value ;
  if DM.SQLClienteDadChqCLIEA60TITULAR.Value <> '' then
    NomeTitular.Text := DM.SQLClienteDadChqCLIEA60TITULAR.Value ;
  if DM.SQLClienteDadChqCLIEDABERTCONTA.Value > 0 then
    DtAbert.Date := DM.SQLClienteDadChqCLIEDABERTCONTA.Value ;
end;

procedure TFormTelaDadosCheque.ComboBancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) and (SQLBanco.FieldByName('BANCA5COD').AsVariant <> Null) then
    ComboBanco.KeyValue := SQLBanco.FieldByName('BANCA5COD').Value;
end;

procedure TFormTelaDadosCheque.ComboStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) and (SQLAlinea.FieldByName('ALINICOD').AsVariant <> Null) then
    ComboBanco.KeyValue := SQLAlinea.FieldByName('ALINICOD').Value;
end;

procedure TFormTelaDadosCheque.ComboPortadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) and (SQLPortador.FieldByName('PORTICOD').AsVariant <> Null) then
    ComboBanco.KeyValue := SQLPortador.FieldByName('PORTICOD').Value;
end;

end.
