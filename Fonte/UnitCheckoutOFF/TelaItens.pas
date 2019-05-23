unit TelaItens;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBTables, Buttons,
  CurrEdit, DBCtrls, RXCtrls, RxQuery, Math, ShellApi, dbcgrids, IniFiles, Menus, dxGDIPlusClasses, Mask, ToolEdit, ;

const
  //AS VARIAVEIS ABAIXO FORAM CRIADAS PARA NÃO CORRER O RISCO DE DIGITAR ERRADO
  //E ALGUMA ROTINA NAO FUNCIONAR, EU SO DESCOBRIRIA AO USAR, ASSIM JA DESCUBRO
  //NA COMPILACAO
  AguardandoNovaVenda        = 'AguardandoNovaVenda';
  InformandoItens            = 'InformandoItens';
  CancelandoItem             = 'CancelandoItem';
  DescontoPercItem           = 'DescontoPercItem';
  DescontoVlrItem            = 'DescontoVlrItem';
  InformandoConvenio         = 'InformandoConvenio';
  InformandoOrdemCompra      = 'InformandoOrdemCompra';
  InformandoClienteConvenio  = 'InformandoClienteConvenio';
  InformandoItensTroca       = 'InformandoItensTroca';
  InformandoDescricaoTecnica = 'InformandoDescricaoTecnica';
  InformandoTotalVenda       = 'InformandoTotalVenda';
