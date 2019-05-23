unit CadastroOSItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, RxLookup, RxDBComb,UnitLibrary;

type
  TFormCadastroOSItem = class(TFormCadastroTEMPLATE)
    SQLTemplateOSA13ID: TStringField;
    SQLTemplateOSITICOD: TIntegerField;
    SQLTemplateOSITTSTATUS: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateOSITA30NRONF: TStringField;
    SQLTemplateOSITCORIGNF: TStringField;
    SQLTemplateOSITA60EMPRESANF: TStringField;
    SQLTemplateOSITA60SERIEEQUIP: TStringField;
    SQLTemplateOSITTDESCREQUIP: TMemoField;
    SQLTemplateOSITTPROBLEMA: TMemoField;
    SQLTemplateOSITTSOLUCAO: TMemoField;
    SQLTemplateOSITTSOFTDRIVEUTIL: TMemoField;
    SQLTemplateOSITTOBS: TMemoField;
    SQLTemplateOSITN2VLRITEM: TBCDField;
    SQLTemplateOSITN2VLRDESC: TBCDField;
    SQLTemplateOSITN2PERCDESC: TBCDField;
    SQLTemplateOSITN2VLRTOTITEM: TBCDField;
    SQLTemplateOSITDCONCLUSAO: TDateTimeField;
    SQLTemplateUSUA60RESPCONC: TStringField;
    SQLTemplateUSUA60LOGIN: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLUsuario: TRxQuery;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLOS: TRxQuery;
    DBGridOSItensProduto: TDBGrid;
    Splitter1: TSplitter;
    SQLProdutosItem: TRxQuery;
    DSSQLProdutosItem: TDataSource;
    SQLProdutosItemOSA13ID: TStringField;
    SQLProdutosItemOSITICOD: TIntegerField;
    SQLProdutosItemOSIPICOD: TIntegerField;
    SQLProdutosItemPRODICOD: TIntegerField;
    SQLProdutosItemOSIPN3QTDE: TBCDField;
    SQLProdutosItemOSIPN2VLRCUSTO: TBCDField;
    SQLProdutosItemOSIPN2VLRTOTPROD: TBCDField;
    SQLProdutosItemUSUA60LOGIN: TStringField;
    SQLProdutosItemPENDENTE: TStringField;
    SQLProdutosItemREGISTRO: TDateTimeField;
    SQLProdutosItemPRODA60DESCR: TStringField;
    SQLFuncionario: TRxQuery;
    SQLTemplateFUNCA13ID: TStringField;
    DSSQLFuncionario: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    SQLTemplateOSITDCANC: TDateTimeField;
    mnCancelar: TMenuItem;
    mnConcluir: TMenuItem;
    SQLTemplateOSITN2QTDE: TBCDField;
    SQLGeral: TRxQuery;
    SQLGeralSOMA: TBCDField;
    SQLTemplateOSITCGARANTIA: TStringField;
    chkGarantia: TDBCheckBox;
    PanelTop: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    btProcuraCliente: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblDataCanc: TLabel;
    DBEdit5: TDBEdit;
    DBEmitente: TDBEdit;
    DBOrigemNota: TRxDBComboBox;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBVlrItem: TDBEdit;
    DBVlrDesc: TDBEdit;
    DBPercDesc: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBStatus: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBLFuncionario: TRxDBLookupCombo;
    DBDataCanc: TDBEdit;
    gboConclusao: TGroupBox;
    DBUsuarioRespConclusao: TDBEdit;
    DBDataConclusao: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    PageServico: TPageControl;
    TabEquipamento: TTabSheet;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    TabProblema: TTabSheet;
    Label9: TLabel;
    DBMemo2: TDBMemo;
    TabSolucao: TTabSheet;
    Label10: TLabel;
    MemoSolucao: TDBMemo;
    TabObs: TTabSheet;
    Label12: TLabel;
    DBMemo5: TDBMemo;
    TabMaterial: TTabSheet;
    Label11: TLabel;
    MemoSoftHardDriv: TDBMemo;
    ImageListServico: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBStatusChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateAfterEdit(DataSet: TDataSet);
    procedure DBStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBStatusDropDown(Sender: TObject);
    procedure DBVlrDescChange(Sender: TObject);
    procedure btProcuraClienteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBVlrItemChange(Sender: TObject);
    procedure DBOrigemNotaChange(Sender: TObject);
    procedure mnCancelarClick(Sender: TObject);
    procedure mnConcluirClick(Sender: TObject);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure LiberaDigitacao(Cor : TColor; Estado: Boolean);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure VerStatus;
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure chkGarantiaClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaDblClick(Sender: TObject);

  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  OP : String;
  FormCadastroOSItem: TFormCadastroOSItem;
  RetornoUser       : TInfoRetornoUser;
  Estado            : String;
  ValorAntigo       : Double;
  EstadoAnterior    : Integer;
  MasterEstato      : String;
