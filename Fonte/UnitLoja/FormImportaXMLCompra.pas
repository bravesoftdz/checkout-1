unit FormImportaXMLCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, VarSys,
  ToolEdit, DB, DBTables, RxQuery, RXCtrls, FileCtrl, Grids, DBGrids, Menus,
  ComCtrls, RxLookup, xmldom, XMLIntf, msxmldom, XMLDoc,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormImportaXMLCompras = class(TFormTelaGeralTEMPLATE)
    GroupBox2: TGroupBox;
    BtExecutar: TSpeedButton;
    ListaArquivos: TRxCheckListBox;
    BtnTodos: TSpeedButton;
    BtnNenhum: TSpeedButton;
    Button1: TButton;
    ListaLOG: TFileListBox;
    DSSQLPlanoContas: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    Label9: TLabel;
    Label1: TLabel;
    SQLOperacaoEstoque: TRxQuery;
    DSSQLOperacaoestoque: TDataSource;
    Label2: TLabel;
    ComboPlanoContas: TRxDBLookupCombo;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    SQLOperacaoEstoqueOPESA18CAMPOIMPFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMSFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPIFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCSUBST: TStringField;
    SQLOperacaoEstoqueOPESCCALCSUBSTFIS: TStringField;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    SQLOperacaoEstoqueOPESA60DESDENTRO: TStringField;
    SQLOperacaoEstoqueOPESA60DESFORA: TStringField;
    SQLOperacaoEstoqueOPERACAO_E_S: TStringField;
    procedure BtnTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    Procedure CarregaArquivos(Status:Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    Function ExecAndWait(Comando: String ; WindowState: word):Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaXMLCompras: TFormImportaXMLCompras;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;
{$R *.dfm}

procedure TFormImportaXMLCompras.BtnTodosClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If Not ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=True;
end;

procedure TFormImportaXMLCompras.BtnNenhumClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=False;
end;

procedure TFormImportaXMLCompras.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaArquivos(True);
  SQLPlanoContas.Open;
  SQLOperacaoEstoque.Open;
end;

Procedure TFormImportaXMLCompras.CarregaArquivos(Status:Boolean);
var
  I:Integer;
begin
  if not DirectoryExists('..\Arquivos\') then
  begin
    Showmessage('O Diretorio ..\Arquivos\ não existe. Verifique!');
    exit;
  end;
  ListaLOG.Directory := '..\Arquivos\';
  ListaLOG.Mask:='*.XML';
  ListaLOG.Update;
  ListaArquivos.Items.Clear;
  for I:=0 To ListaLOG.Items.Count-1 do
    begin
       ListaArquivos.Items.Add(ListaLOG.Items[I]);
    end;
  BtnTodos.Click;
End;



procedure TFormImportaXMLCompras.Button1Click(Sender: TObject);
begin
  inherited;
  CarregaArquivos(True);
end;

procedure TFormImportaXMLCompras.BtExecutarClick(Sender: TObject);
var comando : String;
  i: integer;
  ContLog,NumLog:Integer;
begin
  inherited;
  If ListaArquivos.Items.Count = 0 Then
  begin
    Showmessage('Selecione os arquivos XML a importar');
    Exit;
  End;

  IF ComboPlanoContas.Text = '' then
  begin
    Showmessage('Selecione a Conta de Despesa a Vincular as Notas Importadas');
    Exit;
  End;

  IF ComboOperacaoEstoque.Text = '' then
  begin
    Showmessage('Selecione a Operação de Estoque a Vincular as Notas Importadas');
    Exit;
  End;


  if not Pergunta('Nao','Confirma a Importação do(s) arquivo(s) XML Selecionados?') then
    Exit;

  Comando:= '';
  If ListaArquivos.Items.Count > 0 Then
  begin
    Comando:= 'javaw -jar C:\Unit\NFe\Atualy_NFe_Certo.jar IMPORTNCP'+Trim(SQLOperacaoEstoqueOPESICOD.AsString)+' '+UsuarioAtualNome+' '+SQLPlanoContasPLCTA15COD.AsString;
    For I:=0 To ListaArquivos.Items.Count-1 Do
      If ListaArquivos.Checked[I] Then
      Begin
        Comando := Comando + ' C:/Unit/Arquivos/' + ListaArquivos.Items[I];
      End;
  End;

  ExecAndWait(Comando, SW_SHOWNORMAL);

  BtnNenhum.Enabled:=True;
  BtnTodos.Enabled:=True;
  BtExecutar.Enabled:=True;
  Button1.Click;
end;

function  TFormImportaXMLCompras.ExecAndWait(Comando: String; WindowState: word):
boolean;
var
SUInfo: TStartupInfo;
ProcInfo: TProcessInformation;
CmdLine: string;
begin
  { Enclose filename in quotes to take care of long filenames with spaces. }

  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do
  begin
    cb:=2048;
    lpReserved:=NIL;
    lpDesktop:=NIL;
    lpTitle:=NIL;
    dwFlags:=STARTF_USESHOWWINDOW;
    wShowWindow:=SW_SHOWNORMAL;//SW_Hide; //para não aparecer na tela (background)!
    cbReserved2:=0;
    lpReserved2:=NIL;
  end;

  Result := CreateProcess(NIL,PChar(Comando), NIL, NIL, False, 0, NIL, nil , SUInfo, ProcInfo);
  { Wait for it to finish. }
  if Result then
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
end;

End.