type
  TFormTelaItens = class(TForm)
    SQLProduto: TRxQuery;
    DSSQLIntensVenda: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLBalanca: TRxQuery;
    SQLBalancaCFBLICOD: TIntegerField;
    SQLBalancaCFBLA60DESCR: TStringField;
    SQLBalancaCFBLIDECIMAIS: TIntegerField;
    SQLBalancaCFBLCUSASEPAR: TStringField;
    SQLBalancaCFBLA1TIPOSEPAR: TStringField;
    SQLBalancaCFBLA254NOMEARQTXT: TStringField;
    SQLBalancaCFBLA10BALID: TStringField;
    SQLBalancaCFBLIBALIDPOS: TIntegerField;
    SQLBalancaCFBLIBALIDTAM: TIntegerField;
    SQLBalancaCFBLIBALCODPOS: TIntegerField;
    SQLBalancaCFBLIBALCODTAM: TIntegerField;
    SQLBalancaCFBLIVLRPOS: TIntegerField;
    SQLBalancaCFBLIVLRTAM: TIntegerField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15CODANT: TStringField;
    LblSubTotal: TRxLabel;
    DescricaoProduto: TRxLabel;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProvedorCartao: TRxQuery;
    DsSQLProvedorCartao: TDataSource;
    SQLProvedorCartaoPRCAA13ID: TStringField;
    SQLProvedorCartaoPRCAA60DESCR: TStringField;
    SQLProvedorCartaoPRCATPATHENVIA: TMemoField;
    SQLProvedorCartaoPRCATPATHRECEBE: TMemoField;
    SQLProvedorCartaoPRCAA60CARTAO: TStringField;
    SQLTEF: TQuery;
    SQLTEFTERMICOD: TIntegerField;
    SQLTEFNUMEICOD: TIntegerField;
    SQLTEFREDE: TStringField;
    SQLTEFNSU: TStringField;
    SQLTEFVALOR: TBCDField;
    SQLTEFTEXTO: TMemoField;
    SQLTEFFINALIZACAO: TStringField;
    SQLBalancaCFBLCTIPOPRECO: TStringField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    LblCLiente: TLabel;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    ItensVendaTemp: TTable;
    SQLSubTotal: TRxQuery;
    TblUnidade: TTable;
    TblUnidadeUNIDICOD: TIntegerField;
    TblUnidadeUNIDA5DESCR: TStringField;
    TblUnidadePENDENTE: TStringField;
    TblUnidadeREGISTRO: TDateTimeField;
    TblUnidadeUNIDA15DESCR: TStringField;
    SQLProdutoUNIDADE: TStringField;
    TblUnidadeUNIDCFRAC: TStringField;
    SQLProdutoFracionado: TStringField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDPREVCOMPRA: TDateTimeField;
    RxLabel2: TRxLabel;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
    SQLProdutoPRODCVDESTNEG: TStringField;
    PanelBombas: TPanel;
    ItensVendaTempTERMICOD: TIntegerField;
    ItensVendaTempNUMITEM: TIntegerField;
    ItensVendaTempCODIGO: TIntegerField;
    ItensVendaTempDESCRICAO: TStringField;
    ItensVendaTempQUANTIDADE: TBCDField;
    ItensVendaTempVLRUNITBRUT: TBCDField;
    ItensVendaTempVLRDESC: TBCDField;
    ItensVendaTempVLRTOTAL: TBCDField;
    ItensVendaTempICMSICOD: TIntegerField;
    ItensVendaTempVENDICOD: TIntegerField;
    ItensVendaTempTROCA: TStringField;
    ItensVendaTempDESCRICAOTEC: TStringField;
    ItensVendaTempVLRCUSTO: TBCDField;
    ItensVendaTempALIQUOTA: TBCDField;
    ItensVendaTempBASEICMS: TBCDField;
    ItensVendaTempVLRICMS: TBCDField;
    ItensVendaTempNROSERIE: TStringField;
    ItensVendaTempVLRQDEVERIAVENDER: TBCDField;
    ItensVendaTempCODBARRAS: TStringField;
    ItensVendaTempPRODA60DESCR: TStringField;
    ItensVendaTempREFERENCIA: TStringField;
    ItensVendaTempMARCA: TStringField;
    ItensVendaTempCOR: TStringField;
    ItensVendaTempBOMBICOD: TIntegerField;
    ItensVendaTempTAMANHO: TStringField;
    ItensVendaTempENCERRANTE: TIntegerField;
    ItensVendaTempCPITCSTATUS: TStringField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoPRODA2CSTPIS: TStringField;
    SQLProdutoPRODN2ALIQCOFINS: TBCDField;
    SQLProdutoPRODN2ALIQPIS: TBCDField;
    SQLProdutoPRODA2CSTCOFINS: TStringField;
    ItensVendaTempCANCELADO: TStringField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    LblInstrucoes: TRxLabel;
    CurSubTotal: TCurrencyEdit;
    EntradaDados: TEdit;
    EditQtde: TCurrencyEdit;
    ItensVendaTempAliquotaMedia: TFloatField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoNCMICOD: TIntegerField;
    ItensVendaTempValorImpostoMedio: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    GridItens: TDBGrid;
    imgFundoVenda: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure EntradaDadosEnter(Sender: TObject);
    procedure ItensVendaTempNewRecord(DataSet: TDataSet);
    procedure EditQtdeExit(Sender: TObject);
    procedure EditQtdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQtdeEnter(Sender: TObject);
    procedure GridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EntradaDadosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    WNumItem, ItemCancelado : integer ;
    FormatStrQuant, FormatStrVlrVenda,
    InfDesc,
    Tributo : string ;
    VerCaixa, TemProdutoSemSubsTrib, TemProdutoComSubsTrib, AplicarDescontoItem : boolean ;
    Tecla : Word;

    Peso          : Double;
    PesoP05A      : array[0..5]of char;
    PesoP05B      : array[0..7]of char;
    Toledo_Dir, PesoSTR : String;
    Toledo_Porta, Toledo_Baud, Toledo_Paridade, Toledo_DataBits, Toledo_OpcoesDiponibilizar, Toledo_TipoLeitura : Integer;

    Urano_Modelo, Urano_Operacao : Integer;
    Urano_Porta : string;
    Urano_PesoLido : TextFile;
    RetornoCartao : TInfoRetorno;
    DadosImpressora : TInfoImpressao;

    procedure CalculaTotal ;
    procedure CapturaCodigosIniciais ;
    procedure InformaDescricaoTecnicaProduto;
    function VerificaCartaoCredito : Boolean;
  public
    { Public declarations }
    CodICMS,
    Qtd,
    Unidade,
    EstadoPDVChk,
    EstadoPDVChkAnt,
    QuantItemProv,
    RetornoCampoUsuario,
    ValorTotItem,
    NroSerieProduto, TipoDesc, ProvedorCartao, NomeNumerarioCartao, Msg, LbinstrucoesOld : string ;
    TrocandoItens, SolicitarPreco, SolicitarPrecoQDeveriaSerVendido, GPAtivo : boolean ;
    ValorItem, ValorItemQDeveriaSerVendido, ValorCustoTotal, ValorLucroTotal : Currency;
    DescItemPerc,
    DescItemVlr,DescItemVlrUnitario,
    TotalDescItens,
    ReducaoICMS,
    QuantItem,QuantProx, SaldoEstoqueAtual, xNewQtd, xTotal, xCalculado : Double;
    VendPreVenda  : integer;
    BlobStream : TStream;
    JPEGImage  : TJPEGImage;
    Arquivo : TextFile;
    procedure PreparaEstadoBalcao(Estado : string) ;
    procedure CancelarVenda ;
    procedure LimparVariaveis ;
    procedure LimparTabTempItens ;
  end;

