unit TelaGerarOrdemProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ConerBtn, ComCtrls, jpeg, ExtCtrls, DB,
  DBTables, RxQuery, Mask, ToolEdit, RXCtrls;

type
  TFormTelaGerarOrdemProducao = class(TForm)
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
    lstLotes: TListBox;
    treOrdemProducao: TTreeView;
    pnControles: TPanel;
    btInclui: TConerBtn;
    btRemove: TConerBtn;
    btIncluiTodos: TConerBtn;
    btRemoveTodos: TConerBtn;
    btNovaOrdem: TConerBtn;
    SQLOrdemProducao: TRxQuery;
    DSSQLOrdemProducao: TDataSource;
    SQLOrdemProducaoItem: TRxQuery;
    DSSQLOrdemProducaoItem: TDataSource;
    SQLOrdemProducaoItemOPITICOD: TIntegerField;
    SQLOrdemProducaoItemORPRA13ID: TStringField;
    SQLOrdemProducaoItemPRLTA13ID: TStringField;
    SQLOrdemProducaoItemREGISTRO: TDateTimeField;
    SQLOrdemProducaoItemPENDENTE: TStringField;
    SQLOrdemProducaoItemORPRISEQUENCIA: TIntegerField;
    pnPrevisoes: TPanel;
    dtFinal: TDateEdit;
    dtInicio: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    dtpHoraInicio: TDateTimePicker;
    dtpHoraTermino: TDateTimePicker;
    SQLOrdemProducaoORPRA13ID: TStringField;
    SQLOrdemProducaoORPRICOD: TIntegerField;
    SQLOrdemProducaoEMPRICOD: TIntegerField;
    SQLOrdemProducaoORPRNQTDETOTAL: TBCDField;
    SQLOrdemProducaoORPRDINICIO: TDateTimeField;
    SQLOrdemProducaoORPRDPREVISAO: TDateTimeField;
    SQLOrdemProducaoORPRDTERMINO: TDateTimeField;
    SQLOrdemProducaoREGISTRO: TDateTimeField;
    SQLOrdemProducaoPENDENTE: TStringField;
    SQLOrdemProducaoORPRCSTATUS: TStringField;
    SQLTemp: TRxQuery;
    btGravar: TRxSpeedButton;
    btCancelar: TRxSpeedButton;
    SQLPedidosLotes: TRxQuery;
    SQLPedidosLotesORPRA13ID: TStringField;
    SQLPedidosLotesPRLTA13ID: TStringField;
    SQLPedidosLotesOPIDICOD: TIntegerField;
    SQLPedidosLotesPDVDA13ID: TStringField;
    SQLPedidosLotesREGISTRO: TDateTimeField;
    SQLPedidosLotesPENDENTE: TStringField;
    dsSQLPedidosLotes: TDataSource;
    procedure lstLotesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure treOrdemProducaoDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure lstLotesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btIncluiClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btNovaOrdemClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btIncluiTodosClick(Sender: TObject);
    procedure btRemoveTodosClick(Sender: TObject);
    procedure SQLOrdemProducaoItemAfterPost(DataSet: TDataSet);
    procedure lstLotesDblClick(Sender: TObject);
    procedure lstLotesClick(Sender: TObject);
    procedure treOrdemProducaoChange(Sender: TObject; Node: TTreeNode);
    procedure treOrdemProducaoCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure treOrdemProducaoAddition(Sender: TObject; Node: TTreeNode);
    procedure SQLOrdemProducaoItemBeforePost(DataSet: TDataSet);
    procedure SQLPedidosLotesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    TotalOrdemProducao : Integer;
  public
    { Public declarations }
    PedidosProdutosLotes : TStringList;
    Gerar        : Boolean;
  end;

var
  FormTelaGerarOrdemProducao: TFormTelaGerarOrdemProducao;

implementation

uses TelaPedidosVenda, DataModulo, VarSYS;

{$R *.dfm}

procedure TFormTelaGerarOrdemProducao.lstLotesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFormTelaGerarOrdemProducao.treOrdemProducaoDragDrop(Sender,
  Source: TObject; X, Y: Integer);
