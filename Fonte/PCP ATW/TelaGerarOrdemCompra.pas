unit TelaGerarOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ToolEdit, Buttons, ConerBtn, jpeg,
  ExtCtrls, DB, DBTables, RxQuery, Menus, ImgList, RXCtrls;

type
  PDadosInsumo = ^TDadosInsumo;
  TDadosInsumo = Record
     Cod : String;
     Nome: String;
     Qtde: Double;
     Forn: Integer;
  end;

  TFormTelaGerarOrdemCompra = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    PanelCentral: TPanel;
    pnInferior: TPanel;
    pnOrdemProducao: TPanel;
    Label1: TLabel;
    pnLotes: TPanel;
    Label2: TLabel;
    lstFornecedores: TListBox;
    pnControles: TPanel;
    btInclui: TConerBtn;
    btRemove: TConerBtn;
    lstInsumos: TListBox;
    Label5: TLabel;
    SQLFornecedores: TRxQuery;
    SQLFornecedoresFORNA60RAZAOSOC: TStringField;
    SQLFornecedoresFORNICOD: TIntegerField;
    PopupMenu: TPopupMenu;
    mnEditarQuantidade: TMenuItem;
    treOrdemCompra: TTreeView;
    SQLOrdemCompra: TRxQuery;
    SQLOrdemCompraItem: TRxQuery;
    dsSQLOrdemCompra: TDataSource;
    dsSQLOrdemCompraItem: TDataSource;
    SQLOrdemCompraItemPDCPA13ID: TStringField;
    SQLOrdemCompraItemPCITIPOS: TIntegerField;
    SQLOrdemCompraItemPRODICOD: TIntegerField;
    SQLOrdemCompraItemPCITN3QTDBONIF: TBCDField;
    SQLOrdemCompraItemPCITN3CAPEMBAL: TBCDField;
    SQLOrdemCompraItemPCITN3QTDEMBAL: TBCDField;
    SQLOrdemCompraItemPCITN3QTDENTR: TBCDField;
    SQLOrdemCompraItemPCITN3VLREMBAL: TBCDField;
    SQLOrdemCompraItemPCITN3VLRUNIT: TBCDField;
    SQLOrdemCompraItemPCITN3PERVIPI: TBCDField;
    SQLOrdemCompraItemPCITN3VLRIPI: TBCDField;
    SQLOrdemCompraItemPCITN3VLRICM: TBCDField;
    SQLOrdemCompraItemPCITN3PERICM: TBCDField;
    SQLOrdemCompraItemPCITN3PERCDESC: TBCDField;
    SQLOrdemCompraItemPCITN3VLRDESC: TBCDField;
    SQLOrdemCompraItemPENDENTE: TStringField;
    SQLOrdemCompraItemREGISTRO: TDateTimeField;
    SQLOrdemCompraPDCPA13ID: TStringField;
    SQLOrdemCompraPDCPICOD: TIntegerField;
    SQLOrdemCompraEMPRICOD: TIntegerField;
    SQLOrdemCompraEMPRICODDEST: TIntegerField;
    SQLOrdemCompraFORNICOD: TIntegerField;
    SQLOrdemCompraPDCPDEMIS: TDateTimeField;
    SQLOrdemCompraPDCPCSTATUS: TStringField;
    SQLOrdemCompraPDCPA10NROFORN: TStringField;
    SQLOrdemCompraPDCPN2TOTITENS: TBCDField;
    SQLOrdemCompraPDCPN3TOTDESC: TBCDField;
    SQLOrdemCompraPDCPDPREVENTREGA: TDateTimeField;
    SQLOrdemCompraPDCPDBASEFAT: TDateTimeField;
    SQLOrdemCompraPDCPN2VLRENCARGO: TBCDField;
    SQLOrdemCompraPDCPN2VLRIPI: TBCDField;
    SQLOrdemCompraPDCPN2DESCPROM: TBCDField;
    SQLOrdemCompraPDCPN2VLRFRETE: TBCDField;
    SQLOrdemCompraPDCPA5TIPOFRETE: TStringField;
    SQLOrdemCompraPDCPA255OBS: TStringField;
    SQLOrdemCompraTRANICOD: TIntegerField;
    SQLOrdemCompraPDCPNOMECOMPRADOR: TStringField;
    SQLOrdemCompraPDCPNOMEVENDEDOR: TStringField;
    SQLOrdemCompraPENDENTE: TStringField;
    SQLOrdemCompraREGISTRO: TDateTimeField;
    SQLOrdemCompraPLPGICOD: TIntegerField;
    ImageList: TImageList;
    btGravar: TRxSpeedButton;
    btCancelar: TRxSpeedButton;
    procedure SeparaDados(Dados : string; Campos : Integer);
    procedure lstInsumosClick(Sender: TObject);
    procedure SQLFornecedoresAfterOpen(DataSet: TDataSet);
    procedure btIncluiClick(Sender: TObject);
    procedure mnEditarQuantidadeClick(Sender: TObject);
    procedure lstFornecedoresClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure treOrdemCompraChange(Sender: TObject; Node: TTreeNode);
    procedure SQLOrdemCompraItemNewRecord(DataSet: TDataSet);
    procedure SQLOrdemCompraItemAfterPost(DataSet: TDataSet);
    procedure SQLOrdemCompraItemPRODICODChange(Sender: TField);
    procedure SQLOrdemCompraNewRecord(DataSet: TDataSet);
    procedure SQLOrdemCompraBeforePost(DataSet: TDataSet);
    procedure SQLOrdemCompraItemBeforePost(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure treOrdemCompraCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btCancelarClick(Sender: TObject);
    procedure treOrdemCompraDblClick(Sender: TObject);
    procedure treOrdemCompraAddition(Sender: TObject; Node: TTreeNode);
    procedure treOrdemCompraDeletion(Sender: TObject; Node: TTreeNode);
    procedure treOrdemCompraMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Cod, Nome, Qtde : String;
    Insumo          : PDadosInsumo;
    FornEscolhidos  : TStringList;
    IDAtual         : String;
  public
    { Public declarations }
  end;

var
  FormTelaGerarOrdemCompra: TFormTelaGerarOrdemCompra;

implementation

uses UnitLibrary, DataModulo, VarSYS;

{$R *.dfm}

procedure TFormTelaGerarOrdemCompra.SeparaDados(Dados : string; Campos : Integer);
begin
   if Dados <> '' then
      begin
          Cod   := Copy(Dados, 0, Pos('-',Dados) - 2);
          Nome  := Copy(Dados, Length(Cod) + 4, Pos('>',Dados) - Length(Cod) - 4);
          if Campos = 3 then
             Qtde  := Copy(Dados, Pos('>',Dados) + 2, Length(Dados) - Pos('>',Dados));
      end;

end;

procedure TFormTelaGerarOrdemCompra.lstInsumosClick(Sender: TObject);
begin
   SeparaDados(lstInsumos.Items.Strings[lstInsumos.ItemIndex], 3);
   SQLFornecedores.Close;
   SQLFornecedores.MacroByName('MFiltro').AsString := ' PRODUTOFORNECEDOR.PRODICOD = ' + Cod;
   SQLFornecedores.Open;
   btInclui.Enabled := (lstFornecedores.ItemIndex <> -1) and (lstInsumos.ItemIndex <> -1);
end;

procedure TFormTelaGerarOrdemCompra.SQLFornecedoresAfterOpen(
  DataSet: TDataSet);
begin
   SQLFornecedores.First;
   lstFornecedores.Clear;
   while not SQLFornecedores.Eof do
      begin
         lstFornecedores.Items.Add(SQLFornecedoresFORNICOD.AsString + ' - ' + SQLFornecedoresFORNA60RAZAOSOC.AsString);
         SQLFornecedores.Next;
      end;
end;

procedure TFormTelaGerarOrdemCompra.btIncluiClick(Sender: TObject);
Var NovoForn, NovoInsumo   : TTreeNode;
    IndexArvore, I : Integer;
begin
   if (lstFornecedores.ItemIndex <> -1) and (lstInsumos.ItemIndex <> -1) then
      begin
         SeparaDados(lstInsumos.Items.Strings[lstInsumos.ItemIndex], 3);
         IndexArvore := -1;
         if FornEscolhidos <> Nil then
            begin
               if FornEscolhidos.Count > 0 then
                  begin
                     if FornEscolhidos.IndexOf(lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]) > -1 then
                        begin
                           IndexArvore := FornEscolhidos.IndexOf(lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]);
                           NovoForn := treOrdemCompra.Items.Item[IndexArvore];
                        end;
                  end;
            end;

         if IndexArvore = -1 then
            NovoForn := treOrdemCompra.Items.AddChild(Nil, lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]);

         NovoForn.ImageIndex    := 0;
         NovoForn.SelectedIndex := 0;


         if FornEscolhidos = Nil then
            FornEscolhidos :=  TStringList.Create;

         if FornEscolhidos.IndexOf(lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]) < 0 then
            FornEscolhidos.Add(lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]);

         New(Insumo);
         PDadosInsumo(Insumo).Cod  := Cod;
         PDadosInsumo(Insumo).Nome := Nome;
         PDadosInsumo(Insumo).Qtde := StrToFloat(Qtde);
         PDadosInsumo(Insumo).Forn := StrToInt(Trim(Copy(lstFornecedores.Items.Strings[lstFornecedores.ItemIndex], 0, Pos('-', lstFornecedores.Items.Strings[lstFornecedores.ItemIndex]) - 1)));

         NovoInsumo := treOrdemCompra.Items.AddChildObject(NovoForn, PDadosInsumo(Insumo).Nome + '  Qtde: ' + FormatFloat('#,###0.000', PDadosInsumo(Insumo).Qtde), Insumo);
         NovoInsumo.ImageIndex    := 1;
         NovoInsumo.SelectedIndex := 1;

         lstInsumos.Items.Delete(lstInsumos.ItemIndex);
         lstFornecedores.Items.Clear;
      end;
   btInclui.Enabled := (lstFornecedores.ItemIndex <> -1) and (lstInsumos.ItemIndex <> -1);      