var
  FormTelaItens: TFormTelaItens;
  IniFile : TIniFile;

implementation

{$R *.DFM}

procedure TFormTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if EstadoPDVChk <> AguardandoNovaVenda then
    begin
      InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
      Action := caNone ;
      SQLItensVendaTemp.Open ;
      Exit ;
    end ;

  SQLItensVendaTemp.Close ;

  Application.ProcessMessages;

  Action := cafree ;

{  if (dm.SQLTerminalAtivoTERMCTIPO.AsString = 'C') and (dm.SQLTerminalAtivoTERMCSTATUSCAIXA.AsString = 'F') then
    if Pergunta('NAO','*** DESEJA DESLIGAR O COMPUTADOR? ***') then
      DesligarWindows ;
  if (dm.SQLTerminalAtivoTERMCTIPO.AsString = 'P') then
    if Pergunta('NAO','*** DESEJA DESLIGAR O COMPUTADOR? ***') then
      DesligarWindows ;}

  Application.Terminate;
end;

procedure TFormTelaItens.FormCreate(Sender: TObject);
var
  I, Tabela, TentaAbrirTabelaVendaTemp : integer;
  Info : TInfoRetorno;
  ValorTotalCartaoSTR, NomeRede, NroTransacao, Finalizacao : string;
  ValorTotalCartaoFloat : Double;
  IniFile: TiniFile;
begin
  IniFile := TIniFile.Create ('C:\Unit\Gestao\Parceiro.INI');
  PDV_OffLine      := IniFile.ReadString('IB_SOFTWARE','PDV_OffLine','Nao');
  SendDirectory    := IniFile.ReadString('IB_SOFTWARE','Tef_Dial_SendDirectory','');
  ReceiveDirectory := IniFile.ReadString('IB_SOFTWARE','Tef_Dial_ReceiveDirectory','');
  Enter_Vazio := IniFile.ReadString('IB_SOFTWARE','ENTER','S');
  GravarCupomCancelado    := IniFile.ReadString('IB_SOFTWARE','GravarCupomCancelado','S');
  GravarDisplaySequencial := IniFile.ReadString('IB_SOFTWARE','GravarDisplaySequencial','N');
  NotaGaucha := IniFile.ReadString('IB_SOFTWARE','NotaGaucha','N');

  IniFile.Free;

  if not FileExists('Temp\ItensVendaTemp.db') then
    ItensVendaTemp.CreateTable ;

  try
    ItensVendaTemp.Close;
    ItensVendaTemp.Open;
    Application.ProcessMessages;
  except
    ItensVendaTemp.Close;
    ItensVendaTemp.DeleteTable;
    ShowMessage('Erro ao abrir tabela Temporaria de Itens, Tente Novamente!');
    Application.Terminate;
  end;

  FormTelaItens.Caption := '';

  DescricaoProduto.Caption := '';

  EstadoPDVChk := AguardandoNovaVenda ;
  PreparaEstadoBalcao(EstadoPDVChk) ;

  if (DM.SQLterminalativoTERMIQTDEPADRAO.Value > 0) then
    EditQtde.Text := DM.SQLterminalativoTERMIQTDEPADRAO.AsString
  else
    EditQtde.Value := 0;

  ItensVendaTempQUANTIDADE.DisplayFormat  := '##0.000';
  ItensVendaTempVLRUNITBRUT.DisplayFormat := '##0.00';

  // Pega Configs do arquivo P05.INI
  if FileExists('BalancaCheckoutToledo.txt') then
    begin
      IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
      try
        Toledo_Porta                   := IniFile.ReadInteger(cSessaoConf,cPorta,0);
        Toledo_Baud                    := IniFile.ReadInteger(cSessaoConf,cBaudRate,0);
        Toledo_Paridade                := IniFile.ReadInteger(cSessaoConf,cParidade,2);
        Toledo_DataBits                := IniFile.ReadInteger(cSessaoConf,cDataBits,0);
        Toledo_OpcoesDiponibilizar     := IniFile.ReadInteger(cSessaoConf,cDiponibi,0);
        Toledo_TipoLeitura             := IniFile.ReadInteger(cSessaoConf,cTipoLeitura,0);
        Toledo_Dir                     := IniFile.ReadString(cSessaoConf,cDirPESO,ExtractFilePath(ParamStr(0)));
      finally
        IniFile.Free;
      end;
    end;
  // Pega Configs do arquivo LerPesoUrano.INI
  if FileExists('BalancaCheckoutUrano.txt') then
    begin
      IniFile:=TIniFile.Create('C:\Unit\Gestao\LePesoUrano.INI');
      try
        Urano_Porta                   := IniFile.ReadString('Configuracao','IPortaSerial','COM4');
        Urano_Modelo                  := IniFile.ReadInteger('Configuracao','IModeloBalanca',0);
        Urano_Operacao                := IniFile.ReadInteger('Configuracao','IModoOperacao',0);
      finally
        IniFile.Free;
      end;
    end;
