unit TelaCotacaoCompraItemFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, StdCtrls, Buttons, Grids, DBGrids,
  DBCtrls, Mask, ToolEdit, RxLookup, DB, DBTables, RxQuery, jpeg, ExtCtrls,
  Placemnt, FormResources, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaCotacaoCompraItemFiltro = class(TFormTelaGeralModalTemplate)
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaQTDEMBAL: TIntegerField;
    TblTemporariaPRODN3VLRCOMPRA: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaQTDECOMPRADO: TBCDField;
    TblTemporariaSALDO: TBCDField;
    TblTemporariaDATAULTCOMPRA: TDateField;
    TblTemporariaIPIPERC: TBCDField;
    TblTemporariaQTDEULTCOMPRA: TBCDField;
    TblTemporariaQTDETOTVENDA: TBCDField;
    SQLProdutos: TRxQuery;
    Panel1: TPanel;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DE: TDateEdit;
    ATE: TDateEdit;
    CkPeriodo: TCheckBox;
    Panel3: TPanel;
    GroupProdComprados: TGroupBox;
    BTGravar: TBitBtn;
    SQLTotal: TRxQuery;
    DSSQLTotal: TDataSource;
    SQLTotalValorTotal: TFloatField;
    EditProduto: TEdit;
    Label9: TLabel;
    TblTemporariaReferencia: TStringField;
    TblTempComprados: TTable;
    DSTblTempComprados: TDataSource;
    GroupProdFiltrados: TGroupBox;
    TblTempCompradosPRODICOD: TIntegerField;
    TblTempCompradosPRODA60DESCR: TStringField;
    TblTempCompradosQTDEMBAL: TIntegerField;
    TblTempCompradosPRODN3VLRCOMPRA: TBCDField;
    TblTempCompradosPRODN3VLRVENDA: TBCDField;
    TblTempCompradosQTDECOMPRADO: TBCDField;
    TblTempCompradosIPIPERC: TBCDField;
    SQLMarcaAux: TRxQuery;
    SQLMarcaAuxMARCICOD: TIntegerField;
    SQLMarcaAuxMARCA60DESCR: TStringField;
    SQLCorAux: TRxQuery;
    SQLCorAuxCORICOD: TIntegerField;
    SQLCorAuxCORA30DESCR: TStringField;
    SQLUnidadeAux: TRxQuery;
    SQLUnidadeAuxUNIDICOD: TIntegerField;
    SQLUnidadeAuxUNIDA5DESCR: TStringField;
    SQLUnidadeAuxPENDENTE: TStringField;
    SQLUnidadeAuxREGISTRO: TDateTimeField;
    SQLUnidadeAuxUNIDA15DESCR: TStringField;
    SQLUnidadeAuxUNIDCFRAC: TStringField;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    EditReferencia: TEdit;
    Label50: TLabel;
    Label49: TLabel;
    TblTemporariaCor: TStringField;
    TblTempCompradosCor: TStringField;
    TblTempCompradosRef: TStringField;
    TblTemporariaMarca: TStringField;
    TblTempCompradosMarca: TStringField;
    TblTemporariaUltVlrCusto: TFloatField;
    TblTempCompradosUltVlrCusto: TFloatField;
    FormStorage1: TFormStorage;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA60REFER: TStringField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODN3VLRVENDA: TBCDField;
    SQLProdutosPRODN3VLRCOMPRA: TBCDField;
    SQLProdutosPRODN3VLRCUSTO: TBCDField;
    SQLProdutosPRODN3CAPACEMBAL: TBCDField;
    SQLProdutosPRODN3PERCIPI: TBCDField;
    SQLProdutosPRODDULTCOMPRA: TDateTimeField;
    SQLProdutosPRODN3QTDULTCOMPRA: TBCDField;
    SQLProdutosCORICOD: TIntegerField;
    SQLProdutosMARCICOD: TIntegerField;
    SQLProdutosGRUPICOD: TIntegerField;
    SQLProdutosSUBGICOD: TIntegerField;
    SQLProdutosVARIICOD: TIntegerField;
    SQLProdutosCORA30DESCR: TStringField;
    SQLProdutosMARCA60DESCR: TStringField;
    Panel4: TPanel;
    Label16: TLabel;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    TblTempCompradosSALDO: TBCDField;
    TblTempCompradosDATAULTCOMPRA: TDateField;
    TblTempCompradosQTDEULTCOMPRA: TBCDField;
    TblTempCompradosQTDETOTVENDA: TBCDField;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    GridProdutosFiltrados: TDBGrid;
    SQLProdutosPRODDULTVENDA: TDateTimeField;
    TblTemporariaPRODDULTVENDA: TDateField;
    TblTempCompradosPRODDULTVENDA: TDateField;
    DBEdit3: TDBEdit;
    Label19: TLabel;
    CKNegativo: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit30: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    SQLFornecedorFORNCSIMPLES: TStringField;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    BTFiltrar: TSpeedButton;
    BtSugestao: TSpeedButton;
    procedure BTFiltrarClick(Sender: TObject);
    procedure TblTemporariaNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridProdutosFiltradosEnter(Sender: TObject);
    procedure GridProdutosFiltradosExit(Sender: TObject);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboSubGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TblTemporariaAfterPost(DataSet: TDataSet);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure TblTempCompradosAfterPost(DataSet: TDataSet);
    procedure TblTempCompradosAfterDelete(DataSet: TDataSet);
    procedure BtSugestaoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridProdutosFiltradosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NotaCompraID : String
  end;