end;

procedure TFormTelaGerarOrdemCompra.mnEditarQuantidadeClick(
  Sender: TObject);
Var NovaQtdeD : Double;
    NovaQtde : String;
    NaoContinua : Boolean;
Label Inicio;
begin
    Inicio:
    NaoContinua := False;
    NovaQtde    := FloatToStr(PDadosInsumo(treOrdemCompra.Selected.Data).Qtde);
    if InputQuery('Indique a nova quantidade', 'Quantidade', NovaQtde) then
       begin
           try
              NovaQtdeD := StrToFloat(NovaQtde);
            except
              Informa('Você deve informar um valor numérico.');
              NaoContinua := True;
            end;
            if NaoContinua then
               goto Inicio;
            PDadosInsumo(treOrdemCompra.Selected.Data).Qtde := NovaQtdeD;
            treOrdemCompra.Selected.Text := Copy(treOrdemCompra.Selected.Text, 0, Pos('Qtde:', treOrdemCompra.Selected.Text) + 5) + FormatFloat('#,###0.000', NovaQtdeD);
        end;
end;

procedure TFormTelaGerarOrdemCompra.lstFornecedoresClick(Sender: TObject);
begin
   btInclui.Enabled := (lstFornecedores.ItemIndex <> -1) and (lstInsumos.ItemIndex <> -1);
