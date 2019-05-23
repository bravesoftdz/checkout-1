unit TelaNotaFiscalItemFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, StdCtrls, Buttons, Grids, DBGrids,
  DBCtrls, Mask, ToolEdit, RxLookup, DB, DBTables, RxQuery, jpeg, ExtCtrls,
  ENumEd, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaNotaFiscalitemFiltro = class(TFormTelaGeralModalTemplate)
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaQTDENFOrigem: TBCDField;
    TblTemporariaQTDENFDest: TBCDField;
    SQLProdutos: TRxQuery;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA30CODESTRUT: TStringField;
    SQLProdutosPRODA60CODBAR: TStringField;
    SQLProdutosPRODA15CODANT: TStringField;
    SQLProdutosPRODIAGRUPGRADE: TIntegerField;
    SQLProdutosPRODA60REFER: TStringField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODA30ADESCRREDUZ: TStringField;
    SQLProdutosPRODA255DESCRTEC: TStringField;
    SQLProdutosPRODICODBALANCA: TIntegerField;
    SQLProdutosPRODA15APAVIM: TStringField;
    SQLProdutosPRODA15RUA: TStringField;
    SQLProdutosPRODA15PRATEL: TStringField;
    SQLProdutosCLFSICOD: TIntegerField;
    SQLProdutosMARCICOD: TIntegerField;
    SQLProdutosUNIDICOD: TIntegerField;
    SQLProdutosGRADICOD: TIntegerField;
    SQLProdutosGRTMICOD: TIntegerField;
    SQLProdutosGRUPICOD: TIntegerField;
    SQLProdutosSUBGICOD: TIntegerField;
    SQLProdutosVARIICOD: TIntegerField;
    SQLProdutosICMSICOD: TIntegerField;
    SQLProdutosPRODN3PESOBRUTO: TBCDField;
    SQLProdutosPRODN3PESOLIQ: TBCDField;
    SQLProdutosPRODN3CAPACEMBAL: TBCDField;
    SQLProdutosPRODDCAD: TDateTimeField;
    SQLProdutosPRODDULTALTER: TDateTimeField;
    SQLProdutosPRODN3VLRVENDA: TBCDField;
    SQLProdutosPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    SQLProdutosPRODN3VLRCOMPRA: TBCDField;
    SQLProdutosPRODN3VLRCUSTO: TBCDField;
    SQLProdutosPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutosPRODN3PERCIPI: TBCDField;
    SQLProdutosPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutosPRODCATIVO: TStringField;
    SQLProdutosPRODCSERVICO: TStringField;
    SQLProdutosPRODCGERACOMIS: TStringField;
    SQLProdutosPRODN2COMISVISTA: TBCDField;
    SQLProdutosPRODN2COMISPRAZO: TBCDField;
    SQLProdutosPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutosPRODICODPAI: TIntegerField;
    SQLProdutosPRODCTIPOBAIXA: TStringField;
    SQLProdutosPRODN3QTDEBAIXA: TBCDField;
    SQLProdutosCORICOD: TIntegerField;
    SQLProdutosPRODIORIGEM: TIntegerField;
    SQLProdutosPENDENTE: TStringField;
    SQLProdutosREGISTRO: TDateTimeField;
    SQLProdutosPRODDULTATUALIZ: TDateTimeField;
    SQLProdutosPRODA60DIMENSAO: TStringField;
    SQLProdutosPRODISITTRIB: TIntegerField;
    SQLProdutosPRODITIPOPRODBALAN: TStringField;
    SQLProdutosPRODICODETIQBAL: TIntegerField;
    SQLProdutosPRODIDIASVALIDADE: TIntegerField;
    SQLProdutosPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutosPRODN3DOLARCUSTO: TBCDField;
    SQLProdutosPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutosPRODN3DOLARVENDA: TBCDField;
    SQLProdutosPRODBIMAGEM: TBlobField;
    SQLProdutosPRODCSUBSTRIB: TStringField;
    SQLProdutosPRODCTEMNROSERIE: TStringField;
    SQLProdutosPRODA03GARANTIA: TStringField;
    SQLProdutosPRODA254COMPQUIMICA: TStringField;
    SQLProdutosPRODCTIPO: TStringField;
    SQLProdutosPRODN2PERCFRETE: TBCDField;
    SQLProdutosPRODN2PERDA: TBCDField;
    SQLProdutosPRODN2PIS: TBCDField;
    SQLProdutosPRODN3ALTURA: TBCDField;
    SQLProdutosPRODN3COMPRIMENTO: TBCDField;
    SQLProdutosPRODN3DIMENTOTAL: TBCDField;
    SQLProdutosPRODN3LARGURA: TBCDField;
    SQLProdutosPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutosPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutosCOLEICOD: TIntegerField;
    SQLProdutosPRODN2PERCDESP: TBCDField;
    SQLProdutosPRODN2PERCSUBST: TBCDField;
    SQLProdutosPRODN2PERCDESC1: TBCDField;
    SQLProdutosPRODN2PERCDESC2: TBCDField;
    SQLProdutosPRODN2PERCDESC3: TBCDField;
    SQLProdutosPRODN2PERCDESC4: TBCDField;
    SQLProdutosPRODN2PERCDESC5: TBCDField;
    SQLProdutosPRODN2PERCAUME1: TBCDField;
    SQLProdutosPRODN2PERCAUME2: TBCDField;
    SQLProdutosPRODN2PERCAUME3: TBCDField;
    SQLProdutosPRODN2PERCAUME4: TBCDField;
    SQLProdutosPRODN2PERCAUME5: TBCDField;
    SQLProdutosDECRICOD: TIntegerField;
    SQLProdutosPRODN2VLRVENDA2: TBCDField;
    SQLProdutosPRODN3PERCMARGLUC2: TBCDField;
    SQLProdutosPRODN3PERCMGLVFIXA: TBCDField;
    SQLProdutosPRODN3PERCMGLAFIXA: TBCDField;
    SQLProdutosPRODDULTCOMPRA: TDateTimeField;
    SQLProdutosPRODDULTVENDA: TDateTimeField;
    SQLProdutosPRODN3QTDULTCOMPRA: TBCDField;
    Panel1: TPanel;
    GroupFiltro: TGroupBox;
    Panel3: TPanel;
    BTFiltrar: TBitBtn;
    BTGravar: TBitBtn;
    EditNota: TEdit;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    ComboSerie: TRxDBLookupCombo;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieEMPRICOD: TIntegerField;
    DSSQLSerie: TDataSource;
    lbFornecedor: TLabel;
    EditChave: TEdit;
    Label1: TLabel;
    EditDesconto: TCurrencyEdit;
    procedure BTFiltrarClick(Sender: TObject);
    procedure TblTemporariaNewRecord(DataSet: TDataSet);
    procedure GridProdutosFiltradosEnter(Sender: TObject);
    procedure GridProdutosFiltradosExit(Sender: TObject);
    procedure ComboVariacaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaNotaFiscalitemFiltro: TFormTelaNotaFiscalitemFiltro;