end;

procedure TFormTelaItens.EntradaDadosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
var
  RetornoUser : TInfoRetornoUser;
begin
end;

procedure TFormTelaItens.CancelarVenda ;
begin
end ;

procedure TFormTelaItens.CalculaTotal ;
var
  ValorTemp : Double;
begin
  CurSubTotal.Value := 0 ;
  ValorTemp         := 0 ;
  VlrBonusTroca     := 0 ;

  SQLSubTotal.Close;
  SQLSubTotal.SQL.Clear;
  SQLSubTotal.SQL.Add('Select Sum(VLRTOTAL) as SubTotal from ItensVendaTemp where (TROCA <> "S" or TROCA is null) and CANCELADO <> "S"');
  SQLSubTotal.Open;
  if SQLSubTotal.FieldByName('SubTotal').Value > 0 then
    ValorTemp := SQLSubTotal.FieldByName('SubTotal').Value;
  CurSubTotal.Value := ValorTemp;
  CurSubTotal.Update;

  Application.ProcessMessages;
end ;

procedure TFormTelaItens.EntradaDadosEnter(Sender: TObject);
begin
  EntradaDados.SelectAll;
end;

procedure TFormTelaItens.ItensVendaTempNewRecord(DataSet: TDataSet);
begin
  SQLItensVendaTempTERMICOD.Value := TerminalAtual;
end;

procedure TFormTelaItens.LimparTabTempItens;
begin
  ItensVendaTemp.Close ;
  try
    ItensVendaTemp.DeleteTable ;
    ItensVendaTemp.CreateTable ;
  except
    ItensVendaTemp.CreateTable ;
  end ;
  ItensVendaTemp.Open ;
end;

procedure TFormTelaItens.EditQtdeExit(Sender: TObject);
begin
  if (EditQtde.Value < 0) then
    begin
      InformaG('A Quantidade nao pode ser menor que ZERO!');
      EditQtde.SetFocus;
    end;

  if (EditQtde.Value = 0) or (EditQtde.Value = Null) then
    begin
      ValorItem := 0;
      EntradaDados.SetFocus;
      PreparaEstadoBalcao(InformandoItens);
    end
  else
    begin
      LblInstrucoes.Caption := LbinstrucoesOld;
      LblInstrucoes.Update;
    end;
  QuantProx := EditQtde.Value;
end;

procedure TFormTelaItens.EditQtdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      if (EditQtde.Value > 0) then
        begin
          if (EntradaDados.Text <> '') then
            begin
              EntradaDados.SetFocus;
              FormTelaItens.EstadoPDVChk := 'InformandoItens';
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end
          else
            EntradaDados.SetFocus;
        end
      else
        EntradaDados.SetFocus;
    end;
  if Key = VK_Escape then
    EntradaDados.SetFocus;
end;

procedure TFormTelaItens.EditQtdeEnter(Sender: TObject);
var
  RetornoUser : TInfoRetornoUser;