end;

procedure TFormTelaGerarOrdemCompra.btRemoveClick(Sender: TObject);
Var NodoPai : TTreeNode;
begin
   if (treOrdemCompra.Selected <> Nil) and (treOrdemCompra.Selected.Level <> 0) then
      begin
         lstInsumos.Items.Add(PDadosInsumo(treOrdemCompra.Selected.Data).Cod + ' - ' + PDadosInsumo(treOrdemCompra.Selected.Data).Nome + ' > ' + FormatFloat('#,###0.000', PDadosInsumo(treOrdemCompra.Selected.Data).Qtde));
         NodoPai := treOrdemCompra.Selected.Parent;
         treOrdemCompra.Items.Delete(treOrdemCompra.Selected);
         if not NodoPai.HasChildren then
            begin
              FornEscolhidos.Delete(FornEscolhidos.IndexOf(NodoPai.Text));
              treOrdemCompra.Items.Delete(NodoPai);
            end;
      end;
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraChange(Sender: TObject;
  Node: TTreeNode);
begin
   btRemove.Enabled := (treOrdemCompra.Items.Count > 0) and (treOrdemCompra.Selected.Level <> 0);
   btGravar.Enabled := (treOrdemCompra.Items.Count > 0);
   mnEditarQuantidade.Enabled := (treOrdemCompra.Items.Count > 0) and (treOrdemCompra.Selected.Level = 1);