var
  FormTelaCotacaoCompraItemFiltro: TFormTelaCotacaoCompraItemFiltro;

implementation

uses DataModulo, WaitWindow, CadastroCotacaoCompra, UnitLibrary;

{$R *.dfm}

procedure TFormTelaCotacaoCompraItemFiltro.BTFiltrarClick(Sender: TObject);
var Item, vtamanho, I : integer;
    Clausula, vProduto : String;
begin
  inherited;
  SQLProdutos.Close;
  if EditProduto.Text <> '' then
    begin
      vtamanho         := length(EditProduto.Text)+1;
      EditProduto.Text := Trim(EditProduto.Text)+' ';
      vProduto      := '%';
      For I := 1 to vtamanho do
        begin
          If Copy(EditProduto.Text,I,1)=' ' then
            vProduto := vProduto+'%'
          else
            vProduto := vProduto+copy(EditProduto.Text,I,1);
        end;
      SQLProdutos.MacroByName('MProduto').Value := 'PRODA60DESCR LIKE "' + vProduto + '"';

{      if Copy(EditProduto.Text,1,1) = '*' then
        SQLProdutos.MacroByName('MProduto').Value := 'PRODA60DESCR LIKE "%' + Copy(EditProduto.Text,2,Length(EditProduto.Text)-1) + '%"'
      else
        SQLProdutos.MacroByName('MProduto').Value := 'PRODA60DESCR LIKE "' + EditProduto.Text + '%"';}
    end
  else
    SQLProdutos.MacroByName('MProduto').Value := '0=0';

  if EditReferencia.Text <> '' then
    begin
      if Copy(EditReferencia.Text,1,1) = '*' then
        SQLProdutos.MacroByName('MProdutoRef').Value := 'PRODA60REFER LIKE "%' + Copy(EditReferencia.Text,2,Length(EditReferencia.Text)-1) + '%"'
      else
        SQLProdutos.MacroByName('MProdutoRef').Value := 'PRODA60REFER LIKE "' + EditReferencia.Text + '%"';
    end
  else
    SQLProdutos.MacroByName('MProdutoRef').Value := '0=0';

  if ComboMarca.Value <> '' then
    SQLProdutos.MacroByName('MMarca').Value := 'MARCICOD = ' + ComboMarca.KeyValue
  else
    SQLProdutos.MacroByName('MMarca').Value := '0=0';

  if ComboGrupo.Value <> '' then
    SQLProdutos.MacroByName('MGrupo').Value := 'GRUPICOD = ' + ComboGrupo.KeyValue
  else
    SQLProdutos.MacroByName('MGrupo').Value := '0=0';

  if (ComboGrupo.Value <> '') and (ComboSubGrupo.Value <> '') then
    SQLProdutos.MacroByName('MSubGrupo').Value := 'SUBGICOD = ' + ComboSubGrupo.KeyValue
  else
    SQLProdutos.MacroByName('MSubGrupo').Value := '0=0';

  if CKNegativo.Checked then
    SQLProdutos.MacroByName('MSaldo').Value := ' PRODICOD in (select PRODICOD from PRODUTOSALDO where PRODUTOSALDO.EMPRICOD = ' + DM.SQLEmpresaEMPRICOD.AsString +
                                               ' and PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD and PRODUTOSALDO.PSLDN3QTDE <= 0)'
  else
    SQLProdutos.MacroByName('MSaldo').Value := '0=0';