begin
  LbinstrucoesOld := LblInstrucoes.Caption;
  if (EstadoPDVChk <> InformandoItens) and (EstadoPDVChk <> InformandoItensTroca) then
    begin
      InformaG('A alteração da quantidade do item só pode aplicada quando o sistema está solicitando itens!') ;
      EntradaDados.SetFocus;
      Exit;
    end;

  if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
    if DM.SQLUsuario.FieldByName('USUACTROCAQTDE').AsString <> 'S' then
      begin
        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACTROCAQTDE',RetornoUser);
        if RetornoCampoUsuario <> 'S' then
          begin
            InformaG('Usuario não tem permissão para alterar a quantidade!') ;
            EntradaDados.SetFocus;
            Exit;
          end;
      end;

  LblInstrucoes.Caption := 'Informe a Quantidade...';
  LblInstrucoes.Refresh;
end;

procedure TFormTelaItens.GridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If SQLItensVendaTempTROCA.Value = 'S' Then
    begin
      GridItens.Canvas.Font.Color:=clGreen;
      GridItens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  If SQLItensVendaTempCANCELADO.Value = 'S' Then
    begin
      GridItens.Canvas.Font.Color:=clRed;
      GridItens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TFormTelaItens.EntradaDadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 107 then // sinal de + para fazer igual ao CTRL+Q
   begin
     if (EstadoPDVChk = InformandoItens) then
     begin
       Key:= 0;
       EntradaDados.SelText := '';
       Entradadados.SetSelTextBuf('');
       if EstadoPDVChk <> InformandoItens then
       begin
         InformaG('A alteração da quantidade do item só pode aplicada quando o sistema está solicitando itens!') ;
         EntradaDados.SelectAll ;
         exit ;
       end ;
       EntradaDados.Clear;
       EditQtde.SetFocus;
     end;
   end;
end;

procedure TFormTelaItens.BtnF1Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F1, [ssAlt]);
end;

procedure TFormTelaItens.BtnF2Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  If EstadoPDVChk = 'AguardandoNovaVenda' Then
    FormKeyDown(Sender, F2, [ssAlt]);
end;

procedure TFormTelaItens.BtnF3Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F3, [ssAlt]);
end;

procedure TFormTelaItens.BtnF4Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F4, [ssShift]);
end;

procedure TFormTelaItens.BtnF8Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  if BtnF8.Caption = 'F5 Fecha Orç.' then
    begin
      E_Orcamento := true ;
      FormKeyDown(Sender, F3, [ssAlt]);
    end
  else
    FormKeyDown(Sender, F8, [ssAlt]);
end;

procedure TFormTelaItens.BtnF11Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F11, [ssAlt]);
end;

procedure TFormTelaItens.BtnF12Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F12, [ssAlt]);
end;

procedure TFormTelaItens.BtnSairClick(Sender: TObject);
begin
  EntradaDados.SetFocus;
  if EstadoPDVChk <> AguardandoNovaVenda then
  begin
    InformaG('Só é possível sair do ' + Application.Title + ' enquanto está aguardando nova venda!') ;
    EntradaDados.SelectAll ;
    Exit ;
  end ;

  Close ;
end;

procedure TFormtelaItens.vercontas;
var totalcliente, TotParcRec, Saldo: extended;
  Vencimento: TDatetime;