implementation

uses DataModulo, FormResources, VarSYS,
  CadastroOSItemProdutos, CadastroProdutos, CadastroFuncionario;

{$R *.dfm}

procedure TFormCadastroOSItem.LiberaDigitacao(Cor : TColor; Estado: Boolean);
Var I : Integer;
begin
  if (DSMasterTemplate.DataSet.FieldByName('USUA60LOGIN').AsString <> UsuarioAtualNome) and (Self.Active) and (SQLTemplateFUNCA13ID.AsString <> '') then
     begin
       for I := 0 to ComponentCount - 1 do
           if Components[I].Tag = 1 then
              begin
                 if Components[I].ClassName = 'TDBMemo' then
                    begin
                      (Components[I] as TDBMemo).Enabled := Estado;
                      (Components[I] as TDBMemo).Color   := Cor;
                    end;
                 if Components[I].ClassName = 'TRxDBComboBox' then
                    begin
                      (Components[I] as TRxDBComboBox).Enabled := Estado;
                      (Components[I] as TRxDBComboBox).ReadOnly := not Estado;
                      (Components[I] as TRxDBComboBox).Color   := Cor;
                    end;
                 if Components[I].ClassName = 'TRxDBLookupCombo' then
                    begin
                      (Components[I] as TRxDBLookupCombo).Enabled := Estado;
                      (Components[I] as TRxDBLookupCombo).Color   := Cor;
                    end;
                 if Components[I].ClassName = 'TDBEdit' then
                    begin
                      (Components[I] as TDBEdit).Enabled := Estado;
                      (Components[I] as TDBEdit).Color   := Cor;
                    end;
                 if Components[I].ClassName = 'TDBComboBox' then
                    begin
                      (Components[I] as TDBComboBox).Enabled := Estado;
                      (Components[I] as TDBComboBox).Color   := Cor;
                    end;
                 if Components[I].ClassName = 'TSpeedButton' then
                    begin
                      (Components[I] as TSpeedButton).Enabled := Estado;
                    end;
              end;
     end;
end;

procedure TFormCadastroOSItem.VerStatus;
begin
  if SQLTemplateOSITTSTATUS.AsString = 'A' then
     EstadoAnterior     := 0;
  if SQLTemplateOSITTSTATUS.AsString = 'N' then
     EstadoAnterior     := 1;
  if SQLTemplateOSITTSTATUS.AsString = 'E' then
     EstadoAnterior     := 2;
  if SQLTemplateOSITTSTATUS.AsString = 'C' then
     EstadoAnterior     := 3;
end;

procedure TFormCadastroOSItem.FormCreate(Sender: TObject);
Var Altura : Integer;
begin
  inherited;
  TABELA := 'OSITEM';
  if not SQLProduto.Active      then SQLProduto.Active := True;
  if not SQLUsuario.Active      then SQLUsuario.Active := True;
  if not SQLFuncionario.Active  then SQLFuncionario.Active  := True;
  if not SQLProdutosItem.Active then SQLProdutosItem.Active := True;
  PageServico.ActivePage := TabEquipamento;
end;

