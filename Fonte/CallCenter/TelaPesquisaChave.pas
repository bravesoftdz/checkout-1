unit TelaPesquisaChave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Buttons, jpeg, ExtCtrls, Grids,
  DBGrids, DB, DBTables, DBCtrls, RxLookup;

type
  TFormPesquisaChave = class(TFormTelaGeralTEMPLATE)
    SQLHelp: TQuery;
    SQLHelpHELPA13ID: TStringField;
    SQLHelpEMPRICOD: TIntegerField;
    SQLHelpTERMICOD: TIntegerField;
    SQLHelpHELPICOD: TIntegerField;
    SQLHelpCLIEA13ID: TStringField;
    SQLHelpHELPCCONTATO: TStringField;
    SQLHelpHELPDINICIO: TDateTimeField;
    SQLHelpHELPTSOLICITACAO: TMemoField;
    SQLHelpHELPTSOLUCAO: TMemoField;
    SQLHelpHELPCTIPO: TStringField;
    SQLHelpTPHPICOD: TIntegerField;
    SQLHelpHELPCNIVEL: TStringField;
    SQLHelpHELPDTERMINO: TDateTimeField;
    SQLHelpHELPCPERGUNTACHAVE: TStringField;
    SQLHelpPRODICOD: TIntegerField;
    SQLHelpPENDENTE: TStringField;
    SQLHelpREGISTRO: TDateTimeField;
    DSSQLHelp: TDataSource;
    SQLCliente: TQuery;
    SQLHelpCLIEA60RAZAOSOC: TStringField;
    Panel1: TPanel;
    DBGridLista: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    PesquisaOK: TSpeedButton;
    Label2: TLabel;
    SQLProduto: TQuery;
    SQLHelpPRODA60DESCR: TStringField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdHelp: TQuery;
    SQLProdHelpPRODICOD: TIntegerField;
    DSSQLProdHelp: TDataSource;
    DBProduto: TDBLookupComboBox;
    CheckTipoPesquisa: TCheckBox;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdHelpPRODA60DESCR: TStringField;
    procedure PesquisaOKClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaChave: TFormPesquisaChave;
  KeyCharsSet: set of Char = [ '.', ',', '''', ';', ':', '?', '>', ' ',#13,#10,#9,'´', '`','!'];
implementation

uses DataModulo, TelaConsultaAtendimento, Principal, FormResources,
  CallCenterLibrary;

{$R *.dfm}



procedure TFormPesquisaChave.PesquisaOKClick(Sender: TObject);
var
i, totpalavra, PalavraAtual : integer;
sql, Palavra, TipoPesquisa: string;
begin
  inherited;
  Totpalavra := TotalPalavras(edit1.Text);
  SQLHelp.Close;
  palavra:='';
  if DBProduto.Text <> '' then
     Sql := 'SELECT * FROM HELPDESK WHERE PRODICOD = '''+SQLProdHelpPRODICOD.AsString+''' AND HELPCPERGUNTACHAVE LIKE ''%'
  else
     Sql := 'SELECT * FROM HELPDESK WHERE HELPCPERGUNTACHAVE LIKE ''%';
  PalavraAtual := 0;
  if CheckTipoPesquisa.Checked then
    TipoPesquisa := ' AND '
  else
    TipoPesquisa := ' OR ';
  for i := 1 to length(edit1.Text) do
    begin
        if not(edit1.Text[i] in KeyCharsSet) then
          begin
          palavra := palavra + edit1.Text[i];
          end
        else
          begin
           if (TotPalavra > 1) and (palavra <> '') and (PalavraAtual < TotPalavra) then
             Begin
               PalavraAtual := PalavraAtual + 1;
               if not (PalavraAtual = TotPalavra) then
                  Sql := sql + palavra + '%''' + TipoPesquisa + ' HELPCPERGUNTACHAVE LIKE ''%'
               else
                  Sql := sql + palavra;
             end
           else
             if (palavra <> '') and (PalavraAtual < TotPalavra) then
               Sql := sql + palavra;
             palavra :='';
          end;
    end;
  if (palavra <> '') and (PalavraAtual < TotPalavra)then
    sql := sql + palavra;
  sql := sql + '%''';
//  showmessage (sql);
  SQLHelp.SQL.Clear;
  SQLHelp.SQL.Add (sql);
  SQLHelp.Open;


end;

procedure TFormPesquisaChave.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  close
end;

procedure TFormPesquisaChave.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then PesquisaOK.Click;
end;

procedure TFormPesquisaChave.DBGridListaDblClick(Sender: TObject);
begin
  inherited;
  DM.CodAtendimento := SQLHelpHELPA13ID.AsString;
  Application.CreateForm(TFormTelaConsultaAtendimento,FormTelaConsultaAtendimento);
  FormTelaConsultaAtendimento.ShowModal;
end;

procedure TFormPesquisaChave.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLProdHelp.Active then SQLProdHelp.Active := true;
end;

end.