//  ShowMessage(SQLProdutos.RealSQL.Text);
  SQLProdutos.Open;

  TblTemporaria.Close ;
  try
    TblTemporaria.DeleteTable ;
    TblTemporaria.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
        TblTemporaria.CreateTable ;
      end;
  end ;

  TblTemporaria.Open ;

  Item := 1;
  TblTemporaria.DisableControls;
  MakeWindow(SQLProdutos.RecordCount, 'Aguarde, Executando Filtro!');
  while not SQLProdutos.Eof do
    begin
      SetProgress(Item);
      Item := Item + 1;
      TblTemporaria.Append;
      try
        TblTemporariaPRODICOD.AsVariant           := SQLProdutos.fieldbyname('PRODICOD').AsVariant;
        TblTemporariaPRODA60DESCR.AsVariant       := SQLProdutos.fieldbyname('PRODA60DESCR').AsVariant;
        TblTemporariaPRODN3VLRVENDA.AsVariant     := SQLProdutos.fieldbyname('PRODN3VLRVENDA').AsVariant;
        TblTemporariaPRODN3VLRCOMPRA.AsVariant    := SQLProdutos.fieldbyname('PRODN3VLRCOMPRA').AsVariant *
                                                     SQLProdutos.fieldbyname('PRODN3CAPACEMBAL').AsVariant;
        TblTemporariaQTDEMBAL.AsVariant           := SQLProdutos.fieldbyname('PRODN3CAPACEMBAL').AsVariant;
        TblTemporariaIPIPERC.AsVariant            := SQLProdutos.fieldbyname('PRODN3PERCIPI').AsVariant;
        TblTemporariaDATAULTCOMPRA.AsString       := SQLProdutos.fieldbyname('PRODDULTCOMPRA').AsString;
        TblTemporariaQTDEULTCOMPRA.AsVariant      := SQLProdutos.fieldbyname('PRODN3QTDULTCOMPRA').AsVariant;
        TblTemporariaUltVlrCusto.AsVariant        := SQLProdutos.fieldbyname('PRODN3VLRCUSTO').AsVariant;
        TblTemporariaReferencia.AsVariant         := SQLProdutos.fieldbyname('PRODA60REFER').AsVariant;
        TblTemporariaMarca.AsVariant              := SQLProdutos.fieldbyname('MARCA60DESCR').AsVariant;
        TblTemporariaCor.AsVariant                := SQLProdutos.fieldbyname('CORA30DESCR').AsVariant;
        // Saldo de Estoque
        dm.SQLTemplate.Close;
        dm.SQLTemplate.Sql.Clear;
        dm.SQLTemplate.Sql.Add('Select PSLDN3QTDE from PRODUTOSALDO Where PRODICOD = '+SQLProdutos.fieldbyname('PRODICOD').AsString+' and Empricod = '+ dm.SQLTerminalAtivoEMPRICOD.AsString);
        dm.SQLTemplate.Open;
        if dm.SQLTemplate.fieldbyname('PSLDN3QTDE').Value > 0 then
          TblTemporariaSALDO.AsVariant := dm.SQLTemplate.fieldbyname('PSLDN3QTDE').Value;

        if not CkPeriodo.Checked then
          begin
            dm.SQLTemplate.Close;
            dm.SQLTemplate.Sql.Clear;
            dm.SQLTemplate.Sql.Add('Select Sum(CPITN3QTD) from CUPOMITEM Where (CPITCSTATUS<>"C") and (CPITN3QTD>0) and (PRODICOD='+TblTemporariaPRODICOD.AsString+') and (CUPOMITEM.REGISTRO>="'+FormatDateTime('mm/dd/yyyy',DE.Date)+'" and CUPOMITEM.REGISTRO<="'+FormatDateTime('mm/dd/yyyy',ATE.Date)+'")');
            dm.SQLTemplate.Open;
            if dm.SQLTemplate.fieldbyname('SUM').Value > 0 then
              begin
                TblTemporariaQTDETOTVENDA.Value       := dm.SQLTemplate.fieldbyname('SUM').Value;
                TblTemporariaPRODDULTVENDA.AsVariant  := SQLProdutos.fieldbyname('PRODDULTVENDA').AsVariant;
              end;
          end
        else
          TblTemporariaQTDETOTVENDA.Value := 0;

        TblTemporaria.Post;
      except
        Application.ProcessMessages;
      end;
      SQLProdutos.Next;
    end;
    DestroyWindow;
    TblTemporaria.EnableControls;
    GroupProdFiltrados.Caption := ' Produtos Filtrados => '+ IntToStr(TblTemporaria.RecordCount)+' Registros Encontrados...';
    TblTemporaria.First;
    DBGrid1.SetFocus;
