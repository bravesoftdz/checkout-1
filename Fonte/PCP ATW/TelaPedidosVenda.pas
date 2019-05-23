unit TelaPedidosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, ConerBtn,
  Mask, ToolEdit, RxLookup, DB, DBTables, RxQuery, Grids, DBGrids, ComCtrls,
  RxRichEd, StrUtils, Menus, RXCtrls;

type
  TFormTelaPedidosVenda = class(TFormTelaGeralTEMPLATE)
    pnDetalhe: TPanel;
    Label1: TLabel;
    DBGridLista: TDBGrid;
    pnLateral: TPanel;
    SQLPedidos: TRxQuery;
    SQLPedidosPDVDA13ID: TStringField;
    SQLPedidosCLIEA13ID: TStringField;
    SQLPedidosPDVDDEMISSAO: TDateTimeField;
    gboFiltros: TGroupBox;
    dblCliente: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AteEmissao: TDateEdit;
    DStblTempPedidos: TDataSource;
    tblTempPedidos: TTable;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCidade: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    chkDatasEmissao: TCheckBox;
    Splitter: TSplitter;
    DeEmissao: TDateEdit;
    DBGridItens: TDBGrid;
    Splitter1: TSplitter;
    SQLProdutosPedido: TRxQuery;
    dsSQLProdutosPedido: TDataSource;
    SQLPedidosPDVDN2TOTPROD: TBCDField;
    SQLPedidosPDVDDENTREGA: TDateTimeField;
    SQLPedidosUSUAA60LOGIN: TStringField;
    SQLProdutosPedidoPRODICOD: TIntegerField;
    SQLProdutosPedidoPRODA60DESCR: TStringField;
    SQLProdutosPedidoPVITN3QUANT: TBCDField;
    SQLProdutosPedidoPVITN2VLRUNIT: TBCDField;
    SQLPedidosCLIEA60RAZAOSOC: TStringField;
    tblTempPedidosPDVDA13ID: TStringField;
    tblTempPedidosCLIEA13ID: TStringField;
    tblTempPedidosCLIEA60RAZAOSOC: TStringField;
    tblTempPedidosPDVDDEMISSAO: TDateTimeField;
    tblTempPedidosPDVDN2TOTPROD: TBCDField;
    tblTempPedidosPDVDDENTREGA: TDateTimeField;
    tblTempPedidosUSUAA60LOGIN: TStringField;
    cboOrder: TComboBox;
    tblTempPedidoschkInclui: TBooleanField;
    Label6: TLabel;
    DeEntrega: TDateEdit;
    Label7: TLabel;
    AteEntrega: TDateEdit;
    chkDatasEntrega: TCheckBox;
    Label8: TLabel;
    rchDetalhe: TRxRichEdit;
    SQLFichaTecResumida: TRxQuery;
    SQLFichaTecResumidaPRODUTORAIZ: TIntegerField;
    SQLFichaTecResumidaPRODUTORAIZNOME: TStringField;
    SQLFichaTecResumidaPRODUTOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOSEMIACABADO: TIntegerField;
    SQLFichaTecResumidaINSUMOSEMIACABADONOME: TStringField;
    SQLFichaTecResumidaINSUMOSEMIACABADOTIPO: TStringField;
    SQLFichaTecResumidaINSUMOSEMIACABADOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOSEMIACABADOTOTAL: TFloatField;
    SQLFichaTecResumidaINSUMO: TIntegerField;
    SQLFichaTecResumidaINSUMONOME: TStringField;
    SQLFichaTecResumidaINSUMOTIPO: TStringField;
    SQLFichaTecResumidaINSUMOQTDE: TBCDField;
    SQLFichaTecResumidaINSUMOTOTAL: TFloatField;
    tblTotalProdutodTemp: TTable;
    tblTotalProdutodTempPRODUTORAIZ: TIntegerField;
    tblTotalProdutodTempPRODUTORAIZNOME: TStringField;
    tblTotalProdutodTempPRODUTOQTDE: TBCDField;
    tblTotalProdutodTempINSUMOSEMIACABADO: TIntegerField;
    tblTotalProdutodTempINSUMOSEMIACABADONOME: TStringField;
    tblTotalProdutodTempINSUMOSEMIACABADOTIPO: TStringField;
    tblTotalProdutodTempINSUMOSEMIACABADOQTDE: TBCDField;
    tblTotalProdutodTempINSUMOSEMIACABADOTOTAL: TFloatField;
    tblTotalProdutodTempINSUMO: TIntegerField;
    tblTotalProdutodTempINSUMONOME: TStringField;
    tblTotalProdutodTempINSUMOTIPO: TStringField;
    tblTotalProdutodTempINSUMOQTDE: TBCDField;
    tblTotalProdutodTempINSUMOTOTAL: TFloatField;
    SQLResumo: TRxQuery;
    tblProdutoTotais: TTable;
    tblProdutoTotaisSemiAcabadoCod: TIntegerField;
    tblProdutoTotaisSemiAcabadoNome: TStringField;
    tblProdutoTotaisSemiAcabadoQtde: TFloatField;
    tblProdutoTotaisSemiAcabadoUnidade: TStringField;
    tblProdutoTotaisSemiAcabadoQdteTotal: TFloatField;
    tblProdutoTotaisSemiAcabadoEstoque: TFloatField;
    tblProdutoTotaisInsumoCod: TIntegerField;
    tblProdutoTotaisInsumoNome: TStringField;
    tblProdutoTotaisInsumoQtde: TFloatField;
    tblProdutoTotaisInsumoQdteTotal: TFloatField;
    tblProdutoTotaisInsumoEstoque: TFloatField;
    tblProdutoTotaisInsumoUnidade: TStringField;
    BatchMove: TBatchMove;
    RichTemp: TRxRichEdit;
    mmTEMP: TMemo;
    chkOrdemCrescente: TCheckBox;
    Label5: TLabel;
    chkTodosPedidos: TCheckBox;
    SQLProdutosPedidoProdutoLookup: TStringField;
    SQLLote: TRxQuery;
    SQLTemp: TRxQuery;
    btGerarOProducao: TRxSpeedButton;
    PopupGerar: TPopupMenu;
    mnOrdemProducao: TMenuItem;
    N1: TMenuItem;
    mnOrdemdeCompra: TMenuItem;
    btAtualizar: TRxSpeedButton;
    SQLLoteEMPRICOD: TIntegerField;
    SQLLotePRODICOD: TIntegerField;
    SQLLotePRLTA13ID: TStringField;
    SQLLotePRLTICOD: TIntegerField;
    SQLLotePRLTA60DESCR: TStringField;
    SQLLotePRLTN2QTDE: TBCDField;
    SQLLotePRLTN2TEMPOTOTAL: TBCDField;
    SQLLoteREGISTRO: TDateTimeField;
    SQLLotePENDENTE: TStringField;
    SQLLotePRLTCSTATUS: TStringField;
    dsSQLLote: TDataSource;
    SQLCountTOTAL: TRxQuery;
    SQLCountTOTALTEMPOTOTAL: TBCDField;
    SQLCountTOTALCAPACIDADE: TBCDField;
    SQLCountTOTALMEDIA: TFloatField;
    SQLProdutosPedidoEstoque: TFloatField;
    Splitter2: TSplitter;
    tblProdutoTotaisSemiAcabadoEmProducao: TFloatField;
    tblProdutoTotaisInsumoEmPedidoCompra: TFloatField;
    SQLGeral: TRxQuery;
    btGerarPCompra: TRxSpeedButton;
    procedure SQLClienteCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLPedidosAfterOpen(DataSet: TDataSet);
    procedure SQLPedidosBeforeOpen(DataSet: TDataSet);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAtualizarClick(Sender: TObject);
    procedure dblClienteChange(Sender: TObject);
    procedure cboOrderChange(Sender: TObject);
    procedure VerificaDetalhe;
    procedure SaveBoolean(Grid : TDBGrid);
    procedure ProdutosSelecionados;
    procedure tblTempPedidosAfterScroll(DataSet: TDataSet);
    procedure IncTextForm(RichEdit : TRxRichEdit; Texto : String);
    procedure chkTodosPedidosClick(Sender: TObject);
    procedure PesquisaComposicao;
    procedure SQLProdutosPedidoCalcFields(DataSet: TDataSet);
    procedure mnOrdemProducaoClick(Sender: TObject);
    function  VerificaPedidosSelecinados : String;
    procedure SQLCountTOTALAfterOpen(DataSet: TDataSet);
    procedure SQLLoteBeforePost(DataSet: TDataSet);
    procedure mnOrdemdeCompraClick(Sender: TObject);
    procedure btGerarOProducaoClick(Sender: TObject);
    procedure btGerarPCompraClick(Sender: TObject);
  private
    { Private declarations }
    ListaProdutos, LotePedidos : TStringList;
    OriginalOptions    : TDBGridOptions;
    SQLPedidosExecutar, SQLAntigoSQLResumo : String;
    TempoTotal         : Double;
    AtualizarItens     : Boolean;
  public
    { Public declarations }
  end;