implementation

uses DataModulo, WaitWindow, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaNotaFiscalitemFiltro.BTFiltrarClick(Sender: TObject);
var Item : integer;
    IDNota, Tipo, TabelaCab, TabelaItem, CampoID, CampoSerie, CampoNumero, CampoChave : String;

begin
  inherited;
  if labeltitulo.Caption = 'Importar Produtos apartir de uma Nota de Entrada' then
    begin
      Tipo := 'E';
      TabelaCab   := 'NotaCompra';
      TabelaItem  := 'NotaCompraItem';
      CampoID     := 'NOCPA13ID';
      CampoSerie  := 'NOCPA5SERIE';
      CampoNumero := 'NOCPA30NRO';
      CampoChave  := 'NOFIA44CHAVEACESSO';
    end
  else
    begin
      Tipo := 'S';
      TabelaCab   := 'NotaFiscal';
      TabelaItem  := 'NotaFiscalItem';
      CampoID     := 'NOFIA13ID';
      CampoSerie  := 'SERIA5COD';
      CampoNumero := 'NOFIINUMERO';
      CampoChave  := 'NOFIA44CHAVEACESSO';
    end;

  dm.SQLTemplate.Close;
  dm.SQLTemplate.SQL.Clear;
  dm.SQLTemplate.SQL.Add('Select * from '+ TabelaCab +' where %mSerie and %mNumero and %mChave');
  if ComboSerie.Value <> '' then
    dm.SQLTemplate.MacroByName('mSerie').Value := CampoSerie + '="' + ComboSerie.Value + '"'
  else
    dm.SQLTemplate.MacroByName('mSerie').Value := '0=0';
  if EditNota.Text <> '' then
    dm.SQLTemplate.MacroByName('mNumero').Value := CampoNumero + '=' + EditNota.Text
  else
    dm.SQLTemplate.MacroByName('mNumero').Value := '0=0';
  if EditChave.Text <> '' then
    dm.SQLTemplate.MacroByName('mChave').Value := CampoChave + '="' + EditChave.Text + '"'
  else
    dm.SQLTemplate.MacroByName('mChave').Value := '0=0';

  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      if Tipo = 'S' then
        IDNota := dm.SQLTemplate.fieldbyname('NOFIA13ID').Value
      else
        IDNota := dm.SQLTemplate.fieldbyname('NOCPA13ID').Value;

      TblTemporaria.Close ;
      try
        TblTemporaria.DeleteTable ;
        TblTemporaria.CreateTable ;
      except
        on E:Exception do
          begin
            if pos('Table is busy',E.Message) > 0 then
              ShowMessage('A tabela j� est� sendo usada por outro m�dulo, por favor verifique e tente novamente.');
            TblTemporaria.CreateTable ;
          end;
      end ;
      TblTemporaria.Open ;
      // Filtrar Itens da Nota Fiscal
      dm.SQLTemplate.Close;
      dm.SQLTemplate.SQL.Clear;
      dm.SQLTemplate.SQL.Add('Select * from '+ TabelaItem);
      dm.SQLTemplate.SQL.Add('Where '+CampoID+'="'+ IDNota +'"');
      dm.SQLTemplate.Open;
      if not dm.SQLTemplate.IsEmpty then
        begin
          Item := 1;
          MakeWindow(dm.SQLTemplate.RecordCount, 'Aguarde, Executando Filtro!');
          while not dm.SQLTemplate.Eof do
            begin
              SetProgress(Item);
              Item := Item + 1;
              TblTemporaria.Append;
              TblTemporariaPRODICOD.Value        := dm.SQLTemplate.fieldbyname('PRODICOD').Value;
              TblTemporariaPRODA60DESCR.Value    := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',TblTemporariaPRODICOD.AsString);
              if Tipo = 'S' then
                begin
                  TblTemporariaPRODN3VLRVENDA.Value     := dm.SQLTemplate.fieldbyname('NFITN2VLRUNIT').Value;
                  TblTemporariaQTDENFOrigem.Value       := dm.SQLTemplate.fieldbyname('NFITN3QUANT').Value;
                end
              else
                begin
                  TblTemporariaQTDENFOrigem.Value    := dm.SQLTemplate.fieldbyname('NOCIN3QTDEMBAL').Value;
                  TblTemporariaPRODN3VLRVENDA.Value  := dm.SQLTemplate.fieldbyname('NOCIN3VLREMBAL').Value;
                end;

              TblTemporaria.Post;
              dm.SQLTemplate.Next;
            end;
          DestroyWindow;
          TblTemporaria.First;
          DBGrid1.SetFocus;
        end;
    end
  else
    begin
      Application.ProcessMessages;
      ShowMessage('Nota Fiscal n�o foi encontrada! Verifique o Filtro!');
    end;
end;

procedure TFormTelaNotaFiscalitemFiltro.TblTemporariaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblTemporariaQTDENFDest.Value := 0;
end;

procedure TFormTelaNotaFiscalitemFiltro.GridProdutosFiltradosEnter(
  Sender: TObject);
begin
  inherited;
  FormTelaNotaFiscalItemFiltro.KeyPreview := False;
end;

procedure TFormTelaNotaFiscalitemFiltro.GridProdutosFiltradosExit(
  Sender: TObject);
begin
  inherited;
  FormTelaNotaFiscalItemFiltro.KeyPreview := True;
end;

procedure TFormTelaNotaFiscalitemFiltro.ComboVariacaoExit(
  Sender: TObject);
begin
  inherited;
  BTFiltrar.Click;
end;

procedure TFormTelaNotaFiscalitemFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  SQLSerie.Open;
end;

end.