procedure TFormCadastroOSItem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateOSITA60EMPRESANF.AsString := DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
  SQLTemplateOSITN2QTDE.AsFloat     := 1;
  SQLTemplateOSITTSTATUS.AsString   := 'A';
  SQLTemplateOSITCORIGNF.AsString   := 'I';
  SQLTemplateOSITCGARANTIA.AsString := 'N';
  SQLTemplateOSITN2VLRITEM.AsFloat  := 0 ;
  SQLTemplateOSITN2PERCDESC.AsFloat := 0;
  if SQLUsuario.Locate('USUAICOD',DM.UsuarioAtual,[loCaseInsensitive]) then
     SQLTemplateUSUA60LOGIN.AsString:= SQLUsuarioUSUAA60LOGIN.AsString;
  SQLTemplateOSA13ID.AsString       := DSMasterTemplate.DataSet.FieldByName('OSA13ID').AsString;
end;

procedure TFormCadastroOSItem.DBStatusChange(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in [dsInsert]) and (DBStatus.ItemIndex <> 0) then
     begin
        Informa('Você não pode incluir um Item com o Estato diferente de <Aberto>.');
        DBStatus.ItemIndex := EstadoAnterior;
        Abort;
     end;

  if (DBStatus.ItemIndex = 2) and (EstadoAnterior <> 1) then
     begin
       Informa('Você deve primeiro concluir o Item depois Cancelar.');
       DBStatus.ItemIndex := EstadoAnterior;
       Abort;
     end;

  if DBStatus.ItemIndex > 1 then
     begin
       gboConclusao.Visible := True;
     end;
  if DBStatus.ItemIndex = 2 then
     begin
       lblDataCanc.Visible := True;
       DBDataCanc.Visible  := True;
     end
  else
     begin
       lblDataCanc.Visible := False;
       DBDataCanc.Visible  := False;
     end;
end;