begin
          TotalCliente  := 0;

          DM.MemCtRecParc.Close;
          try
            DM.MemCtRecParc.DeleteTable;
          except
            Application.ProcessMessages;
          end;

          DM.MemCtRecParc.CreateTable;
          DM.MemCtRecParc.AddIndex('RecTemp','CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC', [ixPrimary]);
          DM.MemCtRecParc.IndexFieldNames :=  'CTRCDVENC;CUPODEMIS;CUPOA13ID;CTRCA13ID;CTRCINROPARC';
          DM.MemCtRecParc.Open;

          SQLContasReceber.Close;
          SQLContasReceber.MacroByName('MFiltro').AsString := ' CLIEA13ID = "' + ClienteVenda + '" and CTRCCSTATUS <> "C"' +
                                                              ' AND CTRCN2VLR > CTRCN2TOTREC';
          SQLContasReceber.Open;

          //PROCURAR NO CONTASRECEBER SE EXISTEM ALGUM EM ABERTO
          SQLContasReceber.First;
          TotParcRec := 0;
          while not SQLContasReceber.EOF do
          begin
            TotParcRec := TotParcRec + ( SQLContasReceberCTRCN2VLR.Value -
                                         SQLContasReceberCTRCN2TOTREC.Value );
            SQLContasReceber.Next;
          end;
          if TotParcRec > 0 then
          begin
            SQLContasReceber.First;
            while not SQLContasReceber.EOF do
            begin
              Saldo := SQLContasReceberCTRCN2VLR.Value - SQLContasReceberCTRCN2TOTREC.Value;
              if Saldo > 0 then
                begin
                  DM.MemCtRecParc.Append ;
                  if SQLContasReceberCUPOA13ID.AsString <> '' then
                    DM.MemCtRecParcCUPOA13ID.Value      := SQLContasReceberCUPOA13ID.Value
                  else
                    DM.MemCtRecParcCUPOA13ID.Value      := 'Parc. Avulsa';

                  DM.MemCtRecParcCUPODEMIS.Value      := SQLContasReceberCTRCDEMIS.Value ;
                  DM.MemCtRecParcCLIEA13ID.Value      := SQLContasReceberCLIEA13ID.Value ;
                  DM.MemCtRecParcCTRCA13ID.Value      := SQLContasReceberCTRCA13ID.Value;
                  DM.MemCtRecParcCTRCINROPARC.Value   := SQLContasReceberCTRCINROPARC.Value;
                  DM.MemCtRecParcCTRCDVENC.Value      := SQLContasReceberCTRCDVENC.Value;
                  DM.MemCtRecParcCTRCDULTREC.AsDateTime := SQLContasReceberCTRCDULTREC.AsDateTime;

                  if SQLContasReceberCTRCDULTREC.AsVariant <> Null then
                    Vencimento := SQLContasReceberCTRCDULTREC.AsDateTime
                  else
                    Vencimento := SQLContasReceberCTRCDVENC.AsDateTime;

                  //Atualiza Configurações
                  DM.SQLConfigCrediario.Close;
                  DM.SQLConfigCrediario.Open;
                  ///////////////////////////

                  if SQLContasReceberCTRCN2TXJURO.Value > 0 then
                    DM.MemCtRecParcCTRCN2VLRJURO.Value := CalculaJuroMultaDesc(Saldo,
                                                                               SQLContasReceberCTRCN2TXJURO.Value,
                                                                               SQLContasReceberCTRCDVENC.Value, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                                                               Date,
                                                                               0,
                                                                               DM.SQLConfigCrediarioCFCRINRODIASTOLJUR.Value,
                                                                               'Juro',
                                                                               SQLContasReceberCUPOA13ID.AsString,
                                                                               SQLContasReceberCTRCINROPARC.AsString)
                  else
                    DM.MemCtRecParcCTRCN2VLRJURO.Value := 0 ;

                  if DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value > 0 then
                    DM.MemCtRecParcCTRCN2VLRTXCOBR.Value := CalculaJuroMultaDesc(Saldo,
                                                                                   DM.SQLConfigCrediarioCFCRN2PERCTAXACOBR.Value,
                                                                                   Vencimento,
                                                                                   Date,
                                                                                   0,
                                                                                   0,
                                                                                   'TaxaCobranca',
                                                                                   SQLContasReceberCUPOA13ID.AsString,
                                                                                   SQLContasReceberCTRCINROPARC.AsString) ;


                  if (SQLContasReceberCTRCN2TXMULTA.Value > 0) then
                    DM.MemCtRecParcCTRCN2VLRMULTA.Value := CalculaJuroMultaDesc(Saldo,
                                                                                   SQLContasReceberCTRCN2TXMULTA.Value,
                                                                                   Vencimento,
                                                                                   Date,
                                                                                   0,
                                                                                   DM.SQLConfigCrediarioCFCRINRODIASTOLMUL.Value,
                                                                                   'Multa',
                                                                                   SQLContasReceberCUPOA13ID.AsString,
                                                                                   SQLContasReceberCTRCINROPARC.AsString)
                   else
                     DM.MemCtRecParcCTRCN2VLRMULTA.Value := 0 ;

                  if DM.SQLConfigCrediarioCFCRN2PERCADIANT.Value > 0 then
                    DM.MemCtRecParcCTRCN2VLRDESC.Value := CalculaJuroMultaDesc(Saldo,
                                                                                  DM.SQLConfigCrediarioCFCRN2PERCADIANT.Value,
                                                                                  Vencimento,
                                                                                  Date,
                                                                                  0,
                                                                                  DM.SQLConfigCrediarioCFCRINRODIASADIANT.Value,
                                                                                  'Desconto',
                                                                                  SQLContasReceberCUPOA13ID.AsString,
                                                                                  SQLContasReceberCTRCINROPARC.AsString)
                  else
                    DM.MemCtRecParcCTRCN2VLRDESC.Value := 0 ;

                  DM.MemCtRecParcCTRCN2VLR.Value      := (SQLContasReceberCTRCN2VLR.Value +
                                                           DM.MemCtRecParcCTRCN2VLRJURO.Value +
                                                           DM.MemCtRecParcCTRCN2VLRMULTA.Value +
                                                           DM.MemCtRecParcCTRCN2VLRTXCOBR.Value) -
                                                           DM.MemCtRecParcCTRCN2VLRDESC.Value -
                                                           SQLContasReceberCTRCN2TOTREC.AsFloat;

                  DM.MemCtRecParcValorOrigem.Value    := Saldo;
                  DM.MemCtRecParc.Post ;
                end;
              TotalCliente := TotalCliente + DM.MemCtRecParcCTRCN2VLR.Value;
              SQLContasReceber.Next ;
            end;
          end;
          DM.MemCtRecParc.First;
          Screen.Cursor := crDefault ;
    if not DM.MemCtRecParc.EOF then
    begin
      Application.CreateForm(TFormTelaConsultaContratosCliente, FormTelaConsultaContratosCliente);
      FormTelaConsultaContratosCliente.panel1.Visible := false;
      FormTelaConsultaContratosCliente.ShowModal;
   end;