var
  FormTelaPedidosVenda: TFormTelaPedidosVenda;

implementation

uses WaitWindow, DataModulo, UnitLibrary, VarSYS, TelaGerarOrdemProducao,
  TelaGerarOrdemCompra;

{$R *.dfm}

procedure RefazTabela(Tabela : TTable; Abrir: Boolean);
begin
    try
       Tabela.Close;
       Tabela.DeleteTable;
       Tabela.CreateTable;
    except
       Tabela.CreateTable;
    end;
    if Abrir then
       Tabela.Open;
end;

procedure TFormTelaPedidosVenda.SQLClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not SQLClienteCLIEA60CIDRES.IsNull then
     SQLClienteCidade.AsString := SQLClienteCLIEA60CIDRES.AsString + '\' + SQLClienteCLIEA2UFRES.AsString;
end;

procedure TFormTelaPedidosVenda.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Active := True;
  OriginalOptions := DBGridLista.Options;
  SQLAntigoSQLResumo := SQLResumo.SQL.Text;
end;

procedure TFormTelaPedidosVenda.SQLPedidosAfterOpen(DataSet: TDataSet);
Var I, Pedidos, TotalPedidos : Integer;

begin
  inherited;
  SQLPedidos.First;
  AtualizarItens := False;
  RefazTabela(tblTempPedidos, False);
  Pedidos := 0;
  TotalPedidos := SQLPedidos.RecordCount;
  if TotalPedidos > 10 then MakeWindow(SQLPedidos.RecordCount, 'Verificando Pedidos');
  if not tblTempPedidos.Active then tblTempPedidos.Active := True;
  while not SQLPedidos.Eof do
    begin
       if TotalPedidos > 10 then  SetProgress(Pedidos);
       tblTempPedidos.Append;
       for I := 0 to tblTempPedidos.Fields.Count - 2 do
           tblTempPedidos.Fields.Fields[I].Value := SQLPedidos.FieldByName(tblTempPedidos.Fields.Fields[I].FieldName).Value;
       tblTempPedidos.Post;
       Inc(Pedidos);
       SQLPedidos.Next;
    end;
  AtualizarItens := True;    
  if TotalPedidos > 10 then DestroyWindow;
