unit TelaGeracaoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, RxLookup, StdCtrls,
  Mask, ToolEdit, Buttons, jpeg, ExtCtrls, Grids, DBGrids, Placemnt, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoPedido = class(TFormTelaGeralTEMPLATE)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    ComboCliente: TRxDBLookupCombo;
    SQLOrcamento: TRxQuery;
    SQLOrcamentoPDVDA13ID: TStringField;
    SQLOrcamentoEMPRICOD: TIntegerField;
    SQLOrcamentoPDVDICOD: TIntegerField;
    SQLOrcamentoVENDICOD: TIntegerField;
    SQLOrcamentoCLIEA13ID: TStringField;
    SQLOrcamentoTRANICOD: TIntegerField;
    SQLOrcamentoPLRCICOD: TIntegerField;
    SQLOrcamentoPDVDDEMISSAO: TDateTimeField;
    SQLOrcamentoPDVDN2VLRFRETE: TBCDField;
    SQLOrcamentoPDVDA30NROPEDCOMP: TStringField;
    SQLOrcamentoPDVDA30COMPRADOR: TStringField;
    SQLOrcamentoPDVDCTIPO: TStringField;
    SQLOrcamentoPDVDCSTATUS: TStringField;
    SQLOrcamentoPDVDN2VLRDESC: TBCDField;
    SQLOrcamentoPDVDN2TOTPROD: TBCDField;
    SQLOrcamentoPDVDN2TOTPED: TBCDField;
    SQLOrcamentoPDVDTOBS: TStringField;
    SQLOrcamentoREGISTRO: TDateTimeField;
    SQLOrcamentoPENDENTE: TStringField;
    SQLOrcamentoPDVDN2VLRDESCPROM: TBCDField;
    SQLOrcamentoPDVDCTIPOFRETE: TStringField;
    SQLOrcamentoPDVDDENTREGA: TDateTimeField;
    SQLOrcamentoPDVDINROTALAO: TIntegerField;
    SQLOrcamentoPDVDCIMPORTADO: TStringField;
    DSSQLOrcamento: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    DBGridLista: TDBGrid;
    SQLOrcamentoCLIEA60RAZAOSOC: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLOrcamentoVENDA60NOME: TStringField;
    TblPedido: TTable;
    TblPedidoPDVDA13ID: TStringField;
    TblPedidoEMPRICOD: TIntegerField;
    TblPedidoPDVDICOD: TIntegerField;
    TblPedidoVENDICOD: TIntegerField;
    TblPedidoCLIEA13ID: TStringField;
    TblPedidoTRANICOD: TIntegerField;
    TblPedidoPLRCICOD: TIntegerField;
    TblPedidoPDVDDEMISSAO: TDateTimeField;
    TblPedidoPDVDN2VLRFRETE: TBCDField;
    TblPedidoPDVDA30NROPEDCOMP: TStringField;
    TblPedidoPDVDA30COMPRADOR: TStringField;
    TblPedidoPDVDCTIPO: TStringField;
    TblPedidoPDVDCSTATUS: TStringField;
    TblPedidoPDVDN2VLRDESC: TBCDField;
    TblPedidoPDVDN2TOTPROD: TBCDField;
    TblPedidoPDVDN2TOTPED: TBCDField;
    TblPedidoPDVDTOBS: TStringField;
    TblPedidoREGISTRO: TDateTimeField;
    TblPedidoPENDENTE: TStringField;
    TblPedidoPDVDN2VLRDESCPROM: TBCDField;
    TblPedidoPDVDCTIPOFRETE: TStringField;
    TblPedidoPDVDDENTREGA: TDateTimeField;
    TblPedidoPDVDINROTALAO: TIntegerField;
    TblPedidoPDVDCIMPORTADO: TStringField;
    TblPedidoCLIEA60RAZAOSOC: TStringField;
    TblPedidoVENDA60NOME: TStringField;
    BatchMove: TBatchMove;
    DSTblPedido: TDataSource;
    TblPedidoImportar: TBooleanField;
    CheckPeriodo: TCheckBox;
    FormStorage: TFormStorage;
    SQLPedido: TRxQuery;
    SQLPedidoItem: TRxQuery;
    UpdateSQLPedido: TUpdateSQL;
    SQLPedidoPDVDA13ID: TStringField;
    SQLPedidoEMPRICOD: TIntegerField;
    SQLPedidoPDVDICOD: TIntegerField;
    SQLPedidoVENDICOD: TIntegerField;
    SQLPedidoCLIEA13ID: TStringField;
    SQLPedidoTRANICOD: TIntegerField;
    SQLPedidoPLRCICOD: TIntegerField;
    SQLPedidoPDVDDEMISSAO: TDateTimeField;
    SQLPedidoPDVDN2VLRFRETE: TBCDField;
    SQLPedidoPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoPDVDA30COMPRADOR: TStringField;
    SQLPedidoPDVDCTIPO: TStringField;
    SQLPedidoPDVDCSTATUS: TStringField;
    SQLPedidoPDVDN2VLRDESC: TBCDField;
    SQLPedidoPDVDN2TOTPROD: TBCDField;
    SQLPedidoPDVDN2TOTPED: TBCDField;
    SQLPedidoPDVDTOBS: TStringField;
    SQLPedidoREGISTRO: TDateTimeField;
    SQLPedidoPENDENTE: TStringField;
    SQLPedidoPDVDN2VLRDESCPROM: TBCDField;
    SQLPedidoPDVDCTIPOFRETE: TStringField;
    SQLPedidoPDVDDENTREGA: TDateTimeField;
    SQLPedidoPDVDINROTALAO: TIntegerField;
    SQLPedidoPDVDCIMPORTADO: TStringField;
    UpdateSQLPedidoItem: TUpdateSQL;
    SQLPedidoItemPDVDA13ID: TStringField;
    SQLPedidoItemPVITIITEM: TIntegerField;
    SQLPedidoItemPRODICOD: TIntegerField;
    SQLPedidoItemPVITN3QUANT: TBCDField;
    SQLPedidoItemPVITN2VLRUNIT: TBCDField;
    SQLPedidoItemPVITN2PERCDESC: TBCDField;
    SQLPedidoItemPVITN2VLRDESC: TBCDField;
    SQLPedidoItemREGISTRO: TDateTimeField;
    SQLPedidoItemPENDENTE: TStringField;
    SQLPedidoItemPVITN3QUANTVEND: TBCDField;
    SQLPedidoItemPDVDA60OBS: TStringField;
    SQLPedidoItemPVITN2PERCCOMIS: TBCDField;
    SQLPedidoItemPDVDA255OBS1: TStringField;
    SQLPedidoItemLOTEA30NRO: TStringField;
    SQLOrcamentoItem: TRxQuery;
    SQLOrcamentoItemPDVDA13ID: TStringField;
    SQLOrcamentoItemPVITIITEM: TIntegerField;
    SQLOrcamentoItemPRODICOD: TIntegerField;
    SQLOrcamentoItemPVITN3QUANT: TBCDField;
    SQLOrcamentoItemPVITN2VLRUNIT: TBCDField;
    SQLOrcamentoItemPVITN2PERCDESC: TBCDField;
    SQLOrcamentoItemPVITN2VLRDESC: TBCDField;
    SQLOrcamentoItemREGISTRO: TDateTimeField;
    SQLOrcamentoItemPENDENTE: TStringField;
    SQLOrcamentoItemPVITN3QUANTVEND: TBCDField;
    SQLOrcamentoItemPDVDA60OBS: TStringField;
    SQLOrcamentoItemPVITN2PERCCOMIS: TBCDField;
    SQLOrcamentoItemPDVDA255OBS1: TStringField;
    SQLOrcamentoItemLOTEA30NRO: TStringField;
    Progress: TProgressBar;
    Label5: TLabel;
    BtnSelecionarDoc: TSpeedButton;
    BtnGeraPedido: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure BtnGeraPedidoClick(Sender: TObject);
    procedure SQLPedidoBeforePost(DataSet: TDataSet);
    procedure SQLPedidoItemBeforePost(DataSet: TDataSet);
    procedure SetaOrcamentoImportado(IDOrcamento:String);
  private
    OriginalOptions : TDBGridOptions;
    TotalPedido, TotalDescontoItem, TotalDescontoProm, TotalFrete : Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoPedido: TFormTelaGeracaoPedido;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}