end;

Function TFormTelaItens.GravaCupom:Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual)+' And EMPRICOD = ' + EmpresaPadrao;
  DM.SQLCupom.Open;

  DM.SQLCupom.Append;

  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;

  if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
    begin
      DM.SQLCupomOPESICOD.Value        := DM.SQLConfigVendaOPESICODCUPOM.Value;
      if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVendaOPESICODCUPOM.AsString],1) then
        begin
          if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
            DM.SQLCupomPLCTA15CODDEB.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
          if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
            DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
        end;
    end;

  DM.SQLCupomEMPRICOD.AsString          := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value             := TerminalAtual;
  DM.SQLCupomCUPODEMIS.Value            := Date;
  DM.SQLCupomUSUAICODVENDA.Value        := UsuarioCorrente;
  DM.SQLCupomUSUAICODCANC.Value         := CodUsuarioAutorizouOperacao;
  DM.SQLCupomCUPOCSTATUS.Value          := 'C';
  DM.SQLCupomCUPON2TOTITENS.Value       := CurSubTotal.Value;
  DM.SQLCupomCUPON2TOTITENSRET.Value    := 0;
  DM.SQLCupomCUPON2ACRESC.Value         := 0;
  DM.SQLCupomCUPON2DESC.Value           := 0;
  DM.SQLCupomCUPON2DESCITENS.Value      := 0;
  DM.SQLCupomCUPOINRO.AsString          := NroCupomFiscal ;
  DM.SQLCupomCUPOCTIPOPADRAO.Value      := 'VISTA';
  DM.SQLCupomCUPODQUITACAO.AsDateTime   := Date;
  DM.SQLCupomCUPON2CONVTAXA.Value       := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value    := 0 ;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value    := 0 ;
  DM.SQLCupomCUPON2JUROATRAS.Value      := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value     := 0 ;
  DM.SQLCupomCUPON3CREDTAXA.Value       := 0 ;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.Value             := dm.SQLTerminalAtivoVENDICOD.Value;
  DM.SQLCupomCLIEA13ID.Value            := dm.SQLTerminalAtivoCLIEA13ID.Value;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomCLIENTENOME.Value          := 'Consumidor Final' ;
  DM.SQLCupomPENDENTE.Value             := 'S' ;
  DM.SQLCupomREGISTRO.Value             := Now ;
  try
    DM.SQLCupom.Post;
    GravaCupom        := True;
    Application.ProcessMessages;
  except
    DM.SQLCupom.Cancel;
    GravaCupom        := False;
    Application.ProcessMessages;
  end;