Var NovoNodo : TTreeNode;
begin
    if (Source = lstLotes) and Gerar then
       begin
          if treOrdemProducao.GetNodeAt(X,Y) <> Nil then
             if treOrdemProducao.GetNodeAt(X,Y).Text[1] = 'O' then
                begin
                   treOrdemProducao.Items.AddChild(treOrdemProducao.GetNodeAt(X,Y), lstLotes.Items.Strings[lstLotes.ItemIndex]);
                   lstLotes.Items.Delete(lstLotes.ItemIndex);
                end;
       end;
end;

procedure TFormTelaGerarOrdemProducao.lstLotesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
    if (Source = treOrdemProducao) and Gerar then
       begin
          if not treOrdemProducao.Selected.HasChildren and not (treOrdemProducao.Selected.Text[1] = 'O') then
             begin
               lstLotes.Items.Add(treOrdemProducao.Selected.Text);
               treOrdemProducao.Selected.Delete;
             end;
       end;
end;

procedure TFormTelaGerarOrdemProducao.btIncluiClick(Sender: TObject);
begin
    if (treOrdemProducao.Selected <> Nil) and (lstLotes.ItemIndex <> -1) and Gerar then
      if treOrdemProducao.Selected.Text[1] = 'O' then
         begin
            treOrdemProducao.Items.AddChild(treOrdemProducao.Selected, lstLotes.Items.Strings[lstLotes.ItemIndex]);
            lstLotes.Items.Delete(lstLotes.ItemIndex);
         end;
    treOrdemProducaoChange(treOrdemProducao, treOrdemProducao.Selected);
end;

procedure TFormTelaGerarOrdemProducao.btRemoveClick(Sender: TObject);
begin
   if (treOrdemProducao.Selected <> Nil) and Gerar then
      if treOrdemProducao.Selected.Text[1] <> 'O' then
          begin
             lstLotes.Items.Add(treOrdemProducao.Selected.Text);
             treOrdemProducao.Selected.Delete;
          end;
   treOrdemProducaoChange(treOrdemProducao, treOrdemProducao.Selected);
end;

procedure TFormTelaGerarOrdemProducao.btCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFormTelaGerarOrdemProducao.FormCreate(Sender: TObject);
begin
    TotalOrdemProducao := 1;
    Gerar              := True;
end;

procedure TFormTelaGerarOrdemProducao.btNovaOrdemClick(Sender: TObject);
begin
    if Gerar then
       begin
          TotalOrdemProducao := TotalOrdemProducao + 1;
          treOrdemProducao.Items.AddChild(Nil,'Ordem ' + IntToStr(TotalOrdemProducao));
       end;
end;

procedure TFormTelaGerarOrdemProducao.btGravarClick(Sender: TObject);
Var I, Sequencia : Integer;
    ID: String;
begin
     if not SQLOrdemProducao.Active then
        SQLOrdemProducao.Active := True;
     if not SQLOrdemProducaoItem.Active then
        SQLOrdemProducaoItem.Active := True;

     I := 0;
     while I < treOrdemProducao.Items.Count do
        begin
           try
             if (treOrdemProducao.Items.Item[I] <> Nil) and (treOrdemProducao.Items.Item[I].GetNext <> Nil) then
                 begin
                    if (treOrdemProducao.Items.Item[I].Text[1] = 'O') and (treOrdemProducao.Items.Item[I + 1].Text[1] <> 'O') then
                       begin
                          SQLOrdemProducao.Append;
                          SQLOrdemProducaoEMPRICOD.AsInteger := EmpresaCorrente;
                          DM.CodigoAutomatico('ORDEMPRODUCAO', DSSQLOrdemProducao, SQLOrdemProducao, 2, 0);
                          SQLOrdemProducaoORPRNQTDETOTAL.AsInteger  := 0;
                          SQLOrdemProducaoORPRDINICIO.AsDateTime   := dtInicio.Date + dtpHoraInicio.DateTime;
                          SQLOrdemProducaoORPRDTERMINO.AsDateTime  := dtFinal.Date + dtpHoraTermino.DateTime;
                          SQLOrdemProducaoORPRDPREVISAO.AsDateTime := dtFinal.Date + dtpHoraTermino.DateTime;
                          SQLOrdemProducaoORPRCSTATUS.AsString     := 'A';
                          SQLOrdemProducaoREGISTRO.AsDateTime      := Now;
                          SQLOrdemProducaoPENDENTE.AsString        := 'S';
                          ID := SQLOrdemProducaoORPRA13ID.AsString;
                          Sequencia := 0;
                          SQLOrdemProducao.Post;
                          treOrdemProducao.Items.Item[I].Text := 'Ordem Produção: ' + ID;
                       end;
                 end;
           except
           end;
           if treOrdemProducao.Items.Item[I].Text[1] <> 'O' then
              begin
                 Sequencia := Sequencia + 1;
                 SQLOrdemProducaoItem.Append;
                 SQLOrdemProducaoItemORPRA13ID.AsString   := ID;
                 SQLOrdemProducaoItemPRLTA13ID.AsString   := Copy(treOrdemProducao.Items.Item[I].Text, 0, 13);
                 SQLOrdemProducaoItemORPRISEQUENCIA.AsInteger := Sequencia;
                 SQLOrdemProducaoItem.Post;
              end;
           I := I + 1;
        end;
     btGravar.Enabled := False;
     Gerar            := False;