procedure TFormTelaGeracaoPedido.SetaOrcamentoImportado(IDOrcamento:String);
var
  Query : TrxQuery;
begin
  try
    Query := TrxQuery.Create(DM);
    Query.DatabaseName := 'DB';
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('UPDATE PEDIDOVENDA SET Pendente="S", PDVDCIMPORTADO = "S" where PDVDA13ID = '+ '"' + IDOrcamento+ '"');
    Query.ExecSQL;
    Query.Free;
  except
    on E:Exception do
      begin
        Informa('Problemas ao mudar staus do orçamento! ERRO: ' + E.Message);
      end;
  end;
end;

procedure TFormTelaGeracaoPedido.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaGeracaoPedido.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLEmpresa.Active then SQLEmpresa.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
  ComboEmpresa.Value := EmpresaPadrao;
end;

procedure TFormTelaGeracaoPedido.BtnSelecionarDocClick(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Value = '' then
    begin
      Informa('Você deve selecionar uma empresa !');
      ComboEmpresa.SetFocus;
      Abort;
    end;

  if ComboCliente.Value = '' then
    begin
      Informa('Você deve selecionar um cliente !');
      ComboCliente.SetFocus;
      Abort;
    end;

  SQLOrcamento.Close;

  SQLOrcamento.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value;
  if not CheckPeriodo.Checked then
    SQLOrcamento.MacroByName('MData').Value  := 'PDVDDEMISSAO >= "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" AND ' +
                                                'PDVDDEMISSAO <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"'
  else
    SQLOrcamento.MacroByName('MData').Value  := '0=0';

  if ComboCliente.Value <> '' then
    SQLOrcamento.MacroByName('MCliente').Value  := 'CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLOrcamento.MacroByName('MCliente').Value  := '0=0';

  SQLOrcamento.Open;
  TblPedido.Close;
  try
    TblPedido.DeleteTable;
    TblPedido.CreateTable;
  except
    TblPedido.CreateTable;
  end;
  TblPedido.Open;

  BatchMove.Execute;

end;

procedure TFormTelaGeracaoPedido.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaGeracaoPedido.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaGeracaoPedido.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaGeracaoPedido.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaGeracaoPedido.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = VK_Return) and (DSTblPedido.DataSet.State in DSEditModes) then
    TblPedido.Post;