end;

procedure TFormTelaPedidosVenda.SQLPedidosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SQLPedidosExecutar := '';

  if dblCliente.Text <> '...' then
     SQLPedidosExecutar := 'PEDIDOVENDA.CLIEA13ID = "' + dblCliente.KeyValue + '"';

  if not chkDatasEmissao.Checked then
     begin
       if SQLPedidosExecutar = '' then
          SQLPedidosExecutar := ' PEDIDOVENDA.PDVDDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', DeEmissao.Date) + '" as TimesTamp) and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', DeEmissao.Date) + '" as TimesTamp)'
       else
          SQLPedidosExecutar := SQLPedidosExecutar + ' and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', DeEmissao.Date) + '" as TimesTamp) and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', DeEmissao.Date) + '" as TimesTamp)'
     end;

  if not chkDatasEntrega.Checked then
     begin
       if SQLPedidosExecutar = '' then
          SQLPedidosExecutar := ' PEDIDOVENDA.PDVDDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', DeEntrega.Date) + '" as TimesTamp) and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', DeEntrega.Date) + '" as TimesTamp)'
       else
          SQLPedidosExecutar := SQLPedidosExecutar + ' and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO >= Cast("' + FormatDateTime('mm/dd/yyyy', DeEntrega.Date) + '" as TimesTamp) and ' +
                                ' PEDIDOVENDA.PDVDDEMISSAO <= Cast("' + FormatDateTime('mm/dd/yyyy', DeEntrega.Date) + '" as TimesTamp)'
     end;

  if SQLPedidosExecutar = '' then
     begin
        if Application.MessageBox('Nenhum filtro especificado.' + #13 + 'Deseja vizualizar todos os pedidos?',
                                  'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION) = idYes then
           SQLPedidosExecutar := '0=0'
        else
           Abort;
     end;

  SQLPedidos.MacroByName('MFiltro').AsString := SQLPedidosExecutar;
  
  case cboOrder.ItemIndex of
    0 : SQLPedidos.MacroByName('MOrder').AsString := ' order by PEDIDOVENDA.PDVDA13ID ';
    1 : SQLPedidos.MacroByName('MOrder').AsString := ' order by CLIENTE.CLIEA60RAZAOSOC ';
    2 : SQLPedidos.MacroByName('MOrder').AsString := ' order by PEDIDOVENDA.PDVDN2TOTPROD ';
    3 : SQLPedidos.MacroByName('MOrder').AsString := ' order by PEDIDOVENDA.PDVDDEMISSAO ';
    4 : SQLPedidos.MacroByName('MOrder').AsString := ' order by PEDIDOVENDA.PDVDDENTREGA ';
  end;

  if chkOrdemCrescente.Checked then
     SQLPedidos.MacroByName('MOrder').AsString := SQLPedidos.MacroByName('MOrder').AsString + ' asc '
  else
     SQLPedidos.MacroByName('MOrder').AsString := SQLPedidos.MacroByName('MOrder').AsString + ' desc ';
end;

procedure TFormTelaPedidosVenda.ProdutosSelecionados;
begin
  if ListaProdutos = Nil then
     ListaProdutos := TStringList.Create;

  if not (tblTempPedidos.State in dsEditModes) then
     begin
        if tblTempPedidoschkInclui.AsBoolean then
           ListaProdutos.Add('"' + tblTempPedidosPDVDA13ID.AsString +'",')
        else
           if (ListaProdutos.IndexOf('"' + tblTempPedidosPDVDA13ID.AsString + '",') > -1) then
              ListaProdutos.Delete(ListaProdutos.IndexOf('"' + tblTempPedidosPDVDA13ID.AsString + '",'));
     end;
end;

procedure TFormTelaPedidosVenda.SaveBoolean(Grid : TDBGrid);
begin
   Grid.SelectedField.Dataset.Edit ;
   Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
   Grid.SelectedField.Dataset.Post;

   ProdutosSelecionados;

   PesquisaComposicao;

end;

function TFormTelaPedidosVenda.VerificaPedidosSelecinados : String;
Var I       : Integer;
    Pedidos : String;
begin
   for I := Length(ListaProdutos.Text) -1 Downto 0 do
       begin
          if ListaProdutos.Text[I] = ',' then
             begin
               Pedidos := Copy(ListaProdutos.Text, 0, I - 1);
               Break;
             end;
       end;

   if Pedidos = '' then
      Pedidos := '"0=0"';

   Result := Pedidos; 
end;

procedure TFormTelaPedidosVenda.PesquisaComposicao;
Var EmProducao : Double;
begin
   SQLResumo.Close;
   SQLResumo.SQL.Text := 'select Count(*) as Total from tblTempPedidos where chkInclui = True';
   SQLResumo.Open;

   SQLTemp.Close;
   SQLTemp.SQL.Text := ' select PEDIDOVENDAITEM.PRODICOD, PRODUTOSALDO.PSLDN3QTDE Saldo, SUM(PRODUCAOLOTE.PRLTN2QTDE) EMPRODUCAO, ' +
                       ' SUM(PEDIDOVENDAITEM.PVITN3QUANT) Necessario from PEDIDOVENDAITEM ' +
                       ' left outer join PRODUTOSALDO on PRODUTOSALDO.PRODICOD = PEDIDOVENDAITEM.PRODICOD and PRODUTOSALDO.EMPRICOD = ' + IntToStr(EmpresaCorrente) +
                       ' left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRODICOD = PEDIDOVENDAITEM.PRODICOD and PRODUCAOLOTE.PRLTCSTATUS = "P" ' +
                       ' Where PEDIDOVENDAITEM.PDVDA13ID in (' + VerificaPedidosSelecinados + ') ' +
                       ' group by PEDIDOVENDAITEM.PRODICOD, PRODUTOSALDO.PSLDN3QTDE ';
   SQLTemp.Open;

   chkTodosPedidos.Checked := SQLResumo.FieldByName('Total').AsInteger = tblTempPedidos.RecordCount;

   if not SQLTemp.IsEmpty then
      begin
        SQLTemp.First;
        while not SQLTemp.Eof do
          begin
            EmProducao := 0;
            if not SQLTemp.FieldByName('EMPRODUCAO').IsNull then
               EmProducao := SQLTemp.FieldByName('EMPRODUCAO').AsFloat;

            if (SQLTemp.FieldByName('Necessario').AsFloat > (SQLTemp.FieldByName('Saldo').AsFloat + EmProducao)) then
                begin
                   mnOrdemProducao.Visible := (SQLResumo.FieldByName('Total').AsInteger > 0); //Habilita se Há Pedidos selecionados e necesseita de Mais Produrtos alem do estoque
                   btGerarOProducao.Enabled := mnOrdemProducao.Visible;
                   Break;
                end;
            SQLTemp.Next;
          end;
      end
   else
      mnOrdemProducao.Visible := False;
      btGerarOProducao.Enabled := mnOrdemProducao.Visible;

   SQLResumo.Close;
   SQLTemp.Close;

   SQLResumo.SQL.Text := SQLAntigoSQLResumo;


   SQLFichaTecResumida.Close;
   SQLFichaTecResumida.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID in (' + VerificaPedidosSelecinados + ')';
   SQLFichaTecResumida.Open;
   RefazTabela(tblTotalProdutodTemp, False);
   BatchMove.Destination := tblTotalProdutodTemp;
   BatchMove.Source      := SQLFichaTecResumida;
   BatchMove.Execute;
   RefazTabela(tblProdutoTotais, False);
   VerificaDetalhe;
end;

procedure TFormTelaPedidosVenda.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if (DBGridLista.SelectedField.DataType = ftBoolean) then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaPedidosVenda.DBGridListaDblClick(Sender: TObject);
begin
  inherited;
  if (DBGridLista.SelectedField.DataType = ftBoolean) then
     SaveBoolean(DBGridLista);
  DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaPedidosVenda.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
    if not tblTempPedidos.IsEmpty then
      if (Column.Field.DataType = ftBoolean) and (Column.Field.FieldName <> '')then
        begin
          DBGridLista.Canvas.FillRect(Rect);
          DrawFrameControl(DBGridLista.Canvas.Handle, Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
        end;
end;

procedure TFormTelaPedidosVenda.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and (DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = VK_Return) and (tblTempPedidos.State in DSEditModes) then
    tblTempPedidos.Post;
end;

procedure TFormTelaPedidosVenda.IncTextForm(RichEdit : TRxRichEdit; Texto : String);
Var I, PosInicial, PosFinal : Integer;
    PosInicialTEXTO, PosFinalTEXTO, Posicao : Integer;
Label Inicio;
    function EstiloTexto(Estilo : String) : TFontStyles ;
    begin
        Result := [];
        if Pos(UpperCase('fsBold'), UpperCase(Estilo)) > 0 then
           Result := [fsBold];
        if Pos(UpperCase('fsItalic'), UpperCase(Estilo)) > 0 then
           Result := Result + [fsItalic];
        if Pos(UpperCase('fsUnderline'), UpperCase(Estilo)) > 0 then
           Result := Result + [fsUnderline];
    end;
begin
    PosInicialTEXTO := 0;
    PosFinalTEXTO   := 0;
    PosInicial      := 0;
    PosFinal        := 0;
    Posicao := 0;
    Texto   := Texto + '<$;>';
    Inicio:
    for I := Posicao to Length(Texto) do
      begin
         if Texto[I - 1] + Texto[I] = '$;' then
            Exit;
         if Texto[I] = '<' then
            begin
               if PosInicialTEXTO <> 0 then
                  PosFinalTEXTO := I;
               PosInicial := I;
            end;
         if Texto[I] = '>' then
            PosFinal   := I;
         if PosInicial < PosFinal then
            begin
              mmTEMP.Lines.Add(Copy(Texto, PosInicial, PosFinal - (PosInicial - 1)));
              PosInicialTEXTO := PosFinal;
              PosInicial := 0;
              PosFinal   := 0;
            end;

         if PosInicialTEXTO < PosFinalTEXTO then
            begin
              RichTEMP.Text      := Copy(Texto, PosInicialTEXTO + 1, PosFinalTEXTO - (PosInicialTEXTO + 1));
              RichTEMP.SelStart  := 0;
              RichTEMP.SelLength := Length(RichTEMP.Text);
              if Trim(Copy(mmTEMP.Text, Pos('[S',mmTEMP.Lines.Text) + 2, Pos('/S]',mmTEMP.Lines.Text) - Pos('[S',mmTEMP.Lines.Text) - 2)) <> '' then
                 RichTEMP.SelAttributes.Size  := StrToInt(Trim(Copy(mmTEMP.Text, Pos('[S',mmTEMP.Lines.Text) + 2, Pos('/S]',mmTEMP.Lines.Text) - Pos('[S',mmTEMP.Lines.Text) - 2)))
              else
                 RichTEMP.SelAttributes.Size  := 8;
              if Trim(Copy(mmTEMP.Text, Pos('[C',mmTEMP.Lines.Text) + 2, Pos('/C]',mmTEMP.Lines.Text) - Pos('[C',mmTEMP.Lines.Text) - 2)) <> '' then
                RichTEMP.SelAttributes.Color := StringToColor(Trim(Copy(mmTEMP.Text, Pos('[C',mmTEMP.Lines.Text) + 2, Pos('/C]',mmTEMP.Lines.Text) - Pos('[C',mmTEMP.Lines.Text) - 2)))
              else
                RichTEMP.SelAttributes.Color := clBlack;
              if Copy(mmTEMP.Text, Pos('[E',mmTEMP.Lines.Text) + 2, Pos('/E]',mmTEMP.Lines.Text) - Pos('[E',mmTEMP.Lines.Text) - 2) <> '' then
                 RichTEMP.SelAttributes.Style := EstiloTexto(Copy(mmTEMP.Text, Pos('[E',mmTEMP.Lines.Text) + 2, Pos('/E]',mmTEMP.Lines.Text) - Pos('[E',mmTEMP.Lines.Text) - 2))
              else
                 RichTEMP.SelAttributes.Style := [];
              RichTEMP.CopyToClipboard;
              RichEdit.SelStart  := Length(RichEdit.Text);
              RichEdit.SelLength := 0;
              RichEdit.ReadOnly  := False;
              RichEdit.PasteFromClipboard;
              RichEdit.ReadOnly  := True;
              Posicao := PosFinalTEXTO;
              PosInicialTEXTO    := 0;
              PosFinalTEXTO   := 0;
              mmTEMP.Clear;
              Break;
            end;
      end;
    goto Inicio;
end;

procedure TFormTelaPedidosVenda.SQLCountTOTALAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SQLCountTOTAL.First;
  TempoTotal := 0;

  if SQLCountTOTAL.IsEmpty then
     TempoTotal := 0;

  while not SQLCountTOTAL.Eof do
     begin
        TempoTotal := TempoTotal + SQLCountTOTALMEDIA.AsFloat;
        SQLCountTOTAL.Next;
     end;
end;

procedure TFormTelaPedidosVenda.SQLLoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLLoteREGISTRO.AsDateTime   := Now;
  SQLLotePENDENTE.AsString     := 'S';
  SQLLotePRLTCSTATUS.AsString  := 'N';
  DM.CodigoAutomatico('PRODUCAOLOTE', dsSQLLote, SQLLote, 3, 2);

  SQLGeral.Close;
  SQLGeral.SQL.Text := 'select PDVDA13ID from PEDIDOVENDAITEM where PDVDA13ID in (' + VerificaPedidosSelecinados + ') and PRODICOD = ' + SQLLotePRODICOD.AsString;
  SQLGeral.Open;
  if not SQLGeral.IsEmpty then
     begin
        SQLGeral.First;
        while not SQLGeral.Eof do
           begin
               if LotePedidos = Nil then
                  LotePedidos := TStringList.Create;
               LotePedidos.Add(SQLLotePRLTA13ID.AsString + '-' + SQLGeral.FieldByName('PDVDA13ID').AsString);
               SQLGeral.Next;
           end;
     end;
end;

procedure TFormTelaPedidosVenda.VerificaDetalhe;
Var ValorResultado : Double;
   function CorPorValor(Valor : Double) : String;
      begin
         if Valor = 0 then
            Result := 'clGreen';
         if Valor < 0 then
            Result := 'clRed';
         if Valor > 0 then
            Result := 'clNavy';
      end;

begin
  SQLResumo.Close;
  SQLResumo.Open;
  SQLResumo.First;

  while not SQLResumo.Eof do
     begin
       if not tblProdutoTotais.Active then tblProdutoTotais.Active := True;
       if SQLResumo.FindField('Tipo').AsString = 'M' then
          begin
             if tblProdutoTotais.Locate('InsumoCod', SQLResumo.Fields.Fields[1].AsInteger, [loCaseInsensitive]) then
                begin
                   tblProdutoTotais.Edit;
                   tblProdutoTotaisInsumoQdteTotal.AsFloat := tblProdutoTotaisInsumoQdteTotal.AsFloat + SQLResumo.Fields.Fields[4].AsFloat;     //Qtde
                end
             else
                begin
                   tblProdutoTotais.Append;
                   tblProdutoTotaisInsumoQdteTotal.AsFloat := SQLResumo.Fields.Fields[4].AsFloat;     //Total

                   SQLTemp.Close;
                   SQLTemp.SQL.Text := 'select sum(PCITN3QTDEMBAL * PCITN3CAPEMBAL) Total from PEDIDOCOMPRAITEM where PDCPA13ID in (select PDCPA13ID from PEDIDOCOMPRA where PDCPCSTATUS = "E") and PRODICOD = ' + SQLResumo.Fields.Fields[1].AsString;
                   SQLTemp.Open;

                   if SQLTemp.IsEmpty then
                      tblProdutoTotaisInsumoEmPedidoCompra.AsFloat := 0
                   else
                      tblProdutoTotaisInsumoEmPedidoCompra.AsFloat := SQLTemp.FieldByName('Total').AsFloat;
                end;
             tblProdutoTotaisInsumoCod.AsInteger            := SQLResumo.Fields.Fields[1].AsInteger;   //Código
             tblProdutoTotaisInsumoNome.AsString            := SQLResumo.Fields.Fields[2].AsString;    //Nome
             tblProdutoTotaisInsumoQtde.AsFloat             := StrToFloat(SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3CAPACEMBAL', SQLResumo.Fields.Fields[1].AsString));     //Qtde Unitária
             tblProdutoTotaisInsumoUnidade.AsString         := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLResumo.Fields.Fields[1].AsString));
             DM.ProcuraRegistro('PRODUTOSALDO',['PRODICOD','EMPRICOD'],[SQLResumo.Fields.Fields[1].AsString, IntToStr(EmpresaCorrente)], 2);
             tblProdutoTotaisInsumoEstoque.AsVariant        := DM.SQLTemplate.FieldByName('PSLDN3QTDE').AsVariant;
             tblProdutoTotais.Post;
          end;

       if SQLResumo.FindField('Tipo').AsString = 'S' then
          begin
             if tblProdutoTotais.Locate('SemiAcabadoCod', SQLResumo.Fields.Fields[1].AsInteger, [loCaseInsensitive]) then
                begin
                   tblProdutoTotais.Edit;
                   tblProdutoTotaisSemiAcabadoQdteTotal.AsFloat := tblProdutoTotaisSemiAcabadoQdteTotal.AsFloat + SQLResumo.Fields.Fields[3].AsFloat;
                end
             else
                begin
                   tblProdutoTotais.Append;
                   tblProdutoTotaisSemiAcabadoQdteTotal.AsFloat := SQLResumo.Fields.Fields[3].AsFloat;

                   SQLTemp.Close;
                   SQLTemp.SQL.Text := 'select SUM(PRODUCAOLOTE.PRLTN2QTDE) EMPRODUCAO from PRODUCAOLOTE where PRLTCSTATUS = "P" and PRODICOD = ' + SQLResumo.Fields.Fields[1].AsString;
                   SQLTemp.Open;

                   if SQLTemp.IsEmpty then
                      tblProdutoTotaisSemiAcabadoEmProducao.AsFloat := 0
                   else
                      tblProdutoTotaisSemiAcabadoEmProducao.AsFloat := SQLTemp.FieldByName('EMPRODUCAO').AsFloat;
                end;
                   tblProdutoTotaisSemiAcabadoCod.AsInteger     := SQLResumo.Fields.Fields[1].AsInteger;
                   tblProdutoTotaisSemiAcabadoNome.AsString     := SQLResumo.Fields.Fields[2].AsString;
                   tblProdutoTotaisSemiAcabadoQtde.AsFloat      := StrToFloat(SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3CAPACEMBAL', SQLResumo.Fields.Fields[1].AsString));     //Qtde Unitária
                   tblProdutoTotaisSemiAcabadoUnidade.AsString  := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLResumo.Fields.Fields[1].AsString));
                   DM.ProcuraRegistro('PRODUTOSALDO',['PRODICOD','EMPRICOD'],[SQLResumo.Fields.Fields[1].AsString, IntToStr(EmpresaCorrente)], 2);
                   tblProdutoTotaisSemiAcabadoEstoque.AsVariant := DM.SQLTemplate.FieldByName('PSLDN3QTDE').AsVariant;
                   tblProdutoTotais.Post;
          end;
       SQLResumo.Next;
     end;

  mnOrdemdeCompra.Visible := not tblProdutoTotais.IsEmpty;
  btGerarPCompra.Enabled := mnOrdemdeCompra.Visible;

  rchDetalhe.Clear;
  tblProdutoTotais.First;
  while not tblProdutoTotais.Eof do
     begin                                    
        if tblProdutoTotaisSemiAcabadoCod.AsString <> '' then
           begin
             IncTextForm(rchDetalhe,'<[C clNavy /C][E fsBold /E] > SemiAcabado/Insumo: <[C clBlack /C][E /E] >' + tblProdutoTotaisSemiAcabadoCod.AsString + ' - ' + tblProdutoTotaisSemiAcabadoNome.AsString +  Char(13) +
                                    ' Qtde Unitária: ' + FormatFloat('#,###0.000', tblProdutoTotaisSemiAcabadoQtde.AsFloat) + ' ' + tblProdutoTotaisSemiAcabadoUnidade.AsString + Char(13) +
                                    ' Qtde Total:    ' + FormatFloat('#,###0.000', tblProdutoTotaisSemiAcabadoQdteTotal.AsFloat) + '<$;>');

             ValorResultado := (tblProdutoTotaisSemiAcabadoEstoque.AsFloat + tblProdutoTotaisSemiAcabadoEmProducao.AsFloat) - tblProdutoTotaisSemiAcabadoQdteTotal.AsFloat;

             IncTextForm(rchDetalhe,'<[C ' + CorPorValor(ValorResultado) + ' /C] [E fsBold /E] > Qtde estoque:  ' + FormatFloat('#,###0.000', tblProdutoTotaisSemiAcabadoEstoque.AsFloat) +
                                    '<[C clNavy /C][E fsBold /E]> ' + Char(13) + ' Qtde Procução:  ' + FormatFloat('#,###0.000', tblProdutoTotaisSemiAcabadoEmProducao.AsFloat) + Char(13) + '<$;>')
           end;
        if tblProdutoTotaisInsumoCod.AsString <> '' then
           begin
             IncTextForm(rchDetalhe,'<[C clNavy /C][E fsBold /E] > Matéria Prima: <[C clBlack /C][E /E] >' + tblProdutoTotaisInsumoCod.AsString + ' - ' + tblProdutoTotaisInsumoNome.AsString +  Char(13) +
                                    ' Qtde Unitária: ' + FormatFloat('#,###0.000', tblProdutoTotaisInsumoQtde.AsFloat) + ' ' + tblProdutoTotaisInsumoUnidade.AsString + Char(13) +
                                    ' Qtde Total:    ' + FormatFloat('#,###0.000', tblProdutoTotaisInsumoQdteTotal.AsFloat)  + '<$;>');

             ValorResultado := (tblProdutoTotaisInsumoEstoque.AsFloat + tblProdutoTotaisInsumoEmPedidoCompra.AsFloat) - tblProdutoTotaisInsumoQdteTotal.AsFloat; 
             IncTextForm(rchDetalhe,'<[C ' + CorPorValor(ValorResultado) + ' /C] [E fsBold /E] > Qtde estoque:  ' + FormatFloat('#,###0.000', tblProdutoTotaisInsumoEstoque.AsFloat)  +
                                    '<[C clNavy /C][E fsBold /E]> ' + Char(13) + ' Qtde Compras:  ' + FormatFloat('#,###0.000', tblProdutoTotaisInsumoEmPedidoCompra.AsFloat) + Char(13)  + '<$;>')
           end;
        tblProdutoTotais.Next;
     end;
