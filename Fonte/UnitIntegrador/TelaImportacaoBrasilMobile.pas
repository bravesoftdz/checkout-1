unit TelaImportacaoBrasilMobile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, VarSys,
  ToolEdit, DB, DBTables, RxQuery, RXCtrls, FileCtrl, Grids, DBGrids, Menus,
  ComCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImportacaoBrasilMobile = class(TFormTelaGeralTEMPLATE)
    Bevel1: TBevel;
    Label8: TLabel;
    Label3: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EditDiretorio: TDirectoryEdit;
    BtExecutar: TSpeedButton;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TBCDField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TBCDField;
    SQLPedidoVendaPDVDN2TOTPROD: TBCDField;
    SQLPedidoVendaPDVDN2TOTPED: TBCDField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TBCDField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    SQLPedidoVendaPDVDCIMPORTADO: TStringField;
    SQLPedidoVendaPDVDN2PERCFAT: TBCDField;
    SQLPedidoVendaPDVDN2PERCOMIS: TBCDField;
    SQLPedidoVendaUSUAA60LOGIN: TStringField;
    SQLPedidoVendaROTAICOD: TIntegerField;
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TBCDField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TBCDField;
    SQLPedidoVendaItemPVITN2PERCDESC: TBCDField;
    SQLPedidoVendaItemPVITN2VLRDESC: TBCDField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TBCDField;
    SQLPedidoVendaItemPDVDA60OBS: TStringField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TBCDField;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    SQLPedidoVendaItemLOTEA30NRO: TStringField;
    SQLPedidoVendaSERIA5COD: TStringField;
    SQLPedidoVendaVEICA13ID: TStringField;
    SQLPedidoVendaPDVDA15NROPEDPALM: TStringField;
    GroupBox1: TGroupBox;
    CheckPedidos: TCheckBox;
    CheckClientes: TCheckBox;
    ListaArquivos: TRxCheckListBox;
    BtnTodos: TSpeedButton;
    BtnNenhum: TSpeedButton;
    Button1: TButton;
    ListaLOG: TFileListBox;
    SQLPesquisa: TQuery;
    SQLPedidoVendaNOFIAOBSCORPONF: TStringField;
    SQLPedidoVendaPDVD8PLACAVEIC: TStringField;
    SQLPedidoVendaOPESICOD: TIntegerField;
    SQLPedidoVendaPDVDN2VLROUTRASDESP: TBCDField;
    SQLPlano: TRxQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TBCDField;
    SQLPlanoPLRCN2TXMULTA: TBCDField;
    SQLPlanoPLRCN2TXCRED: TBCDField;
    SQLPlanoPLRCN2PERCDESC: TBCDField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TBCDField;
    SQLPlanoPLRCN2DESC: TBCDField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLPlanoPLRCN2PERCACRESC: TBCDField;
    SQLPlanoParcela: TRxQuery;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TBCDField;
    SQLContasReceberCTRCN2TXMULTA: TBCDField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCN2TOTJUROREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLContasReceberCTRCN2TOTDESCREC: TBCDField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    SQLContasReceberCTRCA2MESCOMP: TStringField;
    SQLContasReceberCTRCA4ANOCOMP: TStringField;
    SQLContasReceberPRCHICOD: TIntegerField;
    SQLContasReceberCTRCA15TELECHQ: TStringField;
    SQLContasReceberCLDPICOD: TIntegerField;
    SQLContasReceberCTRCN2TOTCORRECAO: TBCDField;
    DSSQLContasReceber: TDataSource;
    Memo: TMemo;
    ProgressBar: TProgressBar;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TBCDField;
    procedure BtExecutarClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    Procedure CarregaArquivos(Status:Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImportacaoBrasilMobile: TFormTelaImportacaoBrasilMobile;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;
{$R *.dfm}

procedure TFormTelaImportacaoBrasilMobile.BtExecutarClick(Sender: TObject);
var
  Texto : TextFile;
  HouveErro, Erro : Boolean;
  ItemPedido, Linha, I, Ix, ContadorCampos : integer;
  TagPedido, IDCliente, Vendedor,  Emissao,   Info,    Identificador, sCampo,
  NumPedido,  CodPedido,  CodCliente,   DataVenda,    IDPrazo_tc09,  ID_Documento,
  TipoPedido,  DataEntrega,  QtdItens,     ValorParcial,  Desconto,  Valorfinal,  Frete,
  ListaPadrao,  EstoquePadrao,  DescontoComissao,  DescontoGeral,  Observacao,  Rendimento,
  Indices,  CPFCNPJ,  OuroDolar,  Reenvio,
  ITPD_IDItem,  ITPD_Referencia,  ITPD_IDLista,  ITPD_Unidade,  ITPD_Quantidade,  ITPD_VlrUnitario,
  ITPD_VlrParcial,  ITPD_VlrDesconto,  ITPD_VlrFinal,  ITPD_Peso,  ITPD_Grupo,  ITPD_Obs,  ITPD_VlrUnitOriginal,
  ITPD_variacao1,  ITPD_variacao2,  ITPD_variacao3,  ITPD_variacao4,
  Cli_Codigo, Cli_Nome, Cli_Fantasia,  Cli_Tipo,  Cli_CPFCNPJ,  Cli_IE,  Cli_Email,  Cli_DiasVisita,  Cli_IDCidade,
  Cli_Segmentacao ,  Cli_Logradouro,  Cli_Bairro,   Cli_CEP,  Cli_Fone1,  Cli_Fone2,  Cli_Fax,
  Cli_PontoReferencia, ID   :   string;
  varDia, varMes, varAno, VarDiaOficial: Word;
  nParcelas, offSet: Integer;
  Arredondamento:Double;
begin
  inherited;

  if not DirectoryExists('C:\BWCenter\BackUp') then
   CreateDir('C:\BWCenter\BackUp');

  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;
  // Importar Pedidos
  BtExecutar.Enabled := False;

  if CheckClientes.Checked then
  begin
    SQLPesquisa.Close;
    SQLPesquisa.SQL.Text := 'Update cliente set CLIEA10CODANT = :xParamCod';
    SQLPesquisa.ParamByName('xParamCod').AsString := '';
    SQLPesquisa.ExecSQL;
    SQLPesquisa.Close;
  end;

    If ListaArquivos.Items.Count > 0 Then
    Begin
      ProgressBar.Max := lISTAaRQUIVOS.Items.Count;
      ProgressBar.Position := 0;
      For Ix:=0 To ListaArquivos.Items.Count-1 Do
        If ListaArquivos.Checked[Ix] Then
        begin
          AssignFile(Texto,EditDiretorio.Text+'\'+ListaArquivos.Items[Ix]);
          Reset(Texto);
          HouveErro := False;
          Linha := 0;
          SQLPedidoVenda.Open;
          SQLPedidoVendaItem.Open;

          if  Length(ListaArquivos.Items[Ix]) <> 22 then  // identificação do vendedor
          Begin
            MessageDlg('A T E N Ç Ã O...'+#13+#10+''+#13+#10+'Linha inicial não contem identificação de arquivo de pedidos.'+#13+#10+''+#13+#10+'Verifique.', mtWarning, [mbOK], 0);
            Exit;
          end;

          while not EOF(Texto) do
            begin
              Readln(Texto,Info);
              Identificador := Copy(Info, 1,4) ;
              if  Identificador = 'ta01' then  // identificação do vendedor
              begin
                Vendedor := copy(Info,5,8);
                Emissao  := Copy(Info,13,10);
              end;

              // ============ IMPORTACAO CLIENTES  ====================

              if CheckClientes.Checked then
              begin
                if Identificador = 'tc01' then
                begin
                  for i:= 1 to Length(Info) do
                  begin
                    Case i of
                      5   : begin sCampo := ''; end;
                      13  : begin Cli_Codigo                    := sCampo; sCampo := '' ; end;
                      113 : begin Cli_Nome                      := sCampo; sCampo := '' ; end;
                      213 : begin Cli_Fantasia                  := sCampo; sCampo := '' ; end;
                      214 : begin Cli_Tipo                      := sCampo; sCampo := '' ; end;
                      228 : begin Cli_CPFCNPJ                   := sCampo; sCampo := '' ; end;
                      248 : begin Cli_IE                        := sCampo; sCampo := '' ; end;
                      348 : begin Cli_Email                     := sCampo; sCampo := '' ; end;
                      356 : begin Cli_DiasVisita                := sCampo; sCampo := '' ; end;
                      364 : begin Cli_IDCidade                  := sCampo; sCampo := '' ; end;
                      372 : begin Cli_Segmentacao               := sCampo; sCampo := '' ; end;
                    end;
                    sCampo:= sCampo + Info[i];
                  end;

                  try
                    // Verifica se o codigo de cliente já existe, se teve alterações ou se é um novo cliente
                    SQLPesquisa.Close;
                    SQLPesquisa.SQL.Text:= 'Select * from CLIENTE where SUBSTRING (CLIEA13ID FROM 6 FOR 8) = "'+Cli_Codigo+'"';
                    SQLPesquisa.Open;

                    CodCliente := '0'; // indica Cliente Novo
                    if Copy(SQLPesquisa.FieldByName('CLIEA13ID').AsString,6,8) = Cli_Codigo then
                      CodCliente := SQLPesquisa.FieldByName('CLIEA13ID').AsString;

                    if CodCliente = '0' then // cliente novo
                      SQLPesquisa.SQL.Text :=
                      'insert into cliente ( '+
                      'CLIEA13ID         , '+
                      'EMPRICOD          , '+
                      'CLIEICOD          , '+
                      'CLIEA5FISJURID    , '+
                      'CLIEA14CGC        , '+
                      'CLIEA20IE         , '+
                      'CLIEA11CPF        , '+
                      'CLIEA10RG         , '+
                      'CLIEA60RAZAOSOC   , '+
                      'CLIEA60NOMEFANT   , '+
                      'CLIEA60CIDRES     , '+
                      'CLIEIMUNICODFED   , '+
                      'CLIEA2UFRES       , '+
                      'CLIEA60EMAIL      , '+
                      'VENDICOD          , '+
                      'CLIEDCAD          , '+
                      'PENDENTE          , '+
                      'REGISTRO          , '+
                      'CLIEA10CODANT     , '+
                      'CLIEICODPAIS      ) '+
                      'VALUES (            '+
                      ':CLIEA13ID         ,'+
                      ':EMPRICOD          ,'+
                      ':CLIEICOD          ,'+
                      ':CLIEA5FISJURID    ,'+
                      ':CLIEA14CGC        ,'+
                      ':CLIEA20IE         ,'+
                      ':CLIEA11CPF        ,'+
                      ':CLIEA10RG         ,'+
                      ':CLIEA60RAZAOSOC   ,'+
                      ':CLIEA60NOMEFANT   ,'+
                      ':CLIEA60CIDRES     ,'+
                      ':CLIEIMUNICODFED   ,'+
                      ':CLIEA2UFRES       ,'+
                      ':CLIEA60EMAIL      ,'+
                      ':VENDICOD          ,'+
                      ':CLIEDCAD          ,'+
                      ':PENDENTE          ,'+
                      ':REGISTRO          ,'+
                      ':CLIEA10CODANT     ,'+
                      ':CLIEICODPAIS      )'
                    else
                      SQLPesquisa.SQL.Text :=
                      'UPDATE CLIENTE SET                      '+
                      'CLIEA5FISJURID    = :CLIEA5FISJURID    , '+
                      'CLIEA14CGC        = :CLIEA14CGC        , '+
                      'CLIEA20IE         = :CLIEA20IE         , '+
                      'CLIEA11CPF        = :CLIEA11CPF        , '+
                      'CLIEA10RG         = :CLIEA10RG         , '+
                      'CLIEA60RAZAOSOC   = :CLIEA60RAZAOSOC   , '+
                      'CLIEA60NOMEFANT   = :CLIEA60NOMEFANT   , '+
                      'CLIEA60CIDRES     = :CLIEA60CIDRES     , '+
                      'CLIEIMUNICODFED   = :CLIEIMUNICODFED   , '+
                      'CLIEA2UFRES       = :CLIEA2UFRES       , '+
                      'CLIEA60EMAIL      = :CLIEA60EMAIL      , '+
                      'VENDICOD          = :VENDICOD          , '+
                      'CLIEDCAD          = :CLIEDCAD          , '+
                      'PENDENTE          = :PENDENTE          , '+
                      'REGISTRO          = :REGISTRO          , '+
                      'CLIEA10CODANT     = :CLIEA10CODANT     , '+
                      'CLIEICODPAIS      = :CLIEICODPAIS        '+
                      'WHERE CLIEA13ID  = :CLIEA13ID            ';


                    SQLPesquisa.Prepare;
                    if  CodCliente = '0' then // cliente novo
                    begin
                      SQLPesquisa.ParambyName('CLIEA10CODANT').asstring   := Cli_Codigo;
                      CodCliente := IntToStr(DM.ProximoCodigoPorEmpresa('CLIENTE','CLIEICOD'));
                      ID :=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[StrToInt(CodCliente)]);
                      ID := ID+DigitVerifEAN(ID);
                      SQLPesquisa.ParambyName('CLIEA13ID').asstring       := ID;
                      SQLPesquisa.ParambyName('EMPRICOD').value           := EmpresaCorrente;
                      SQLPesquisa.ParambyName('CLIEICOD').asstring        := CodCliente;
                    end else
                    begin
                      SQLPesquisa.ParamByName('CLIEA13ID').AsString       := CodCliente;
                      SQLPesquisa.ParambyName('CLIEA10CODANT').asstring   := '';
                    end;
                    SQLPesquisa.ParambyName('CLIEA5FISJURID').asstring  := UpperCase(Cli_tipo);
                    if UpperCase(Cli_tipo) = 'J' then
                    begin
                      SQLPesquisa.ParambyName('CLIEA14CGC').asstring      := Cli_CPFCNPJ;
                      SQLPesquisa.ParambyName('CLIEA20IE').asstring       := Cli_IE;
                      SQLPesquisa.ParambyName('CLIEA11CPF').AsString      := '';
                      SQLPesquisa.ParambyName('CLIEA10RG').AsString       := '';
                    end else
                    begin
                      SQLPesquisa.ParambyName('CLIEA14CGC').AsString      := '';
                      SQLPesquisa.ParambyName('CLIEA20IE').AsString       := '';
                      SQLPesquisa.ParambyName('CLIEA11CPF').asstring      := Cli_CPFCNPJ;
                      SQLPesquisa.ParambyName('CLIEA10RG').asstring       := Cli_IE;
                    end;
                    SQLPesquisa.ParambyName('CLIEA60RAZAOSOC').asstring := UPPERCASE(Cli_Nome);
                    SQLPesquisa.ParambyName('CLIEA60NOMEFANT').asstring := uPPERCASE(Cli_Fantasia);
                    SQLPesquisa.ParambyName('CLIEA60EMAIL').asstring    := LowerCase(Cli_Email);
                    SQLPesquisa.ParambyName('PENDENTE').asstring        := 'S';
                    SQLPesquisa.ParambyName('REGISTRO').AsDateTime      := Now;
                    SQLPesquisa.ParambyName('CLIEA60CIDRES').asstring   := SQLLocate('CLIENTE','CLIEIMUNICODFED','CLIEA60CIDRES',Cli_IDCidade);
                    SQLPesquisa.ParambyName('CLIEIMUNICODFED').Asstring := Cli_IDCidade;
                    SQLPesquisa.ParambyName('CLIEA2UFRES').asstring     := SQLLocate('CLIENTE','CLIEIMUNICODFED','CLIEA2UFRES',Cli_IDCidade);
                    SQLPesquisa.ParambyName('CLIEDCAD').AsDate          := Date;
                    SQLPesquisa.ParambyName('VENDICOD').asstring        := Vendedor;
                    SQLPesquisa.ParambyName('CLIEICODPAIS').asstring    := '1058'; // Brasil

                    SQLPesquisa.ExecSQL;

                    SQLPesquisa.Close;

                    HouveErro := False;
                  except on e:Exception do
                  begin
                    HouveErro := True;
                    Memo.Lines.Add('Identificador TA01 -> Problemas ao Importar o Item da Linha: '+ IntToStr(Linha)+ ' - '+e.message);
                    Application.ProcessMessages;
                  end; end;
                end; // if identificador = 'tc01'

                if Identificador = 'tc03' then
                begin
                  for i:= 1 to Length(Info) do
                  begin
                    Case i of
                      5   : begin sCampo := ''; end;
                      13  : begin Cli_Codigo                    := sCampo; sCampo := '' ; end;
                      213 : begin Cli_Logradouro                := sCampo; sCampo := '' ; end;
                      263 : begin Cli_Bairro                    := sCampo; sCampo := '' ; end;
                      271 : begin Cli_IDCidade                  := sCampo; sCampo := '' ; end;
                      279 : begin Cli_CEP                       := sCampo; sCampo := '' ; end;
                      294 : begin Cli_Fone1                     := sCampo; sCampo := '' ; end;
                      309 : begin Cli_Fone2                     := sCampo; sCampo := '' ; end;
                      324 : begin Cli_Fax                       := sCampo; sCampo := '' ; end;
                      374 : begin Cli_PontoReferencia           := sCampo; sCampo := '' ; end;
                    End;
                    sCampo:= sCampo + Info[i];
                  end;
                  try
                    // Verifica se o codigo de cliente já existe, se teve alterações ou se é um novo cliente
                    SQLPesquisa.Close;
                    SQLPesquisa.SQL.Text:= 'Select * from CLIENTE where SUBSTRING (CLIEA13ID FROM 6 FOR 8) = "'+Cli_Codigo+'"';
                    SQLPesquisa.Open;

                    CodCliente := '0'; // indica Cliente Novo
                    if Copy(SQLPesquisa.FieldByName('CLIEA13ID').AsString,6,8) = Cli_Codigo then
                      CodCliente := SQLPesquisa.FieldByName('CLIEA13ID').AsString
                    Else
                    begin
                      SQLPesquisa.Close;
                      SQLPesquisa.SQL.Text:= 'Select CLIEA13ID, CLIEA10CODANT from CLIENTE where CLIEA10CODANT = "'+Cli_Codigo+'"';
                      SQLPesquisa.Open;
                      SQLPesquisa.First;
                      While (SQLPesquisa.FieldByName('CLIEA10CODANT').AsString <> Cli_Codigo) and (not SQLPesquisa.Eof) do
                        SQLPesquisa.Next;
                      if SQLPesquisa.FieldByName('CLIEA10CODANT').AsString = Cli_Codigo then
                        CodCliente := SQLPesquisa.FieldByName('CLIEA13ID').AsString
                    end;

                    If Codcliente <> '0' then
                    begin
                      SQLPesquisa.SQL.Text :=
                      'UPDATE CLIENTE SET                       '+
                      'CLIEA15FONE1      = :CLIEA15FONE1      , '+
                      'CLIEA15FONE2      = :CLIEA15FONE2      , '+
                      'CLIEA15FAX        = :CLIEA15FAX        , '+
                      'CLIEA60ENDRES     = :CLIEA60ENDRES     , '+
                      'CLIEA5NROENDRES   = :CLIEA5NROENDRES   , '+
                      'CLIEA60BAIRES     = :CLIEA60BAIRES     , '+
                      'CLIEA8CEPRES      = :CLIEA8CEPRES      , '+
                      'PENDENTE          = :PENDENTE          , '+
                      'REGISTRO          = :REGISTRO           '+
                    //  'CLIEA10CODANT     = :CLIEA10CODANT       '+
                      'WHERE CLIEA13ID  = :CLIEA13ID            ';
                      SQLPesquisa.Prepare;

                      SQLPesquisa.ParamByName('CLIEA13ID').AsString       := CodCliente;
                  //    SQLPesquisa.ParambyName('CLIEA10CODANT').AsString   := '';
                      SQLPesquisa.ParambyName('CLIEA15FONE1').asstring    := Cli_Fone1;
                      SQLPesquisa.ParambyName('CLIEA15FONE2').asstring    := Cli_Fone2;
                      SQLPesquisa.ParambyName('CLIEA15FAX').asstring      := Cli_Fax;
                      SQLPesquisa.ParambyName('CLIEA60ENDRES').asstring   := '';
                      SQLPesquisa.ParambyName('CLIEA5NROENDRES').asstring := '';
                      Cli_Fax := '';
                      ContadorCampos := 1;
                      For i := 1 to Length(Cli_Logradouro) DO
                      begin
                        Case ContadorCampos of
                        1: begin
                              if Cli_Logradouro[i] <> '^' then
                                Cli_Fax := Cli_Fax + Cli_Logradouro[i]
                              else begin
                                inc(ContadorCampos);
                                SQLPesquisa.ParambyName('CLIEA60ENDRES').asstring   := UPPERCASE(Cli_Fax);
                                Cli_Fax := '';
                              end;
                           end;
                        2: begin
                            if Cli_Logradouro[i] <> '^' then
                                Cli_Fax := Cli_Fax + Cli_Logradouro[i]
                              else begin
                                inc(ContadorCampos);
                                SQLPesquisa.ParambyName('CLIEA5NROENDRES').asstring   := UPPERCASE(Cli_Fax);
                                Cli_Fax := '';
                              end;
                           end;
                        end;


                      end;
                      SQLPesquisa.ParambyName('CLIEA60BAIRES').asstring   := UPPERCASE(Cli_Bairro);
                      SQLPesquisa.ParambyName('CLIEA8CEPRES').asstring    := Cli_CEP;
                      SQLPesquisa.ParambyName('PENDENTE').asstring        := 'S';
                      SQLPesquisa.ParambyName('REGISTRO').AsDate          := Date;
                      SQLPesquisa.ExecSQL;

                    end;
                    HouveErro := False;
                  except on e:Exception do
                    begin
                      HouveErro := True;
                      Memo.Lines.Add('Identificador TC03 -> Problemas ao Importar o Item da Linha: '+ IntToStr(Linha)+ ' - '+e.message);
                      Application.ProcessMessages;
                    end;
                  end;
                end; // if identificador = 'tc03'
              end; // if CheckClientes.Checked then



             // ========  IMPORTACAO PEDIDOS ====================


              if CheckPedidos.Checked then
              begin
                if Identificador = 'te01' then // cabeçalho de pedido
                  begin
                    ContadorCampos := 0;
                    sCampo := '';
                    for i:= 1 to Length(Info) do
                      begin
                        Case i of
                           5 :  begin TagPedido                 := sCampo; sCampo := '' ; end;
                           13:  begin CodPedido                 := sCampo; sCampo := '' ; end;
                           21:  begin Cli_Codigo                := sCampo; sCampo := '' ; end;
                           38:  begin DataVenda                 := sCampo; sCampo := '' ; end;
                           46:  begin IDPrazo_tc09              := sCampo; sCampo := '' ; end;
                           54:  begin ID_Documento              := sCampo; sCampo := '' ; end;
                           62:  begin TipoPedido                := sCampo; sCampo := '' ; end;
                           79:  begin DataEntrega               := sCampo; sCampo := '' ; end;
                           87:  begin QtdItens                  := sCampo; sCampo := '' ; end;
                           95:  begin ValorParcial              := sCampo; sCampo := '' ; end;
                           103: begin Desconto                  := sCampo; sCampo := '' ; end;
                           111: begin Valorfinal                := sCampo; sCampo := '' ; end;
                           112: begin Frete                     := sCampo; sCampo := '' ; end;
                           120: begin ListaPadrao               := sCampo; sCampo := '' ; end;
                           128: begin EstoquePadrao             := sCampo; sCampo := '' ; end;
                           136: begin DescontoComissao          := sCampo; sCampo := '' ; end;
                           144: begin DescontoGeral             := sCampo; sCampo := '' ; end;
                           344: begin Observacao                := sCampo; sCampo := '' ; end;
                           374: begin Rendimento                := sCampo; sCampo := '' ; end;
                           434: begin Indices                   := sCampo; sCampo := '' ; end;
                           448: begin CPFCNPJ                   := sCampo; sCampo := '' ; end;
                           478: begin OuroDolar                 := sCampo; sCampo := '' ; end;
                           479: begin Reenvio                   := sCampo; sCampo := '' ; end;
                        end;
                        sCampo:= sCampo + Info[i]
                      end;
                      if DataVenda = '23/08/10 15:29:00' then
                        beep;

                    // Tenta Gravar o Cabecalho do Pedido
                    try
                      // Verifica se o codigo de cliente já existe
                      SQLPesquisa.Close;
                      SQLPesquisa.SQL.Text:= 'Select * from CLIENTE where SUBSTRING (CLIEA13ID FROM 6 FOR 8) = "'+Cli_Codigo+'"';
                      SQLPesquisa.Open;
                      SQLPesquisa.First;

                      CodCliente := '0'; // indica Cliente Novo
                      if Copy(SQLPesquisa.FieldByName('CLIEA13ID').AsString,6,8) = Cli_Codigo then
                        CodCliente := SQLPesquisa.FieldByName('CLIEA13ID').AsString
                      Else
                      begin
                        SQLPesquisa.Close;
                        SQLPesquisa.SQL.Text:= 'Select CLIEA13ID, CLIEA10CODANT from CLIENTE where CLIEA10CODANT = "'+Cli_Codigo+'"';
                        SQLPesquisa.Open;

                        if SQLPesquisa.FieldByName('CLIEA10CODANT').AsString = Cli_Codigo then
                          CodCliente := SQLPesquisa.FieldByName('CLIEA13ID').AsString
                        else
                          Showmessage('Atenção.... Cliente não Localizado');

                      end;

                      ItemPedido := 0;
                      SQLPedidoVenda.Append;
                      SQLPedidoVendaCLIEA13ID.Value         := CodCliente;
                      SQLPedidoVendaEMPRICOD.Value          := EmpresaCorrente;
                      SQLPedidoVendaPDVDICOD.Value          := DM.ProximoCodigoPorEmpresa('PedidoVenda','PDVDICOD');
                      IDPedido                              := FormatFloat('001001000000',SQLPedidoVendaPDVDICOD.AsInteger);
                      IDPedido                              := IDPedido + DigitVerifEAN(IDPedido);
                      SQLPedidoVendaPDVDA13ID.Value         := IDPedido;
                      if dm.SQLConfigVenda.Active = False then
                        Dm.SQLConfigVenda.Open;
                      if TipoPedido = '00000020' then // operacao de estoque para venda
                        SQLPedidoVendaOPESICOD.Value  := DM.SQLConfigVendaOPESICODPED.Value
                      Else if TipoPedido = '00000019' then // operacao de estoque de troca de mercadoria
                        SQLPedidoVendaOPESICOD.Value  := DM.SQLConfigVendaOPESICODCANCTROCA.Value
                      Else if TipoPedido = '00000025' then // operacao de estoque de Bonificacao
                        SQLPedidoVendaOPESICOD.Value  := DM.SQLConfigVendaOPESICODVENDCONSIG.Value;

                      SQLPedidoVendaTRANICOD.value          := 2;  // GoldBrasil
                      SQLPedidoVendaROTAICOD.ASSTRING       := SQLLocate('CLIENTE','CLIEA13ID','ROTAICOD','"'+CodCliente+'"');
                      SQLPedidoVendaPDVDA15NROPEDPALM.Value := CodPedido; // Nro Pedido no Palm
                      SQLPedidoVendaPLRCICOD.AsString       := IDPrazo_tc09;
                      SQLPedidoVendaPDVDDEMISSAO.AsString   := DataVenda;
                      SQLPedidoVendaPDVDDENTREGA.AsDateTime := StrToDatetime(DataEntrega);

                      SQLPedidoVendaPDVDCTIPO.AsString      := 'P';

                    {  if TipoPedido = '00000002' then
                        SQLPedidoVendaSERIA5COD.AsString      := 'C1'
                      else
                        SQLPedidoVendaSERIA5COD.AsString      := '1';
                     }
                      if Trim(Rendimento) = 'C1' then
                        SQLPedidoVendaSERIA5COD.AsString      := 'C1'
                      else
                        SQLPedidoVendaSERIA5COD.AsString      := '1';

                      SQLPedidoVendaPDVDCSTATUS.AsString    := 'A';
                      SQLPedidoVendaPDVDN2TOTPROD.AsString  := ValorParcial;
                      SQLPedidoVendaPDVDN2TOTPED.AsString   := Valorfinal;
                      SQLPedidoVendaPDVDN2VLRDESC.Value     := StrToFloat(Desconto);
                      SQLPedidoVendaPDVDN2VLRFRETE.Value    := 0;
                      SQLPedidoVendaPDVDCTIPOFRETE.Value    := 'C'; // C=Emitente F=Destinatario
                      SQLPedidoVendaPDVDN2PERCFAT.Value     := 0;
                      SQLPedidoVendaPDVDN2PERCOMIS.Value    := 0;
                      SQLPedidoVendaPDVDN2VLRDESCPROM.Value := 0;
                      SQLPedidoVendaPDVDCIMPORTADO.AsString := 'N';
                      SQLPedidoVendaPDVDA30NROPEDCOMP.asstring := CodPedido;
                      SQLPedidoVendaVENDICOD.AsString       := Vendedor;

                      if ID_Documento = '00000001' then
                        ObServacao := Trim(Observacao) + #13+#10+ 'COBRANCA DIRETA '
                      Else if ID_Documento = '00000002' then
                        ObServacao := Trim(Observacao) + #13+#10+ 'COBRANCA POR CHEQUE'
                      Else if ID_Documento = '00000003' then
                        ObServacao := Trim(Observacao) + #13+#10+ 'COBRANCA POR BOLETO';

                      SQLPedidoVendaPDVDTOBS.AsString       := Observacao;
                      SQLPedidoVendaREGISTRO.Value          := Now;
                      SQLPedidoVendaPENDENTE.Value          := 'S';
                      SQLPedidoVendaROTAICOD.AsString       := dm.SQLLocate('CLIENTE','CLIEA13ID','ROTAICOD','"'+SQLPedidoVendaCLIEA13ID.AsString+'"');
                      SQLPedidoVenda.Post;

                      // Cria os dados do financeiro do pedido - as Parcelas


                      SQLPlano.Close;
                      SQLPlano.Prepare;
                      SqlPlano.ParamByName('PLRCICOD').asinteger := StrToInt(IDPrazo_tc09);
                      SQLPlano.Open;

                      SQLContasReceber.Close;
                      SQLContasReceber.Prepare;
                      SQLContasReceber.ParamByName('PDVDA13ID').asstring := IDPedido;
                      SQLContasReceber.Open;

                      // se o plano for de data fixa
                      if SQLPlano.FieldByName('PLRCCDFIX').Value = 'S' then
                      begin
                        nParcelas := SQLPlano.FieldByName('PLRCIDFIXNROPARC').asInteger;
                        DecodeDate(StrToDate(Copy(DataVenda,0,8)),varAno,varMes,VarDiaOficial);

                        // se o plano tem entrada
                        if SQLPlano.FieldByName('PLRCCDFIXENTR').Value = 'S' then
                          OffSet     := 1
                        else
                          OffSet := 0 ;


                        for I := 1-OffSet to nParcelas-OffSet Do
                        begin
                          SQLContasReceber.Append ;
                          SQLContasReceber.FieldByName('EMPRICOD').Value   := EmpresaCorrente;
                          SQLContasReceber.FieldByName('TERMICOD').Value   := TerminalCorrente ;
                          SQLContasReceber.FieldByName('CTRCINROPARC').Value := I ;

                          if (SQLPlano.FieldByName('PLRCCDFIXENTR').Value = 'S') and (I = 1-OffSet) Then
                            SQLContasReceber.FieldByName('CTRCDVENC').Value := Date
                          else
                          begin
                            VarDia := VarDiaOficial ;
                            Inc(VarMes) ;
                            If VarMes > 12 Then
                              Begin
                                VarMes := 1 ;
                                Inc(VarAno);
                              End ;
                            Erro := true ;

                            while Erro do
                              try
                                if SQLPlano.FieldByName('PLRCDFIXDVENC').AsString = '' then
                                  SQLContasReceber.FieldByName('DATAVENCTO').asString := Format('%.2d',[VarDia]) + '/' +
                                                                                         Format('%.2d',[VarMes]) + '/' +
                                                                                         Format('%.4d',[VarAno])
                                else
                                  begin
                                    if SQLPlano.FieldByName('PLRCDFIXDVENC').AsInteger > 31 then // indica dia da semana 32=segunda,37 terca ... 38 domingo
                                    Begin

                                      Vardia := (SQLPlano.FieldByName('PLRCDFIXDVENC').AsInteger - 31) - ( (DayOfWeek(Date)-1) - 7 );
                                      Vardia := VarDiaOficial + Vardia;
                                    end else
                                      VarDia := SQLPlano.FieldByName('PLRCDFIXDVENC').AsInteger;

                                    SQLContasReceber.FieldByName('CTRCDVENC').asString := Format('%.2d',[VarDia]) + '/' +
                                                                                           Format('%.2d',[VarMes]) + '/' +
                                                                                           Format('%.4d',[VarAno]);
                                  end;
                                Erro := False ;
                              except
                                Dec(VarDia) ;
                                Erro := true ;
                              end ;
                            SQLContasReceberCTRCDVENC.Value                := StrToDate(Format('%.2d',[VarDia]) + '/' +
                                                                            Format('%.2d',[VarMes]) + '/' +
                                                                            Format('%.4d',[VarAno]));
                          end;



                          SQLContasReceberCTRCCSTATUS.Value              := 'A';
                          SQLContasReceberCTRCDEMIS.Value                := StrToDateTime(DataVenda);
                          // arredonta a parcela
                          if Frac(SQLPedidoVendaPDVDN2TOTPROD.value / nParcelas) > 0 then
                            Arredondamento := Frac(SQLPedidoVendaPDVDN2TOTPROD.value / nParcelas) * nParcelas;
                          if I = 1 then
                            SQLContasReceberCTRCN2VLR.Value                := ((SQLPedidoVendaPDVDN2TOTPROD.value - Arredondamento) / nParcelas ) + Arredondamento
                          else
                            SQLContasReceberCTRCN2VLR.Value                := ((SQLPedidoVendaPDVDN2TOTPROD.value - Arredondamento) / nParcelas );

                          SQLContasReceberCTRCA5TIPOPADRAO.Value         := 'CRD';
                          SQLContasReceberCLIEA13ID.AsString             := CodCliente;
                          SQLContasReceberPDVDA13ID.AsString             := IDPedido;
                          Case StrToInt(ID_Documento) of
                          1: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto
                          2: SQLContasReceberTPDCICOD.AsVariant             := 2;//  Cheque
                          3: SQLContasReceberTPDCICOD.AsVariant             := 3;//  deposito
                          4: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e cheque
                          5: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e deposito
                          6: SQLContasReceberTPDCICOD.AsVariant             := 3;//  dinheiro
                          else
                              SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e cheque
                          end;
                          SQLContasReceberNUMEICOD.AsVariant                := 4;//  Boleto
                          SQLContasReceberPORTICOD.asVariant                := 1; // carteira
                          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString    := '';
                          SQLContasReceberCTRCCEMITIDOBOLETO.Value          := 'N';
                          // PLANO DE CONTAS Busca do Numerario
                          SQLContasReceberPLCTA15COD.AsString               := '';
                          SQLContasReceberPLCTA15CODDEBITO.AsString         := '';
                          SQLContasReceberCTRCA254HIST.AsString             := 'Pedido de Vendas - Palms';
                          SQLContasReceberTERMICOD.AsInteger                := TerminalCorrente;
                          SQLContasReceberPENDENTE.Value                    := 'S' ;
                          SQLContasReceberREGISTRO.Value                    := Now ;

                          SQLContasReceber.Post;

                        end ;
                      end else if SQLPlano.FieldByName('PLRCCDFIX').Value = 'N' then
                      begin

                        SQLPlanoParcela.Close;
                        SQLPlanoParcela.Prepare;
                        SqlPlanoParcela.ParamByName('PLRCICOD').asinteger := StrToInt(IDPrazo_tc09);
                        SqlPlanoParcela.Open;
                        SQLPlanoParcela.First;
                        nParcelas := 0;
                        While not SQLPlanoParcela.eof do
                        begin
                          inc(nParcelas);
                          SQLPlanoParcela.next;
                        end;
                        SQLPlanoParcela.First;

                        SQLPlanoParcela.First;
                        if SQLPlanoParcela.FieldByName('PLRPINRODIAS').Value = 0 then
                          OffSet := 1
                        else
                          OffSet := 0;

                        for I := 1-OffSet to nParcelas-OffSet Do
                        begin
                          SQLContasReceber.Append ;
                          SQLContasReceber.FieldByName('EMPRICOD').Value   := EmpresaCorrente;
                          SQLContasReceber.FieldByName('TERMICOD').Value   := TerminalCorrente ;
                          SQLContasReceber.FieldByName('CTRCINROPARC').Value := I ;

                          if (OffSet = 1) and (I = 1-OffSet) Then
                            SQLContasReceber.FieldByName('CTRCDVENC').Value := Date
                          else
                          begin
                            if (SQLPlanoParcela.FieldByName('PLRPINRODIAS').Value mod 30 = 0) and
                               (SQLPlanoParcela.FieldByName('PLRPINRODIAS').Value > 0) then
                              begin
                                SQLContasReceber.FieldByName('CTRCDVENC').Value := IncMonth(Date, SQLPlanoParcela.FieldByName('PLRPINRODIAS').Value / 30)
                              end
                            else
                              SQLContasReceber.FieldByName('CTRCDVENC').Value := Date + SQLPlanoParcela.FieldByName('PLRPINRODIAS').Value;
                          end;
                          SQLContasReceberCTRCCSTATUS.Value              := 'A';
                          SQLContasReceberCTRCDEMIS.Value                := StrToDateTime(DataVenda);

                          // arredonta a parcela
                          if Frac(SQLPedidoVendaPDVDN2TOTPROD.value / nParcelas) > 0 then
                            Arredondamento := Frac(SQLPedidoVendaPDVDN2TOTPROD.value / nParcelas) * nParcelas;
                          if I = 1-OffSet then
                            SQLContasReceberCTRCN2VLR.Value                := ((SQLPedidoVendaPDVDN2TOTPROD.value - Arredondamento) / nParcelas ) + Arredondamento
                          else
                            SQLContasReceberCTRCN2VLR.Value                := ((SQLPedidoVendaPDVDN2TOTPROD.value - Arredondamento) / nParcelas );

                          SQLContasReceberCTRCA5TIPOPADRAO.Value         := 'CRD';
                          SQLContasReceberCLIEA13ID.AsString             := CodCliente;
                          SQLContasReceberPDVDA13ID.AsString             := IDPedido;
                          Case StrToInt(ID_Documento) of
                          1: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto
                          2: SQLContasReceberTPDCICOD.AsVariant             := 2;//  Cheque
                          3: SQLContasReceberTPDCICOD.AsVariant             := 3;//  deposito
                          4: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e cheque
                          5: SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e deposito
                          6: SQLContasReceberTPDCICOD.AsVariant             := 3;//  dinheiro
                          else
                              SQLContasReceberTPDCICOD.AsVariant             := 1;//  boleto e cheque
                          end;
                          SQLContasReceberNUMEICOD.AsVariant                := 4;//  Boleto
                          SQLContasReceberPORTICOD.asVariant                := 1; // carteira
                          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString    := '';
                          SQLContasReceberCTRCCEMITIDOBOLETO.Value          := 'N';
                          // PLANO DE CONTAS Busca do Numerario
                          SQLContasReceberPLCTA15COD.AsString               := '';
                          SQLContasReceberPLCTA15CODDEBITO.AsString         := '';
                          SQLContasReceberCTRCA254HIST.AsString             := 'Pedido de Vendas - Palms';
                          SQLContasReceberTERMICOD.AsInteger                := TerminalCorrente;
                          SQLContasReceberPENDENTE.Value                    := 'S' ;
                          SQLContasReceberREGISTRO.Value                    := Now ;
                          SQLContasReceber.Post;

                        end ;
                      end;
                      HouveErro := False;
                    except on e:exception do
                    begin
                      HouveErro := True;
                      Memo.Lines.Add('Identificador TE01 -> Problemas ao Importar o Cabeçalho da Linha :'+ IntToStr(Linha)+ ' - '+e.message);
                      Application.ProcessMessages;
                    end;
                    end;
                  end;

                if Identificador = 'te02' then
                  begin
                    sCampo := '';
                    for i:= 1 to Length(Info) do
                      begin
                        Case i of
                           5   : begin sCampo := ''; end;
                           13  : begin ITPD_IDItem                   := sCampo; sCampo := '' ; end;
                           38  : begin ITPD_Referencia               := sCampo; sCampo := '' ; end;
                           46  : begin ITPD_IDLista                  := sCampo; sCampo := '' ; end;
                           49  : begin ITPD_Unidade                  := sCampo; sCampo := '' ; end;
                           57  : begin ITPD_Quantidade               := sCampo; sCampo := '' ; end;
                           65  : begin ITPD_VlrUnitario              := sCampo; sCampo := '' ; end;
                           73  : begin ITPD_VlrParcial               := sCampo; sCampo := '' ; end;
                           81  : begin ITPD_VlrDesconto              := sCampo; sCampo := '' ; end;
                           89  : begin ITPD_VlrFinal                 := sCampo; sCampo := '' ; end;
                           97  : begin ITPD_Peso                     := sCampo; sCampo := '' ; end;
                           105 : begin ITPD_Grupo                    := sCampo; sCampo := '' ; end;
                           305 : begin ITPD_Obs                      := sCampo; sCampo := '' ; end;
                           313 : begin ITPD_VlrUnitOriginal          := sCampo; sCampo := '' ; end;
                           321 : begin ITPD_variacao1                := sCampo; sCampo := '' ; end;
                           329 : begin ITPD_variacao2                := sCampo; sCampo := '' ; end;
                           337 : begin ITPD_variacao3                := sCampo; sCampo := '' ; end;
                           345 : begin ITPD_variacao4                := sCampo; sCampo := '' ; end;
                        End;
                        sCampo:= sCampo + Info[i];
                      end;
                    // Tenta gravar o item do pedido
                    try
                      ItemPedido := ItemPedido+1;
                      SQLPedidoVendaItem.Append;
                      SQLPedidoVendaItemPVITN3QUANTVEND.asFloat  := 0;
                      SQLPedidoVendaItemPVITN2VLRDESC.asFloat    := 0;
                      SQLPedidoVendaItemPVITN2PERCCOMIS.asFloat  := 0;
                      SQLPedidoVendaItemPDVDA13ID.AsString       := IDPedido;
                      SQLPedidoVendaItemPVITIITEM.AsString       := IntToStr(ItemPedido);
                      SQLPedidoVendaItemPRODICOD.AsString        := Trim(ITPD_Referencia);
                      SQLPedidoVendaItemPVITN3QUANT.AsString     := ITPD_Quantidade;
                      SQLPedidoVendaItemPVITN2VLRUNIT.AsString   := ITPD_VlrUnitario;
                      SQLPedidoVendaItemPVITN2PERCDESC.AsString  := ITPD_VlrDesconto;
                      SQLPedidoVendaItemPVITN3QUANTVEND.AsString := ITPD_Quantidade;
                      SQLPedidoVendaItemPVITN3TOTVENDITEM.value  := SQLPedidoVendaItemPVITN3QUANT.value * SQLPedidoVendaItemPVITN2VLRUNIT.value;
                      SQLPedidoVendaItemREGISTRO.Value           := Now;
                      SQLPedidoVendaItemPENDENTE.Value           := 'S';
                      SQLPedidoVendaItem.Post;
                      HouveErro := False;
                    except
                      HouveErro := True;
                      Memo.Lines.Add('Identificador TE02 -> Problemas ao Importar o Item da Linha: '+ IntToStr(Linha));
                      Application.ProcessMessages;
                    end;
                  end;
              end;

            end;
            ProgressBar.Position := ProgressBar.Position + 1;
            CloseFile(Texto);
            CopyFile(Pchar(EditDiretorio.Text+'\'+ListaArquivos.Items[Ix]),PChar('C:\BWCENTER\BACKUP\'+ListaArquivos.Items[Ix]),True)
        end; // for
      end; // if

  SQLPedidoVenda.Close;
  SQLPedidoVendaItem.Close;
  Application.ProcessMessages;
  if Memo.Lines.Text= '' then
  begin
    Memo.Lines.Add('Importação Finalizada com Sucesso');
     For Ix:=0 To ListaArquivos.Items.Count-1 Do
      If ListaArquivos.Checked[Ix] Then
         DeleteFile(EditDiretorio.Text+'\'+ListaArquivos.Items[Ix]);
    ListaArquivos.Items.Clear;
  end;

  BtExecutar.Enabled := True;
end;

procedure TFormTelaImportacaoBrasilMobile.BtnTodosClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If Not ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=True;
end;

procedure TFormTelaImportacaoBrasilMobile.BtnNenhumClick(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaArquivos.Items.Count-1 Do
    If ListaArquivos.Checked[I] Then
      ListaArquivos.Checked[I]:=False;
end;

procedure TFormTelaImportacaoBrasilMobile.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaArquivos(True);
end;

Procedure TFormTelaImportacaoBrasilMobile.CarregaArquivos(Status:Boolean);
var
  I:Integer;
  Empresa : string;
begin
  ListaLOG.Directory := EditDiretorio.Text;
  ListaLOG.Mask:='*.*';
  ListaLOG.Update;
  ListaArquivos.Items.Clear;
  for I:=0 To ListaLOG.Items.Count-1 do
    begin
      try
        Empresa := '1';
      finally
      end;
      if StrToInt(Empresa) = EmpresaCorrente then
        begin
          ListaArquivos.Items.Add(ListaLOG.Items[I]);
          //ListaArquivos.Checked[I]:=Status;
        end;
    end;
  BtnTodos.Click;
End;



procedure TFormTelaImportacaoBrasilMobile.Button1Click(Sender: TObject);
begin
  inherited;
  CarregaArquivos(True);
end;

procedure TFormTelaImportacaoBrasilMobile.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
end;

end.