procedure TFormCadastroOSItem.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplateOSITCGARANTIA.AsString = 'N') and (SQLTemplateOSITN2VLRITEM.AsFloat = 0) then
     begin
        Informa('Você deve informar um valor para o Item.' + Char(#13) +
                'Ou marque garantia para valor Zerado.');
        SQLTemplateOSITN2VLRITEM.FocusControl;
        Abort;
     end;

  if DBStatus.ItemIndex = 1 then
     begin
        if MemoSolucao.Lines.Text = '' then
           begin
             Informa('Informe a solução para este item antes de encerrar.');
             MemoSolucao.SetFocus;
             Abort;
           end;

        AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser);

        if RetornoUser.ModalResult <> MrOk then
           begin
              Informa('Você deve informar um Usuário e Senha corretos para encerrar o Item.'+char(#13)+'Tente novamente.');
              DBStatus.ItemIndex := EstadoAnterior;
              Abort;
           end;
        SQLTemplateUSUA60RESPCONC.AsString   := RetornoUser.NomeUsuarioAutenticado;
        SQLTemplateOSITDCONCLUSAO.AsDateTime := Now;
     end
  else
     if DBStatus.ItemIndex = 2 then
        begin
           AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser);
           if RetornoUser.NomeUsuarioAutenticado = '' then
              begin
                 Informa('Você deve informar um Usuário e Senha corretos para encerrar o Item.'+char(#13)+'Tente novamente.');
                 DBStatus.ItemIndex := EstadoAnterior;
                 Abort;
              end;
           SQLTemplateUSUA60LOGIN.AsString := RetornoUser.NomeUsuarioAutenticado;
           SQLTemplateOSITDCANC.AsDateTime := Now;
        end;

   if SQLTemplate.State in [dsInsert] then
      Estado := 'dsInsert'
   else if SQLTemplate.State in [dsEdit] then
      Estado := 'dsEdit'
   else
      Estado := '';

    if not SQLTemplateOSITN2VLRITEM.IsNull and not SQLTemplateOSITN2PERCDESC.IsNull and (SQLTemplate.State in dsEditModes)then
     begin
       SQLTemplateOSITN2VLRDESC.AsFloat    := SQLTemplateOSITN2VLRITEM.AsFloat * (SQLTemplateOSITN2PERCDESC.AsFloat / 100);
       SQLTemplateOSITN2VLRTOTITEM.AsFloat := (SQLTemplateOSITN2VLRITEM.AsFloat - SQLTemplateOSITN2VLRDESC.AsFloat) * SQLTemplateOSITN2QTDE.AsFloat;
     end;
    if SQLTemplateOSITTSTATUS.AsString = 'C' then
       MasterEstato := 'C';
    if SQLTemplateOSITTSTATUS.AsString = 'N'then
       MasterEstato := 'N';
end;

procedure TFormCadastroOSItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DBStatus.ItemIndex = 0 then
     begin
       lblDataCanc.Visible             := False;
       DBDataCanc.Visible              := False;
       gboConclusao.Visible            := False;
       lblDataCanc.Visible             := False;
       DBDataCanc.Visible              := False;
       mnConcluir.Enabled              := True;
       mnCancelar.Enabled              := False;
     end;

  if DBStatus.ItemIndex = 1 then
     begin
       if not (SQLTemplate.State in dsEditModes) then
          gboConclusao.Visible            := True;
       mnCancelar.Enabled              := True;
       mnConcluir.Enabled              := False;
       lblDataCanc.Visible             := False;
       DBDataCanc.Visible              := False;
     end;

  if DBStatus.ItemIndex = 2 then
     begin
       if not (SQLTemplate.State in dsEditModes) then
          gboConclusao.Visible            := True;
       lblDataCanc.Visible             := true;
       DBDataCanc.Visible              := True;
       mnConcluir.Enabled              := False;
       mnCancelar.Enabled              := False;
     end;
end;

procedure TFormCadastroOSItem.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if ((DBStatus.ItemIndex = 1) or (DBStatus.ItemIndex = 2))and (SQLTemplate.State in dsEditModes) then
     If OP <> 'CANC' then
         begin
           Informa('Você não pode alterar um itens já Conclúido/Cancelado.');
           SQLTemplate.Cancel;
         end;

  if (DSMasterTemplate.DataSet.FieldByName('OSCSTATUS').AsString = 'E') or
     (DSMasterTemplate.DataSet.FieldByName('OSCSTATUS').AsString = 'C') then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroOSItem.SQLTemplateAfterPost(DataSet: TDataSet);
Var I : integer;
    PosMaster : Pointer;
begin
  inherited;
  LiberaDigitacao(clWindow, True);
  if Estado = 'dsInsert' then
     begin
        DSMasterTemplate.DataSet.Edit;
        DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat := SQLTemplateOSITN2VLRTOTITEM.AsFloat + DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat;
        DSMasterTemplate.DataSet.Post;
     end;
  if Estado = 'dsEdit' then
     begin
        DSMasterTemplate.DataSet.Edit;
        if SQLTemplateOSITN2VLRTOTITEM.AsFloat <> ValorAntigo then
           DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat := (SQLTemplateOSITN2VLRTOTITEM.AsFloat - ValorAntigo) + DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat;
        DSMasterTemplate.DataSet.Post;
     end;
  if MasterEstato = 'C' then
     if DSMasterTemplate.DataSet.FieldByName('OSCSTATUS').AsString = 'A' then
        begin
          DSMasterTemplate.DataSet.Edit;
          DSMasterTemplate.DataSet.FieldByName('OSCSTATUS').AsString := 'N';
          DSMasterTemplate.DataSet.Post;
        end;
  if MasterEstato = 'N' then
     begin
       DSMasterTemplate.DataSet.Edit;
       DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat := DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat - (SQLTemplateOSITN2VLRTOTITEM.AsFloat);
       DSMasterTemplate.DataSet.Post;
     end;
  MasterEstato := '';
end;

procedure TFormCadastroOSItem.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if (DSMasterTemplate.DataSet.FieldByName('USUA60LOGIN').AsString <> UsuarioAtualNome) and Self.Active then
     begin
       Informa('Você não é o Autor dessa OS. Não pode Exclui-la.');
       SQLTemplate.Cancel;
       Abort;
     end;

  if DBStatus.ItemIndex = 2 then      // Se Atual Cancelado
     if EstadoAnterior <> 0 then       // e Anterior Aberto
        begin
          Informa('Você não pode Excluir um Item <Concluido>/<Cancelado>.');
          Abort;
        end;

  if (DBStatus.ItemIndex <> 0) then   // Se Atual Cancelado ou Concluido
        begin
          Informa('Você não pode Excluir um Item <Concluido>/<Cancelado>.');
          Abort;
        end;

  //A subtração é feita antes do "inherited", porque nele é deletado os dados das Peças que
  //deverão sera subtraidas do total da OS.

  SQLGeral.Close;
  SQLGeral.SQL.Text := 'select sum(OSIPN2VLRTOTPROD) as SOMA from OSITEMPRODUTO where OSA13ID = ''' + SQLTemplateOSA13ID.AsString + ''' and OSITICOD = ''' + SQLTemplateOSITICOD.AsString + '''';
  SQLGeral.Open;

  inherited;

  DSMasterTemplate.DataSet.Edit;
  DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat := DSMasterTemplate.DataSet.FieldByName('OSN2VLRSERVICO').AsFloat - (SQLTemplateOSITN2VLRTOTITEM.AsFloat);
  DSMasterTemplate.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat := DSMasterTemplate.DataSet.FieldByName('OSN2VLRPRODUTOS').AsFloat - SQLGeralSOMA.AsFloat;
  DSMasterTemplate.DataSet.Post;

end;

procedure TFormCadastroOSItem.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroOSItemProdutos,'FormCadastroOSItemProdutos',True,False,True,SQLTemplateOSA13ID.AsString);
end;

procedure TFormCadastroOSItem.SQLTemplateAfterEdit(DataSet: TDataSet);
Var I : Integer;
begin
  inherited;
  if SQLTemplate.State in [dsEdit] then
     ValorAntigo := SQLTemplateOSITN2VLRTOTITEM.AsFloat
  else
     ValorAntigo := 0;
end;

procedure TFormCadastroOSItem.DBStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  EstadoAnterior := DBStatus.ItemIndex;
end;

procedure TFormCadastroOSItem.DBStatusDropDown(Sender: TObject);
begin
  inherited;
  EstadoAnterior := DBStatus.ItemIndex;
end;

procedure TFormCadastroOSItem.DBVlrDescChange(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in dsEditModes) then
     if (SQLTemplateOSITN2VLRITEM.AsFloat <> 0)then
        SQLTemplateOSITN2PERCDESC.AsFloat := (SQLTemplateOSITN2VLRDESC.AsFloat / SQLTemplateOSITN2VLRITEM.AsFloat) * 100
end;

procedure TFormCadastroOSItem.btProcuraClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  DataSetLookup := SQLProduto;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroOSItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DBLFuncionario.SetFocus;
  FieldLookup  := SQLTemplate.FindField('FUNCA13ID');
  FieldOrigem := 'FUNCA13ID';
  DataSetLookup := SQLFuncionario;
  CriaFormulario(TFormCadastroFuncionario,'FormCadastroFuncionario',False,True,True,'');
end;

procedure TFormCadastroOSItem.DBVlrItemChange(Sender: TObject);
begin
  inherited;
    if not SQLTemplateOSITN2VLRITEM.IsNull and not SQLTemplateOSITN2PERCDESC.IsNull and (SQLTemplate.State in dsEditModes)then
     begin
       SQLTemplateOSITN2VLRDESC.AsFloat    := SQLTemplateOSITN2VLRITEM.AsFloat * (SQLTemplateOSITN2PERCDESC.AsFloat / 100);
       SQLTemplateOSITN2VLRTOTITEM.AsFloat := (SQLTemplateOSITN2VLRITEM.AsFloat - SQLTemplateOSITN2VLRDESC.AsFloat) * SQLTemplateOSITN2QTDE.AsFloat;
     end;

end;

procedure TFormCadastroOSItem.DBOrigemNotaChange(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in dsEditModes then
     if DBOrigemNota.Text = 'Interna' then
        SQLTemplateOSITA60EMPRESANF.AsString := DM.SQLConfigGeralEmpresaPadraoCalcField.Value
     else
        SQLTemplateOSITA60EMPRESANF.AsString := '';
end;



procedure TFormCadastroOSItem.mnCancelarClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Desje realmente Cancelar este Item?','Atenção',MB_YESNO+MB_ICONQUESTION+MB_SYSTEMMODAL+MB_DEFBUTTON1) = idno then
     Abort;

  VerStatus;

  OP := 'CANC';
  SQLTemplate.Edit;
  SQLTemplateOSITTSTATUS.AsString := 'N';
  SQLTemplateOSITDCANC.AsDateTime := Now;
  if DBStatus.ItemIndex = 2 then
     if EstadoAnterior = 0 then
        begin
          Informa('Você deve Concluir o Item antes de Cancelar.');
          DBStatus.ItemIndex := EstadoAnterior;
          Abort;
        end;
     if EstadoAnterior <> 1 then
        begin
           if EstadoAnterior = 2 then
              begin
                 Informa('Esta OS já esta Cancelada.');
                 DBStatus.ItemIndex := EstadoAnterior;
                 Abort;
              end;
           Informa('Você não pode Cancelar um Item sem antes Conclui-la.');
           DBStatus.ItemIndex := EstadoAnterior;
           Abort;
        end;
  SQLTemplate.Post;
  OP := '';
end;

procedure TFormCadastroOSItem.mnConcluirClick(Sender: TObject);
begin
  inherited;

  VerStatus;
  
  if Application.MessageBox('Desje realmente Concluir este Item?','Atenção',MB_YESNO+MB_ICONQUESTION+MB_SYSTEMMODAL+MB_DEFBUTTON1) = idno then
     Abort;

  if EstadoAnterior <> 0 then
     if EstadoAnterior = 1 then
        begin
          Informa('Você não pode Alterar um Item Conluido.');
          DBStatus.ItemIndex := EstadoAnterior;
          Abort;
        end;
     if EstadoAnterior = 2 then
        begin
          Informa('Esta OS já esta Cancelada.');
          DBStatus.ItemIndex := EstadoAnterior;
          Abort;
        end;

  SQLTemplate.Edit;
  SQLTemplateOSITTSTATUS.AsString := 'C';
  SQLTemplateOSITDCONCLUSAO.AsDateTime := Now;
  EstadoAnterior := DBStatus.ItemIndex;

  if MemoSolucao.Lines.Text <> '' then
     SQLTemplate.Post
  else
    begin
      TabSolucao.Show;
      MemoSolucao.SetFocus;
    end;

  OP := '';
end;

procedure TFormCadastroOSItem.SQLTemplateAfterCancel(DataSet: TDataSet);
Var I : Integer;
begin
  inherited;
  LiberaDigitacao(clWindow, True);
end;

procedure TFormCadastroOSItem.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
    if (DSMasterTemplate.DataSet.FieldByName('USUA60LOGIN').AsString <> UsuarioAtualNome) and Self.Active then
       LiberaDigitacao($00E0E0E0, False);
end;

procedure TFormCadastroOSItem.RxDBLookupCombo1Change(Sender: TObject);
begin
  inherited;
  if not (SQLProduto.IsEmpty) and (SQLTemplate.State in dsEditModes) and not (SQLProdutoPRODN3VLRVENDA.IsNull) then
     SQLTemplateOSITN2VLRITEM.AsVariant := SQLProdutoPRODN3VLRVENDA.AsVariant;

end;

procedure TFormCadastroOSItem.chkGarantiaClick(Sender: TObject);
begin
  inherited;
  if chkGarantia.Checked and (SQLTemplate.State in dsEditModes) then
     SQLTemplateOSITN2VLRITEM.AsFloat := 0
  else
     begin
       if not (SQLProduto.IsEmpty) and (SQLTemplate.State in dsEditModes) and not (SQLProdutoPRODN3VLRVENDA.IsNull) then
          SQLTemplateOSITN2VLRITEM.AsVariant := SQLProdutoPRODN3VLRVENDA.AsVariant;
     end;

end;

procedure TFormCadastroOSItem.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'OSITTSTATUS' then
     begin
        if Column.Field.AsString = 'A' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'ABERTO');
        if Column.Field.AsString = 'C' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CONCLUIDO');
        if Column.Field.AsString = 'N' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'CANCELADO');
     end;
  if Column.FieldName = 'OSITCORIGNF' then
     begin
        if Column.Field.AsString = 'I' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'Interna');
        if Column.Field.AsString = 'E' then
           DBGridLista.Canvas.TextOut(Rect.Left, Rect.Top + 2,'Externa');
     end;
end;

procedure TFormCadastroOSItem.DBGridListaDblClick(Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

end.