end;

procedure TFormTelaPedidosVenda.btAtualizarClick(Sender: TObject);
begin
  inherited;
  rchDetalhe.Clear;
  if ListaProdutos <> Nil then
     ListaProdutos.Clear;
  tblTempPedidos.DisableControls;
  SQLPedidos.Close;
  SQLPedidos.Open;
  tblTempPedidos.First;
  tblTempPedidos.EnableControls;
end;

procedure TFormTelaPedidosVenda.dblClienteChange(Sender: TObject);
begin
  inherited;
  btAtualizar.Click;
end;

procedure TFormTelaPedidosVenda.cboOrderChange(Sender: TObject);
begin
  inherited;
  btAtualizar.Click;
end;

procedure TFormTelaPedidosVenda.tblTempPedidosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if not (tblTempPedidos.State in dsEditModes) and AtualizarItens then
     begin
        SQLProdutosPedido.DisableControls;
        SQLProdutosPedido.Close;
        SQLProdutosPedido.MacroByName('MFiltro').AsString := ' PEDIDOVENDAITEM.PDVDA13ID = "' + tblTempPedidosPDVDA13ID.AsString + '"';
        SQLProdutosPedido.Open;
        SQLProdutosPedido.First;
        SQLProdutosPedido.EnableControls;
     end;
  chkTodosPedidos.Enabled := not tblTempPedidos.IsEmpty;