end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraItemNewRecord(
  DataSet: TDataSet);
begin
    SQLOrdemCompraItemPDCPA13ID.Value := SQLOrdemCompraPDCPA13ID.Value;
    SQLOrdemCompraItemPCITN3QTDBONIF.asFloat      := 0;
    SQLOrdemCompraItemPCITN3CAPEMBAL.asFloat      := 0;
    SQLOrdemCompraItemPCITN3QTDEMBAL.asFloat      := 0;
    SQLOrdemCompraItemPCITN3QTDENTR.asFloat       := 0;
    SQLOrdemCompraItemPCITN3VLREMBAL.asFloat      := 0;
    SQLOrdemCompraItemPCITN3VLRUNIT.asFloat       := 0;
    SQLOrdemCompraItemPCITN3PERVIPI.asFloat       := 0;
    SQLOrdemCompraItemPCITN3VLRIPI.asFloat        := 0;
    SQLOrdemCompraItemPCITN3VLRICM.asFloat        := 0;
    SQLOrdemCompraItemPCITN3PERICM.asFloat        := 0;
    SQLOrdemCompraItemPCITN3PERCDESC.asFloat      := 0;
    SQLOrdemCompraItemPCITN3VLRDESC.asFloat       := 0;
end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraItemAfterPost(
  DataSet: TDataSet);
begin
  SQLOrdemCompraItem.DataSource.DataSet.Edit;
  SQLOrdemCompraItem.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat :=
       (SQLOrdemCompraItem.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat + SQLOrdemCompraItemPCITN3VLRUNIT.AsFloat);
  SQLOrdemCompraItem.DataSource.DataSet.Post;
end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraItemPRODICODChange(
  Sender: TField);
begin
    DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [PDadosInsumo(treOrdemCompra.Selected.Data).Cod], 1);

    If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3CAPEMBAL.asFloat := DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat;
    If SQLOrdemCompraItemPCITN3CAPEMBAL.asFloat = 0 Then
      SQLOrdemCompraItemPCITN3CAPEMBAL.asFloat := 1;
    If DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3VLRUNIT.asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat;
    If DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3PERVIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
    If SQLOrdemCompraItemPCITN3VLRUNIT.asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3VLREMBAL.asFloat := SQLOrdemCompraItemPCITN3VLRUNIT.asFloat*SQLOrdemCompraItemPCITN3CAPEMBAL.asFloat;
    If SQLOrdemCompraItemPCITN3PERVIPI.asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3VLRIPI.asFloat := ((SQLOrdemCompraItemPCITN3VLREMBAL.AsFloat * SQLOrdemCompraItemPCITN3QTDEMBAL.asFloat) - SQLOrdemCompraItemPCITN3VLRDESC.AsFloat)* (SQLOrdemCompraItemPCITN3PERVIPI.asFloat / 100);
    If SQLOrdemCompraItemPCITN3PERICM.asFloat <> 0 Then
      SQLOrdemCompraItemPCITN3PERICM.asVariant :=  StrToFloat(SQLLocate('ICMS', 'ICMSICOD', 'ICMSN2ALIQUOTA', DM.SQLTemplate.FieldByName('ICMSICOD').AsString));
    SQLOrdemCompraItemPCITN3VLRICM.asFloat := (SQLOrdemCompraItemPCITN3VLREMBAL.AsFloat * SQLOrdemCompraItemPCITN3QTDEMBAL.asFloat) - SQLOrdemCompraItemPCITN3VLRDESC.AsFloat * (SQLOrdemCompraItemPCITN3PERICM.asFloat / 100);

end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraNewRecord(
  DataSet: TDataSet);
begin
  SQLOrdemCompraPDCPCSTATUS.Value      := 'A';
  SQLOrdemCompraPDCPA5TIPOFRETE.Value  := 'C';
  SQLOrdemCompraPDCPDEMIS.Value        := Date;
  SQLOrdemCompraPDCPN2TOTITENS.Value   := 0;
  SQLOrdemCompraPDCPN3TOTDESC.Value    := 0;
  SQLOrdemCompraPDCPN2VLRENCARGO.Value := 0;
  SQLOrdemCompraPDCPN2VLRIPI.Value     := 0;
  SQLOrdemCompraPDCPN2DESCPROM.Value   := 0;
  SQLOrdemCompraPDCPN2VLRFRETE.Value   := 0;
  SQLOrdemCompraEMPRICOD.AsInteger     := EmpresaCorrente;