end;

Function TFormTelaItens.GravaCupomItem:Boolean;
begin
  DM.SQLCupomItem.Close;
  DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
  DM.SQLCupomItem.Open;
  SQLItensVendaTemp.First;
  while not SQLItensVendaTemp.Eof do
    begin
      DM.SQLCupomItem.Append;
      DM.SQLCupomItemEMPRICOD.Value                := EmpresaCorrente;
      DM.SQLCupomItemCUPOA13ID.Value               := dm.SQLCupomCUPOA13ID.Value;
      DM.SQLCupomItemCPITIPOS.Value                := SQLItensVendaTempNUMITEM.Value;
      DM.SQLCupomItemPRODICOD.AsString             := SQLItensVendaTempCODIGO.AsString;
      DM.SQLCupomItemCPITCSTATUS.AsString          := 'C';
      DM.SQLCupomItemCPITN3QTD.Value               := SQLItensVendaTempQUANTIDADE.Value;
      DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
      DM.SQLCupomItemCPITN3VLRUNIT.Value           := SQLItensVendaTempVLRUNITBRUT.Value;
      DM.SQLCupomItemCPITN3VLRCUSTUNIT.Asstring    := SQLItensVendaTempVLRCUSTO.AsString;
      DM.SQLCupomItemCPITN2DESC.Value              := 0; // Foi retirado o desconto para gravar o valor real da venda
      DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
      try
        DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := SQLItensVendaTempVLRUNITBRUT.Value - SQLItensVendaTempVLRCUSTO.Value;
      except
        DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := 0;
      end;
      DM.SQLCupomItemVENDICOD.Value                := dm.SQLTerminalAtivoVENDICOD.Value;
      DM.SQLCupomItemENCERRANTE.AsString           := '';
      DM.SQLCupomItemCOITN2ICMSALIQ.Value          := 0;
      DM.SQLCupomItemCPITN2BASEICMS.Value          := 0;
      DM.SQLCupomItemCPITN2VLRICMS.Value           := 0;
      DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
      DM.SQLCupomItemPENDENTE.Value                := 'S';
      DM.SQLCupomItemREGISTRO.Value                := now;
      try
        DM.SQLCupomItem.Post;
        GravaCupomItem    := True;
        Application.ProcessMessages;
      except
        DM.SQLCupomItem.Cancel;
        GravaCupomItem    := False;
        Application.ProcessMessages;
      end;

      SQLItensVendaTemp.Next;
    end;
end;


procedure TFormTelaItens.BtF7Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F7, [ssAlt]);
end;

procedure TFormTelaItens.Btn7Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F7, [ssAlt]);
end;

function TFormTelaItens.VerificaCartaoCredito : Boolean;
begin
  //********************************************************************//
  //                TRANSAÇÃO COM CARTÕES DE CRÉDITO                    //
  //********************************************************************//
  if ((Trim(ProvedorCartao) = 'VISANET') or
      (Trim(ProvedorCartao) = 'REDECARD') or
      (Trim(ProvedorCartao) = 'AMEX') or
      (Trim(ProvedorCartao) = 'BANRISUL')or
      (Trim(ProvedorCartao) = 'TECBAN')) then
    begin
      if FormTelaItens.GPAtivo then
        begin
          Application.Minimize;
          if (Copy(TipoPadrao,1,3) = 'CRT') then
            RetornoCartao := LiberaCartao('CRT',NroCupomFiscal,dm.TotalCartao);
          Result := RetornoCartao.TransacaoAutorizada;
          if not Result then
            begin
              Application.Restore;
              if RetornoCartao.RetornoOperador <> '' then
                Application.MessageBox(PChar(RetornoCartao.RetornoOperador + #13 + #13),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
            end;
        end
      else
        begin
          Application.MessageBox(PChar('O Gerenciador Padrão não está ativo!' + #13 +'Impossível estabelecer conexão para efetuar a venda!'),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
          DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
        end;
    end;
  //********************************************************************//
  //          TÉRMINO DA TRANSAÇÃO COM CARTÕES DE CRÉDITO               //
  //********************************************************************//
end;


end.