end;

procedure TFormTelaPedidosVenda.chkTodosPedidosClick(Sender: TObject);
var
   SQLAntigo : String;
   Posicao   : Pointer;
begin
  inherited;
  if TCheckBox(Sender).Checked then
     begin
        AtualizarItens := False;
        if tblTempPedidos.RecordCount >= 1500 then
           begin
              Informa('Este processo esta sendo abortado.' + #13 + 'Este processo pode ser muito demorado ou pode não trazer resultados.');
              Abort;
           end;

        SQLResumo.Close;
        SQLResumo.SQL.Text := ' update tblTempPedidos set chkInclui = True';
        SQLResumo.ExecSQL;

        SQLResumo.Close;
        SQLResumo.SQL.Text := SQLAntigoSQLResumo;

        Posicao := tblTempPedidos.GetBookmark;
        tblTempPedidos.DisableControls;
        tblTempPedidos.First;
        if ListaProdutos <> Nil then
           ListaProdutos.Clear
        else
           ListaProdutos := TStringList.Create;

       MakeWindow(tblTempPedidos.RecordCount, 'Verificando Composição dos Pedidos');

        while not tblTempPedidos.Eof do
           begin
              SetProgress(tblTempPedidos.RecNo);
              ListaProdutos.Add('"' + tblTempPedidosPDVDA13ID.AsString +'",');
              tblTempPedidos.Next;
           end;

        DestroyWindow;

        Application.ProcessMessages;

        AtualizarItens := True;

        tblTempPedidos.Close;
        tblTempPedidos.Open;
        tblTempPedidos.GotoBookmark(Posicao);
        tblTempPedidos.EnableControls;

        PesquisaComposicao;
     end;
end;

procedure TFormTelaPedidosVenda.SQLProdutosPedidoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLLocate('PRODUTOSALDO', 'PRODICOD', 'PSLDN3QTDE', SQLProdutosPedidoPRODICOD.AsString) <> '' then
     SQLProdutosPedidoEstoque.AsFloat := StrToFloat(SQLLocate('PRODUTOSALDO', 'PRODICOD', 'PSLDN3QTDE', SQLProdutosPedidoPRODICOD.AsString))
  else
     SQLProdutosPedidoEstoque.AsFloat := 0;

  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
        End
      Else
        begin
          DataSet.FieldByName('ProdutoLookup').asString      := MensagemLookUp;
        End;
    End
  Else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant     := Null;
    End;
end;

procedure TFormTelaPedidosVenda.mnOrdemProducaoClick(Sender: TObject);
Var I : Integer;
    LotesCriados : TStringList;
    MensagensLotes : String;
begin
  inherited;
  SQLTemp.Close;
  SQLTemp.SQL.Text := ' select PEDIDOVENDAITEM.PRODICOD, PRODUTOSALDO.PSLDN3QTDE Saldo, SUM(PRODUCAOLOTE.PRLTN2QTDE) EMPRODUCAO, ' +
                      ' SUM(PEDIDOVENDAITEM.PVITN3QUANT) Necessario from PEDIDOVENDAITEM ' +
                      ' left outer join PRODUTOSALDO on PRODUTOSALDO.PRODICOD = PEDIDOVENDAITEM.PRODICOD and PRODUTOSALDO.EMPRICOD = ' + IntToStr(EmpresaCorrente) +
                      ' left outer join PRODUCAOLOTE on PRODUCAOLOTE.PRODICOD = PEDIDOVENDAITEM.PRODICOD and PRODUCAOLOTE.PRLTCSTATUS = "P" ' +
                      ' Where PEDIDOVENDAITEM.PDVDA13ID in (' + VerificaPedidosSelecinados + ') ' +
                      ' group by PEDIDOVENDAITEM.PRODICOD, PRODUTOSALDO.PSLDN3QTDE ';
  SQLTemp.Open;

  if not SQLTemp.IsEmpty then
     begin
       SQLTemp.First;
       while not SQLTemp.Eof do
          begin
             if SQLTemp.FieldByName('Necessario').AsFloat > (SQLTemp.FieldByName('EmProducao').AsFloat + SQLTemp.FieldByName('Saldo').AsFloat) then
                MensagensLotes := SQLTemp.FieldByName('PRODICOD').AsString + ' Qtde: ' + FloatToStr(SQLTemp.FieldByName('Necessario').AsFloat - (SQLTemp.FieldByName('EmProducao').AsFloat + SQLTemp.FieldByName('Saldo').AsFloat));
             SQLTemp.Next;
          end;

       SQLTemp.First;
       if not SQLLote.Active then SQLLote.Active := True;
       while not SQLTemp.Eof do
           begin
              if SQLTemp.FieldByName('Necessario').AsFloat > (SQLTemp.FieldByName('EmProducao').AsFloat + SQLTemp.FieldByName('Saldo').AsFloat) then
                 begin
                    if LotesCriados = Nil then
                       LotesCriados := TStringList.Create;
                    SQLLote.Append;
                    SQLLoteEMPRICOD.AsInteger := EmpresaCorrente;
                    SQLLotePRODICOD.AsInteger := SQLTemp.FieldByName('PRODICOD').AsInteger;
                    SQLLotePRLTA60DESCR.AsString := 'PD VENDA PROD: ' + SQLTemp.FieldByName('PRODICOD').AsString + ' Qtde: ' + FormatFloat('#,###0.000', SQLTemp.FieldByName('Necessario').AsFloat - SQLTemp.FieldByName('Saldo').AsFloat);
                    SQLLotePRLTN2QTDE.AsFloat    := SQLTemp.FieldByName('Necessario').AsFloat - (SQLTemp.FieldByName('EmProducao').AsFloat + SQLTemp.FieldByName('Saldo').AsFloat);
                    SQLCountTOTAL.Close;
                    SQLCountTOTAL.MacroByName('MFiltro').AsString := ' PRODUTO.PRODICOD = ' + SQLTemp.FieldByName('PRODICOD').AsString;
                    SQLCountTOTAL.Open;
                    SQLLotePRLTN2TEMPOTOTAL.AsFloat := TempoTotal;
                    SQLLote.Post;
                    LotesCriados.Add(SQLLotePRLTA13ID.AsString + ' - ' + SQLLotePRLTA60DESCR.AsString);
                 end;
              SQLTemp.Next;
           end;
       if LotesCriados <> Nil then
          begin
             if Application.FindComponent('FormTelaGerarOrdemProducao') = Nil then
                Application.CreateForm(TFormTelaGerarOrdemProducao, FormTelaGerarOrdemProducao);
             FormTelaGerarOrdemProducao.lstLotes.Items := LotesCriados;
             FormTelaGerarOrdemProducao.PedidosProdutosLotes := LotePedidos;
             FormTelaGerarOrdemProducao.ShowModal;
             FormTelaGerarOrdemProducao.Destroy;
             LotesCriados.Destroy;
          end;
     end;

end;

procedure TFormTelaPedidosVenda.mnOrdemdeCompraClick(Sender: TObject);
var InsumosNecessarios : TStringList;
    Falta         : Double;
begin
  inherited;
  if not tblProdutoTotais.Active then tblProdutoTotais.Active := True;
  tblProdutoTotais.First;
  while not tblProdutoTotais.Eof do
     begin
        if not tblProdutoTotaisInsumoCod.IsNull then
           begin
              if InsumosNecessarios = Nil then
                 InsumosNecessarios := TStringList.Create;
              Falta := tblProdutoTotaisInsumoQdteTotal.AsFloat - (tblProdutoTotaisInsumoEstoque.AsFloat + tblProdutoTotaisInsumoEmPedidoCompra.AsFloat);
              if Falta > 0 then
                 InsumosNecessarios.Add(tblProdutoTotaisInsumoCod.AsString + ' - ' + tblProdutoTotaisInsumoNome.AsString + ' > ' + FormatFloat('#,###0.000', Falta));
           end;
        tblProdutoTotais.Next;
     end;

  Application.CreateForm(TFormTelaGerarOrdemCompra, FormTelaGerarOrdemCompra);
  FormTelaGerarOrdemCompra.lstInsumos.Items := InsumosNecessarios;
  FormTelaGerarOrdemCompra.ShowModal;
  FormTelaGerarOrdemCompra.Destroy;
  InsumosNecessarios.Destroy;
end;

procedure TFormTelaPedidosVenda.btGerarOProducaoClick(Sender: TObject);
begin
  inherited;
  mnOrdemProducao.Click;
end;

procedure TFormTelaPedidosVenda.btGerarPCompraClick(Sender: TObject);
begin
  inherited;
  mnOrdemdeCompra.Click;
end;

end.