end;

procedure TFormTelaCotacaoCompraItemFiltro.TblTemporariaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblTemporariaQTDETOTVENDA.Value := 0;
end;

procedure TFormTelaCotacaoCompraItemFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  de.Date  := now-7;
  ATE.Date := now;
  TblTempComprados.Close ;
  try
    TblTempComprados.DeleteTable ;
    TblTempComprados.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
        TblTempComprados.CreateTable ;
      end;
  end ;
  TblTempComprados.Open;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLFornecedor.Open;
end;

procedure TFormTelaCotacaoCompraItemFiltro.FormShow(Sender: TObject);
begin
  inherited;
  de.SetFocus;
end;

procedure TFormTelaCotacaoCompraItemFiltro.GridProdutosFiltradosEnter(
  Sender: TObject);
begin
  inherited;
  FormTelaCotacaoCompraItemFiltro.KeyPreview := False;
end;

procedure TFormTelaCotacaoCompraItemFiltro.GridProdutosFiltradosExit(
  Sender: TObject);
begin
  inherited;
  FormTelaCotacaoCompraItemFiltro.KeyPreview := True;
end;

procedure TFormTelaCotacaoCompraItemFiltro.ComboMarcaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaCotacaoCompraItemFiltro.ComboGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaCotacaoCompraItemFiltro.ComboSubGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaCotacaoCompraItemFiltro.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaCotacaoCompraItemFiltro.TblTemporariaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (TblTemporariaQTDECOMPRADO.Value > 0) and (TblTemporariaPRODN3VLRCOMPRA.Value > 0) then
    begin
      TblTempComprados.Close;
      TblTempComprados.Open;
      TblTempComprados.First;
      if TblTempComprados.Locate('PRODICOD',TblTemporariaPRODICOD.AsString,[]) then
        begin
          if Pergunta('NAO','Atenção! Este Produto já foi incluído na lista de compra! Deseja Prosseguir?') then
            begin
              TblTempComprados.Last;
              TblTempComprados.Append;
              TblTempCompradosPRODICOD.Value          := TblTemporariaPRODICOD.Value;
              TblTempCompradosPRODA60DESCR.Value      := TblTemporariaPRODA60DESCR.Value;
              TblTempCompradosQTDEMBAL.Value          := TblTemporariaQTDEMBAL.Value;
              TblTempCompradosQTDECOMPRADO.Value      := TblTemporariaQTDECOMPRADO.Value;
              TblTempCompradosPRODN3VLRCOMPRA.Value   := TblTemporariaPRODN3VLRCOMPRA.Value;
              TblTempCompradosPRODN3VLRVENDA.Value    := TblTemporariaPRODN3VLRVENDA.Value;
              TblTempCompradosUltVlrCusto.Value       := TblTemporariaUltVlrCusto.Value;
              TblTempCompradosIPIPERC.Value           := TblTemporariaIPIPERC.Value;
              TblTempCompradosCor.Value               := TblTemporariaCor.Value;
              TblTempCompradosRef.Value               := TblTemporariaReferencia.Value;
              TblTempCompradosMarca.Value             := TblTemporariaMarca.Value;
              TblTempCompradosSALDO.Value             := TblTemporariaSALDO.Value;
              TblTempCompradosDATAULTCOMPRA.AsString  := TblTemporariaDATAULTCOMPRA.AsString;
              TblTempCompradosQTDEULTCOMPRA.Value     := TblTemporariaQTDEULTCOMPRA.Value;
              TblTempCompradosQTDETOTVENDA.Value      := TblTemporariaQTDETOTVENDA.Value;
              TblTempCompradosPRODDULTVENDA.AsVariant := TblTemporariaPRODDULTVENDA.AsVariant;
              TblTempComprados.Post;
            end;
        end
      else
        begin
          TblTempComprados.Last;
          TblTempComprados.Append;
          TblTempCompradosPRODICOD.Value          := TblTemporariaPRODICOD.Value;
          TblTempCompradosPRODA60DESCR.Value      := TblTemporariaPRODA60DESCR.Value;
          TblTempCompradosQTDEMBAL.Value          := TblTemporariaQTDEMBAL.Value;
          TblTempCompradosQTDECOMPRADO.Value      := TblTemporariaQTDECOMPRADO.Value;
          TblTempCompradosPRODN3VLRCOMPRA.Value   := TblTemporariaPRODN3VLRCOMPRA.Value;
          TblTempCompradosPRODN3VLRVENDA.Value    := TblTemporariaPRODN3VLRVENDA.Value;
          TblTempCompradosUltVlrCusto.Value       := TblTemporariaUltVlrCusto.Value;
          TblTempCompradosIPIPERC.Value           := TblTemporariaIPIPERC.Value;
          TblTempCompradosCor.Value               := TblTemporariaCor.Value;
          TblTempCompradosRef.Value               := TblTemporariaReferencia.Value;
          TblTempCompradosMarca.Value             := TblTemporariaMarca.Value;
          TblTempCompradosSALDO.Value             := TblTemporariaSALDO.Value;
          TblTempCompradosDATAULTCOMPRA.AsString  := TblTemporariaDATAULTCOMPRA.AsString;
          TblTempCompradosQTDEULTCOMPRA.Value     := TblTemporariaQTDEULTCOMPRA.Value;
          TblTempCompradosQTDETOTVENDA.Value      := TblTemporariaQTDETOTVENDA.Value;
          TblTempCompradosPRODDULTVENDA.AsVariant := TblTemporariaPRODDULTVENDA.AsVariant;
          TblTempComprados.Post;
        end;
      GroupProdComprados.Caption := ' Produtos Escolhidos para Compra => '+ IntToStr(TblTempComprados.RecordCount)+' Registros Encontrados...';
    end;