end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraBeforePost(
  DataSet: TDataSet);
begin
    if SQLOrdemCompra.State in [dsInsert] then
       DM.CodigoAutomatico('PEDIDOCOMPRA', DSSQLOrdemCompra, SQLOrdemCompra, 1, 0);
end;

procedure TFormTelaGerarOrdemCompra.SQLOrdemCompraItemBeforePost(
  DataSet: TDataSet);
begin
    DM.CodigoAutomatico('PEDIDOCOMPRAITEM', dsSQLOrdemCompraItem, SQLOrdemCompraItem, 1, 0);
end;

procedure TFormTelaGerarOrdemCompra.btGravarClick(Sender: TObject);
Var I : Integer;
begin
    IDAtual := '';
    for I := 0 to treOrdemCompra.Items.Count -1 do
       begin
           treOrdemCompra.Select(treOrdemCompra.Items.Item[I]);
           case treOrdemCompra.Selected.Level of
               0 : begin
                      if not SQLOrdemCompra.Active then SQLOrdemCompra.Active := True;
                      SQLOrdemCompra.Append;
                      SQLOrdemCompraFORNICOD.AsInteger := StrToInt(Trim(Copy(treOrdemCompra.Selected.Text, 0, Pos('-', treOrdemCompra.Selected.Text) - 1)));
                      SQLOrdemCompraEMPRICODDEST.AsInteger := EmpresaCorrente;
                      SQLOrdemCompra.Post;

                      IDAtual := SQLOrdemCompraPDCPA13ID.AsString;

                      SQLOrdemCompra.Close;
                      SQLOrdemCompra.MacroByName('MFiltro').AsString := ' PDCPA13ID = "' + IDAtual + '"';
                      SQLOrdemCompra.Open;
                   end;
               1 : begin
                      if not SQLOrdemCompraItem.Active then SQLOrdemCompraItem.Active := True;
                      if SQLOrdemCompra.Locate('PDCPA13ID', IDAtual, [loCaseInsensitive]) then
                         begin
                            SQLOrdemCompraItem.Append;
                            SQLOrdemCompraItemPCITN3QTDEMBAL.AsFloat := PDadosInsumo(treOrdemCompra.Selected.Data).Qtde;
                            SQLOrdemCompraItemPRODICOD.AsInteger     := StrToInt(PDadosInsumo(treOrdemCompra.Selected.Data).Cod);
                            SQLOrdemCompraItem.Post;
                         end
                      else
                         begin
                            Informa('Orroreu um erro ao Inserir o Registro.');
                            Abort;
                         end;
                   end;
           end;
       end;
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
Var Rect : TRect;
begin
  inherited;
  Rect := Node.DisplayRect(True);
  if Node.Level = 0 then
     begin
        treOrdemCompra.Canvas.Font.Color := clBlack;
        treOrdemCompra.Canvas.Font.Style := [fsBold];
     end
  else
     begin
        treOrdemCompra.Canvas.Font.Color := clNavy;
        treOrdemCompra.Canvas.Font.Style := [];
     end;

  if cdsSelected  in State then
     treOrdemCompra.Canvas.Brush.Color := $00FBE7DB;
end;

procedure TFormTelaGerarOrdemCompra.btCancelarClick(Sender: TObject);
begin
     ModalResult := mrCancel; 
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraDblClick(
  Sender: TObject);
begin
    if btRemove.Enabled then
       btRemove.Click;
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraAddition(Sender: TObject;
  Node: TTreeNode);
begin
   btGravar.Enabled := (treOrdemCompra.Items.Count > 0);
    if Node.Parent <> Nil then
       Node.Parent.Expand(True);
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraDeletion(Sender: TObject;
  Node: TTreeNode);
begin
   btGravar.Enabled := (treOrdemCompra.Items.Count > 1);
end;

procedure TFormTelaGerarOrdemCompra.treOrdemCompraMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
   treOrdemCompraChange(treOrdemCompra, Nil);
end;

end.