end;

procedure TFormTelaGerarOrdemProducao.btIncluiTodosClick(Sender: TObject);
Var I : Integer;
begin
   if treOrdemProducao.Selected <> Nil then
      if (treOrdemProducao.Selected.Text[1] = 'O') and Gerar then
         begin
            while 0 < lstLotes.Items.Count do
               begin
                  treOrdemProducao.Items.AddChild(treOrdemProducao.Selected, lstLotes.Items.Strings[0]);
                  lstLotes.Items.Delete(0);
               end;
         end;
   lstLotesClick(lstLotes);
end;

procedure TFormTelaGerarOrdemProducao.btRemoveTodosClick(Sender: TObject);
Var I, Nivel : Integer;
    TodasOrdes : Boolean;
begin
   if not Gerar then
      Abort;
   try
      TodasOrdes := Application.MessageBox('Deseja remover TODOS os lotes de TODAS as Ordens de Produção?', 'Atenção', MB_YESNO + MB_ICONQUESTION + MB_SETFOREGROUND) = idYes;

      if (treOrdemProducao.Selected.Text[1] = 'O') then
         begin
            Nivel := treOrdemProducao.Selected.Level;
            treOrdemProducao.Select(treOrdemProducao.Selected.GetNext);
         end
      else
         begin
            for I := treOrdemProducao.Selected.AbsoluteIndex downto 0 do
               if (treOrdemProducao.Selected.Text[1] <> 'O') then
                  treOrdemProducao.Select(treOrdemProducao.Selected.GetPrev)
               else
                  Break;
            Nivel := treOrdemProducao.Selected.Level;
         end;


      if TodasOrdes then
         begin
            while 0 < treOrdemProducao.Items.Count do
               begin
                  if (Nivel = treOrdemProducao.Selected.Level) and not TodasOrdes then
                     Abort;

                  if treOrdemProducao.Selected.Text[1] <> 'O' then
                     begin
                       lstLotes.Items.Add(treOrdemProducao.Selected.Text);
                       treOrdemProducao.Selected.Delete;
                     end
                  else
                     if (treOrdemProducao.Selected.Text[1] = 'O') and
                        (not treOrdemProducao.Selected.HasChildren) then
                        treOrdemProducao.Selected.Delete
                  else
                     treOrdemProducao.Select(treOrdemProducao.Selected.GetNext);
               end;
            treOrdemProducao.Items.AddChild(Nil,'Ordem 1');
         end
      else
         begin
            while treOrdemProducao.Selected.HasChildren do
               begin
                  if treOrdemProducao.Selected.Item[0].Text[1] <> 'O' then
                     begin
                       lstLotes.Items.Add(treOrdemProducao.Selected.Item[0].Text);
                       treOrdemProducao.Selected.Item[0].Delete;
                     end;
               end;
            treOrdemProducao.Selected.Delete;
            if treOrdemProducao.Items.Count = 0 then
               treOrdemProducao.Items.AddChild(Nil,'Ordem 1');
         end;
      treOrdemProducaoChange(treOrdemProducao, treOrdemProducao.Selected);
   except
      if treOrdemProducao.Items.Count = 0 then
         treOrdemProducao.Items.AddChild(Nil,'Ordem 1');
      treOrdemProducaoChange(treOrdemProducao, treOrdemProducao.Selected);
   end;

end;

procedure TFormTelaGerarOrdemProducao.SQLOrdemProducaoItemAfterPost(
  DataSet: TDataSet);
