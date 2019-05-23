unit TelaExportacaoCaixaEstrategia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, RxQuery, ToolEdit, Mask, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoCaixaEstrategia = class(TFormTelaGeralTEMPLATE)
    GroupBox3: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    EditDiretorio: TDirectoryEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    BtExecutar: TSpeedButton;
    Bevel1: TBevel;
    Label8: TLabel;
    Label3: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    Label5: TLabel;
    EditTabela: TEdit;
    DSSQLEmpresa: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLTesouraria: TRxQuery;
    DSSQLTesouraria: TDataSource;
    SQLTesourariaTESOA13ID: TStringField;
    SQLTesourariaEMPRICOD: TIntegerField;
    SQLTesourariaTERMICOD: TIntegerField;
    SQLTesourariaTESOICOD: TIntegerField;
    SQLTesourariaTESODMOV: TDateTimeField;
    SQLTesourariaTESON2VLRDEBITO: TBCDField;
    SQLTesourariaTESON2VLRCREDITO: TBCDField;
    SQLTesourariaNUMEICOD: TIntegerField;
    SQLTesourariaOPTEICOD: TIntegerField;
    SQLTesourariaTESOA255HIST: TStringField;
    SQLTesourariaCTRCA13ID: TStringField;
    SQLTesourariaCTPGA13ID: TStringField;
    SQLTesourariaCQEMA13ID: TStringField;
    SQLTesourariaFECXA13ID: TStringField;
    SQLTesourariaUSUAICOD: TIntegerField;
    SQLTesourariaPENDENTE: TStringField;
    SQLTesourariaREGISTRO: TDateTimeField;
    SQLTesourariaPLCTA15COD: TStringField;
    SQLTesourariaHTPDICOD: TIntegerField;
    SQLTesourariaPLCTA15COD1: TStringField;
    SQLTesourariaTESOA20DOCORIGEM: TStringField;
    procedure BtExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo : TextFile;
  end;

var
  FormTelaExportacaoCaixaEstrategia: TFormTelaExportacaoCaixaEstrategia;

implementation

uses UnitLibrary, DataModulo;
{$R *.dfm}

procedure TFormTelaExportacaoCaixaEstrategia.BtExecutarClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha, Mes, ContaContabil, Dia, EntradaSaida, Valor,
    Historico : String;
begin
  inherited;
  if (De.Date = null) or (ate.Date = null) then
    begin
      ShowMessage('Informe as datas antes de tentar executar a rotina!');
      Exit;
    end;
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;

  // Abrir as Tabelas necessárias para Exportação
  SQLTesouraria.Close;
  SQLTesouraria.MacroByName('MData').Value := '(TESODMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '") and ' +
                                               '(TESODMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '")';
  SQLTesouraria.Open;
  if SQLTesouraria.IsEmpty then
    begin
      ShowMessage('Não existem movimentos no período selecionado!');
      Abort;
    end;
  // Criar Arquivo TXT Mov Caixa
  CaminhoNomeArquivo := EditDiretorio.Text + '\Caixa_'+FormatDateTime('ddmmyyyy',De.date)+'_'+FormatDateTime('ddmmyyyy',ate.Date)+'.TXT';
  try
    EditTabela.Text := 'Tentando criar o arquivo com o Movimento de Caixa...';
    EditTabela.Update;
    AssignFile(Arquivo,CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Append(Arquivo);
  except
    EditTabela.Text := 'Falha ao tentar criar o arquivo...';
    EditTabela.Update;
    Application.ProcessMessages;
    Abort;
  end;
  // Loop na tab Tesouraria
  EditTabela.Text := 'Exportando movimentos para o arquivo...';
  EditTabela.Update;
  While not SQLTesouraria.Eof Do
    begin
      Mes           := FormatDateTime('mm',SQLTesourariaTESODMOV.Value) ; //Mes_Lancto 1,2
      ContaContabil := dm.SQLLocate('PLANODECONTAS','PLCTA15COD','PLCTICODREDUZ',SQLTesourariaPLCTA15COD.AsString); // Conta 13,16
      Dia           := FormatDateTime('dd',SQLTesourariaTESODMOV.Value) ; //Dia_Lancto 1,2
      if SQLTesourariaTESON2VLRCREDITO.Value>0 then
        begin
          EntradaSaida  := '1' ; // Entrada
          Valor         := SQLTesourariaTESON2VLRCREDITO.AsString; // Valor Lancto Entrada
        end
      else
        begin
          EntradaSaida  := '2'; // Saida
          Valor         := SQLTesourariaTESON2VLRDEBITO.AsString; // Valor Lancto Saida
        end;
      Historico     := SQLTesourariaTESOA255HIST.AsString;
      Linha := Mes                                                  + // Mes  com 02 char
               '00000'                                              + // Valor Fixo com Cinco Zeros
               '000'                                                + // Valor Fixo com Tres Zeros
               '00'                                                 + // Valor Fixo com dois Zeros
               Preenche(ContaContabil,'0',4,0)                      + // ContaContabil com 04 char
               '00.00'                                              + // Valor Fixo com 05 char
               Dia                                                  + // Dia  com 02 char
               EntradaSaida                                         + // EntradaSaida  com 01 char
               Preenche(Valor,'0',16,0)                             + // Valor com 16 char
               '00'                                                 + // Valor Fixo com dois Zeros
               Copy(Historico,1,121)                                ; // Historico com 120 char
      Writeln(Arquivo,Linha);
      SQLTesouraria.Next;
    end;
  // Fechar Arquivo
  CloseFile(Arquivo);
  EditHoraTermino.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraTermino.Update;
  EditTabela.Text := 'Exportação concluida com sucesso!';
  EditTabela.Update;
  ShowMessage('Exportação concluida com sucesso!');

end;

procedure TFormTelaExportacaoCaixaEstrategia.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
end;

end.