end;

procedure TFormTelaCotacaoCompraItemFiltro.BtnFecharTelaClick(
  Sender: TObject);
begin
  If Application.MessageBox(PCHAR('Não esqueca de gravar sua Cotação!'+CHR(13)+'Tem certeza que deseja fechar a tela?'),'Atenção',MB_YesNo+MB_IconQuestion+MB_SYSTEMMODAL)=Id_Yes Then
    inherited;
end;

procedure TFormTelaCotacaoCompraItemFiltro.TblTempCompradosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotal.Close;
  SQLTotal.Open;
end;

procedure TFormTelaCotacaoCompraItemFiltro.TblTempCompradosAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotal.Close;
  SQLTotal.Open;
  GroupProdComprados.Caption := ' Produtos Escolhidos para Compra => '+ IntToStr(TblTempComprados.RecordCount)+' Registros Encontrados...';
end;

procedure TFormTelaCotacaoCompraItemFiltro.BtSugestaoClick(Sender: TObject);
begin
  inherited;
  if CkPeriodo.Checked then
    begin
      ShowMessage('Atenção! A Sugestão não pode ser usada sem informar um período de vendas'+chr(13)+
                  'para analise da quantidade a ser sugerida para compra!' );
      Exit;
    end;

  TblTemporaria.first;
  while not TblTemporaria.Eof do
    begin
      if (TblTemporariaQTDETOTVENDA.Value > TblTemporariaSALDO.Value) or
         (TblTemporariaQTDETOTVENDA.Value = TblTemporariaSALDO.Value) then
        begin
          TblTempComprados.Close;
          TblTempComprados.Open;
          TblTempComprados.Last;
          TblTempComprados.Append;
          TblTempCompradosPRODICOD.Value        := TblTemporariaPRODICOD.Value;
          TblTempCompradosPRODA60DESCR.Value    := TblTemporariaPRODA60DESCR.Value;
          TblTempCompradosQTDEMBAL.Value        := TblTemporariaQTDEMBAL.Value;
          if (TblTemporariaQTDETOTVENDA.Value > TblTemporariaSALDO.Value) then
            TblTempCompradosQTDECOMPRADO.Value    := (TblTemporariaQTDETOTVENDA.Value - TblTemporariaSALDO.Value)/TblTemporariaQTDEMBAL.Value;
          if (TblTemporariaQTDETOTVENDA.Value = TblTemporariaSALDO.Value) then
            TblTempCompradosQTDECOMPRADO.Value     := TblTemporariaQTDETOTVENDA.Value/TblTemporariaQTDEMBAL.Value;
          TblTempCompradosPRODN3VLRCOMPRA.Value    := TblTemporariaPRODN3VLRCOMPRA.Value;
          TblTempCompradosPRODN3VLRVENDA.Value     := TblTemporariaPRODN3VLRVENDA.Value;
          TblTempCompradosUltVlrCusto.Value        := TblTemporariaUltVlrCusto.Value;
          TblTempCompradosIPIPERC.Value            := TblTemporariaIPIPERC.Value;
          TblTempCompradosCor.Value                := TblTemporariaCor.Value;
          TblTempCompradosRef.Value                := TblTemporariaReferencia.Value;
          TblTempCompradosMarca.Value              := TblTemporariaMarca.Value;
          TblTempCompradosSALDO.Value              := TblTemporariaSALDO.Value;
          TblTempCompradosDATAULTCOMPRA.AsString   := TblTemporariaDATAULTCOMPRA.AsString;
          TblTempCompradosQTDEULTCOMPRA.Value      := TblTemporariaQTDEULTCOMPRA.Value;
          TblTempCompradosQTDETOTVENDA.Value       := TblTemporariaQTDETOTVENDA.Value;
          TblTempCompradosPRODDULTVENDA.AsVariant  := TblTemporariaPRODDULTVENDA.AsVariant;
          TblTempComprados.Post;
        end;
      TblTemporaria.Next;
    end;
  TblTemporaria.first;
end;

procedure TFormTelaCotacaoCompraItemFiltro.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if gdSelected in State then
      DBGrid1.Canvas.Brush.Color := $00E0C8B0
   else
      begin
        if Odd(tbltemporaria.RecNo) then
          DBGrid1.Canvas.Brush.Color := $00F7F0EA //$00BFD8D8
        else
          DBGrid1.Canvas.Brush.Color := DBGrid1.Color;
      end;

 DBGrid1.Canvas.font.Color := clBlack;
 DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormTelaCotacaoCompraItemFiltro.GridProdutosFiltradosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
    GridProdutosFiltrados.Canvas.Brush.Color := $00E0C8B0
  else
    begin
      if Odd(TblTempComprados.RecNo) then
        GridProdutosFiltrados.Canvas.Brush.Color := $00F7F0EA //$00BFD8D8
      else
        GridProdutosFiltrados.Canvas.Brush.Color := GridProdutosFiltrados.Color;
    end;

  GridProdutosFiltrados.Canvas.font.Color := clBlack;
  GridProdutosFiltrados.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTelaCotacaoCompraItemFiltro.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  FormTelaCotacaoCompraItemFiltro.KeyPreview := False;
end;

end.