end;

procedure TFormTelaGeracaoPedido.BtnGeraPedidoClick(Sender: TObject);
begin
  inherited;
  if not SQLOrcamento.IsEmpty then
    begin
     DM.DB.StartTransaction;
     try
       //GERA CABEÇALHO DE PEDIDO
       if not SQLPedido.Active then SQLPedido.Open;
       SQLPedido.Append;
       SQLPedidoEMPRICOD.AsInteger      := StrToInt(EmpresaPadrao);
       SQLPedidoVENDICOD.AsVariant      := SQLOrcamentoVENDICOD.AsVariant;
       SQLPedidoCLIEA13ID.AsString      := SQLOrcamentoCLIEA13ID.AsString;
       SQLPedidoTRANICOD.AsVariant      := SQLOrcamentoTRANICOD.AsVariant;
       SQLPedidoPLRCICOD.AsVariant      := SQLOrcamentoPLRCICOD.AsVariant;
       SQLPedidoPDVDDEMISSAO.AsString   := FormatDateTime('dd/mm/yyyy',Now);
       SQLPedidoPDVDCTIPO.AsString      := 'P';
       SQLPedidoPDVDCSTATUS.AsString    := 'A';
       SQLPedidoPDVDTOBS.AsString       :=  SQLOrcamentoPDVDTOBS.AsString;
       SQLPedidoPDVDN2VLRFRETE.AsFloat  :=  SQLOrcamentoPDVDN2VLRFRETE.AsFloat;
       SQLPedidoPDVDN2VLRDESC.AsFloat   :=  SQLOrcamentoPDVDN2VLRDESC.AsFloat;
       SQLPedidoREGISTRO.AsDateTime     := Now;
       SQLPedidoPENDENTE.AsString       := 'S';
       SQLPedido.Post;
       TblPedido.First;
       Progress.Min := 0;
       Progress.Max := TblPedido.RecordCount;
       Progress.Position := 0;
        While not TblPedido.Eof do
          begin
            if TblPedidoImportar.AsBoolean then
              begin
                TotalDescontoProm := TotalDescontoProm + TblPedidoPDVDN2VLRDESCPROM.AsFloat;
                TotalFrete        := TotalFrete + TblPedidoPDVDN2VLRFRETE.AsFloat;
                SQLOrcamentoItem.Close;
                SQLOrcamentoItem.Open;
                SQLOrcamentoItem.First;
                if not SQLPedidoItem.Active then SQLPedidoItem.Open;
                while not SQLOrcamentoItem.Eof do
                  begin
                    SQLPedidoItem.Append;
                    SQLPedidoItemPDVDA13ID.AsString      := SQLPedidoPDVDA13ID.AsString;
                    SQLPedidoItemPRODICOD.AsInteger      := SQLOrcamentoItemPRODICOD.AsInteger;
                    SQLPedidoItemPVITN3QUANT.AsFloat     := SQLOrcamentoItemPVITN3QUANT.AsFloat;
                    SQLPedidoItemPVITN2VLRUNIT.AsFloat   := SQLOrcamentoItemPVITN2VLRUNIT.AsFloat;
                    SQLPedidoItemPVITN2PERCDESC.AsFloat  := SQLOrcamentoItemPVITN2PERCDESC.AsFloat;
                    SQLPedidoItemPVITN2VLRDESC.AsFloat   := SQLOrcamentoItemPVITN2VLRDESC.AsFloat;
                    SQLPedidoItemPDVDA60OBS.AsString     := SQLOrcamentoItemPDVDA60OBS.AsString;
                    SQLPedidoItemPDVDA255OBS1.AsString   := SQLOrcamentoItemPDVDA255OBS1.AsString;
                    SQLPedidoItemLOTEA30NRO.AsString     := SQLOrcamentoItemLOTEA30NRO.AsString;
                    SQLPedidoItemPVITN2PERCCOMIS.AsFloat := SQLOrcamentoItemPVITN2PERCCOMIS.AsFloat;
                    SQLPedidoItemPENDENTE.AsString       := 'S';
                    SQLPedidoItemREGISTRO.AsDateTime     := Now;
                    SQLPedidoItem.Post;
                    SQLPedidoItem.ApplyUpdates;
                    SQLOrcamentoItem.Next;
                  end;
              end;
            Progress.Position := Progress.Position + 1;
            Progress.Update;
            if TblPedidoImportar.AsBoolean then
              begin
                // MUDA STATUS DO ORCAMENTO PARA "IMPORTADO" PARA QUE NAO SEJA IMPORTADO NOVAMENTE
                SetaOrcamentoImportado(TblPedidoPDVDA13ID.AsString);
                //////////////////////////////////////////////////////////////////////////////////
                TblPedido.Delete;
              end
            else
              TblPedido.Next;
          end;
       SQLPedido.Edit;
       SQLPedidoPDVDN2TOTPROD.AsFloat := TotalPedido - TotalDescontoItem;
       SQLPedidoPDVDN2TOTPED.AsFloat  := (TotalPedido + TotalFrete) - (TotalDescontoProm + TotalDescontoItem);
       SQLPedido.Post;
       if not SQLPedidoItem.IsEmpty then
         begin
           SQLPedido.ApplyUpdates;
           DM.DB.Commit;
           Informa('PEDIDO GERADO COM SUCESSO! ID: ' + SQLPedidoPDVDA13ID.AsString);
           SQLPedido.Close;
           SQLPedidoItem.Close;
         end
       else
         begin
           SQLPedido.CancelUpdates;
           DM.DB.Rollback;
           Informa('Nenhum orçamento foi selecionado ou não possui itens, a operação será cancelada!');
         end;
     except
       on E: Exception do
       begin
         DM.DB.Rollback ;
         Informa('Erro: ' + #13 + E.Message) ;
       end ;
     end;
   end
  else
    Informa('Nenhum orçamento foi selecionado, a operação será cancelada!');
  Progress.Position := 0;
end;

procedure TFormTelaGeracaoPedido.SQLPedidoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('PEDIDOVENDA',Nil,DataSet,2,0);
end;

procedure TFormTelaGeracaoPedido.SQLPedidoItemBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('PEDIDOVENDAITEM',Nil,DataSet,0,1);
  // CALCULA TOTAIS CABECALHO;
  TotalPedido   := TotalPedido + (SQLPedidoItemPVITN3QUANT.AsFloat * SQLPedidoItemPVITN2VLRUNIT.AsFloat);
  TotalDescontoItem := TotalDescontoItem + (SQLPedidoItemPVITN2VLRDESC.AsFloat);
end;

end.