begin
     SQLTemp.Close;
     SQLTemp.SQL.Text := 'update ORDEMPRODUCAO set ORPRNQTDETOTAL = (select count(*) from ORDEMPRODUCAOITEM where ORPRA13ID = "' + SQLOrdemProducaoItemORPRA13ID.AsString + '") ' +
                         'where ORPRA13ID = "' + SQLOrdemProducaoItemORPRA13ID.AsString + '"';
     SQLTemp.ExecSQL;
end;

procedure TFormTelaGerarOrdemProducao.lstLotesDblClick(Sender: TObject);
begin
   btInclui.Click;
end;

procedure TFormTelaGerarOrdemProducao.lstLotesClick(Sender: TObject);
begin
   btInclui.Enabled      := (lstLotes.ItemIndex <> -1) and Gerar and (treOrdemProducao.Selected <> Nil);
   btIncluiTodos.Enabled := (lstLotes.Items.Count > 0) and Gerar and (treOrdemProducao.Selected <> Nil);
end;

procedure TFormTelaGerarOrdemProducao.treOrdemProducaoChange(
  Sender: TObject; Node: TTreeNode);
begin
    if treOrdemProducao.Selected <> Nil then
       btRemove.Enabled      := (treOrdemProducao.Selected.Text[1] <> 'O') and Gerar
    else
       btRemove.Enabled      := False;

    btRemoveTodos.Enabled := (treOrdemProducao.Items.Count > 1) and Gerar;
    lstLotesClick(Nil);
    btGravar.Enabled      := (treOrdemProducao.Items.Count > 1) and Gerar;
end;

procedure TFormTelaGerarOrdemProducao.treOrdemProducaoCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
Var Rect : TRect;
begin
  Rect := Node.DisplayRect(True);
  if Node.Level = 0 then
     begin
        treOrdemProducao.Canvas.Font.Color := clBlack;
        treOrdemProducao.Canvas.Font.Style := [fsBold];
     end
  else
     begin
        treOrdemProducao.Canvas.Font.Color := clNavy;
        treOrdemProducao.Canvas.Font.Style := [];
     end;

  if cdsSelected  in State then
     treOrdemProducao.Canvas.Brush.Color := $00FBE7DB;
end;

procedure TFormTelaGerarOrdemProducao.treOrdemProducaoAddition(
  Sender: TObject; Node: TTreeNode);
begin
    if Node.Parent <> Nil then
       Node.Parent.Expand(True);
end;

procedure TFormTelaGerarOrdemProducao.SQLOrdemProducaoItemBeforePost(
  DataSet: TDataSet);
Var I : Integer;
begin
     DM.CodigoAutomatico('ORDEMPRODUCAOITEM', DSSQLOrdemProducaoItem, SQLOrdemProducaoItem, 0, 0);
     SQLOrdemProducaoItemREGISTRO.AsDateTime  := Now;
     SQLOrdemProducaoItemPENDENTE.AsString    := 'S';
     for I := 0 to PedidosProdutosLotes.Count -1 do
        begin
           if Copy(PedidosProdutosLotes.Strings[I], 0, Pos('-', PedidosProdutosLotes.Strings[I])-1) = SQLOrdemProducaoItemPRLTA13ID.AsString then
              begin
                 if not SQLPedidosLotes.Active then SQLPedidosLotes.Active := True; 
                 SQLPedidosLotes.Append;
                 SQLPedidosLotesORPRA13ID.AsString := SQLOrdemProducaoItemORPRA13ID.AsString;
                 SQLPedidosLotesPRLTA13ID.AsString := SQLOrdemProducaoItemPRLTA13ID.AsString;
                 SQLPedidosLotesPDVDA13ID.AsString := Copy(PedidosProdutosLotes.Strings[I], Pos('-', PedidosProdutosLotes.Strings[I])+1, Length(PedidosProdutosLotes.Strings[I]));
                 SQLPedidosLotes.Post;
              end;
        end;
end;

procedure TFormTelaGerarOrdemProducao.SQLPedidosLotesBeforePost(
  DataSet: TDataSet);
begin
     DM.CodigoAutomatico('ORDEMPRODUCITEMPED', dsSQLPedidosLotes, SQLPedidosLotes, 2, 0);
     SQLPedidosLotesREGISTRO.AsDateTime  := Now;
     SQLPedidosLotesPENDENTE.AsString    := 'S';
end;

end.
