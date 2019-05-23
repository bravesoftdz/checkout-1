unit AssistenteListagemTEMPLATE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, StdCtrls, DBTables, RxQuery, UnitLibrary, Buttons,
  ppPrnabl, ppCtrls, ppBands, ppCache, ppStrtch, ppRegion, ppMemo, ppDBBDE,
  ppViewr, ppPrintr, ppVar,  ppDsIntf, ppPreview, Printers, ComCtrls, Mask,
  ConerBtn, RxDBComb, Grids, DBGrids, RDprint, CheckLst,
  ToolEdit, CurrEdit, Menus,
  Placemnt, IniFiles, RxLookup, DBCtrls, shellapi,
  ppEndUsr, StrUtils, ppTypes, RXCtrls, ppSubRpt;

type
  TFormAssistenteListagem = class(TForm)
    PanelTipoRelatorio: TPanel;
    PanelCamposOrigem: TPanel;
    PanelBottom: TPanel;
    PanelCamposSelecionados: TPanel;
    btVizualizar: TSpeedButton;
    PagePrincipal: TPageControl;
    TabSelecao: TTabSheet;
    TabCondicoes: TTabSheet;
    Panel1: TPanel;
    TabResultado: TTabSheet;
    ListSelecaoCondicao: TListBox;
    pnSelecaoCondicao: TPanel;
    pnCondicoes: TPanel;
    lstCondicoes: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGridLista: TDBGrid;
    RDprint: TRDprint;
    TabSheetConfigImpressao: TTabSheet;
    pnControleConfigImpresso: TPanel;
    Panel3: TPanel;
    ListCamposOrigem: TCheckListBox;
    Panel4: TPanel;
    LabelTitulo: TLabel;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    PanelValor: TPanel;
    Label7: TLabel;
    LabelE: TLabel;
    EditValor1: TMaskEdit;
    EditValor2: TMaskEdit;
    PanelAniversario: TPanel;
    LIntervalo: TLabel;
    Label1: TLabel;
    dpDataFinal: TDateTimePicker;
    dpDataInicial: TDateTimePicker;
    BtnAddFiltro: TConerBtn;
    BtnDelFiltro: TConerBtn;
    cboOuE: TComboBox;
    ComboOperacao: TComboBox;
    Label6: TLabel;
    PopupMenuBotao: TPopupMenu;
    mnAjusteFino: TMenuItem;
    mnRemoverControle: TMenuItem;
    PageControlConfigRelatorio: TPageControl;
    TabSheetConfig: TTabSheet;
    gboColunas: TGroupBox;
    gboResultado: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edRepLinha: TCurrencyEdit;
    edLinhasDetalhe: TCurrencyEdit;
    gboOpcoes: TGroupBox;
    ckContorno: TCheckBox;
    ckCabecalho: TCheckBox;
    ckDadosEmpresa: TCheckBox;
    ckRodape: TCheckBox;
    ckAutoAjustesDetalhe: TCheckBox;
    lblArquivo: TLabel;
    btNovo: TSpeedButton;
    btEditar: TSpeedButton;
    btSalvar: TSpeedButton;
    ScrollBox: TScrollBox;
    PaintBox: TPaintBox;
    SQLConsulta: TRxQuery;
    TabSheetListExistentes: TTabSheet;
    dsSQLConsulta: TDataSource;
    SQLConsultaCONSA60DESCR: TStringField;
    SQLConsultaCONSBLISTPERSONAL: TMemoField;
    SQLConsultaCONSA13ID: TStringField;
    SQLConsultaEMPRICOD: TIntegerField;
    SQLConsultaCONSICOD: TIntegerField;
    SQLConsultaPENDENTE: TStringField;
    SQLConsultaREGISTRO: TDateTimeField;
    btCancel: TSpeedButton;
    btExcluir: TSpeedButton;
    SQLConsultaCONSA255TABELAS: TStringField;
    btSair: TSpeedButton;
    ckPaisagem: TCheckBox;
    DBGridListagens: TDBGrid;
    cblListDisponivel: TRxDBLookupCombo;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    btOk: TSpeedButton;
    gboPapel: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    EdCol: TCurrencyEdit;
    EdLin: TCurrencyEdit;
    Label5: TLabel;
    edColunaQtde: TCurrencyEdit;
    edColunasTamanho: TCurrencyEdit;
    Label8: TLabel;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    cboCompressao: TComboBox;
    lblComp: TLabel;
    gboOrdemResultado: TGroupBox;
    cboOrder1: TComboBox;
    cboOrder2: TComboBox;
    cboOrder3: TComboBox;
    Label16: TLabel;
    cboOrderOrdem1: TComboBox;
    cboOrderOrdem2: TComboBox;
    cboOrderOrdem3: TComboBox;
    cboOrder4: TComboBox;
    cboOrderOrdem4: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label12: TLabel;
    ListagemCliente: TppDBPipeline;
    tblAssistenteListagem: TTable;
    dstblAssistenteListagem: TDataSource;
    BatchMove: TBatchMove;
    btRelatorio: TRxSpeedButton;
    PopupMenuImprimir: TPopupMenu;
    mnVisualizar: TMenuItem;
    mnConfigurarImpressao: TMenuItem;
    mnImprimir: TMenuItem;
    pnListCamposRelatorio: TPanel;
    ListCamposRelatorio: TListBox;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure btVizualizarClick(Sender: TObject);
    procedure ListCamposRelatorioDblClick(Sender: TObject);
    procedure ComboOperacaoChange(Sender: TObject);
    procedure BtnAddFiltroClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure lstCondicoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PagePrincipalChange(Sender: TObject);
    procedure BtnDelFiltroClick(Sender: TObject);
    procedure ListCamposOrigemClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PintaGrade(Local: TPaintBox);
    procedure PaintBoxDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CriaBotao(Sender:TObject; Caption, Hint: String;
              X, Y: Integer);
    procedure ConfigControle(Sender : TObject);
    procedure MoveBotao(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PanelTipoRelatorioMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBoxDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure EdColChange(Sender: TObject);
    procedure EdLinChange(Sender: TObject);
    procedure btRelatorioClick(Sender: TObject);
    procedure ProcuraTabelaField(PainelField : TScrollBox; Caption: String);
    procedure edRepLinhaChange(Sender: TObject);
    procedure edRepLinhaExit(Sender: TObject);
    procedure mnRemoverControleClick(Sender: TObject);
    procedure mnAjusteFinoClick(Sender: TObject);
    procedure ImprimiDadosEmpresa;
    procedure DetalheCabecalho;
    procedure DetalheRodape;
    procedure DetalheBordas;
    procedure ExecutaPesquisa;
    procedure ckDadosEmpresaClick(Sender: TObject);
    procedure Salvar(Arquivo : String; Controle : TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure SalvarControles(GrupoControles : TObject);
    procedure btEditarClick(Sender: TObject);
    procedure CarregaControles(GrupoControles : TObject);
    procedure Carrega(Arquivo : String; Controle : TObject);
    procedure DestroiBotoes;
    procedure AbrirListagem;
    procedure dpDataFinalChange(Sender: TObject);
    procedure EditValor1Change(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure SQLConsultaBeforePost(DataSet: TDataSet);
    procedure DBGridListagensDblClick(Sender: TObject);
    procedure dsSQLConsultaStateChange(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure cblListDisponivelChange(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure ListSelecaoCondicaoDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    function  TipoFonte(Nome: String):TTipoFonte;
    procedure ListSelecaoCondicaoClick(Sender: TObject);
    procedure cboOrder1Change(Sender: TObject);
    procedure SQLConsultaAfterOpen(DataSet: TDataSet);
    procedure mnVisualizarClick(Sender: TObject);
    procedure ppReportPreviewFormCreate(Sender: TObject);

  private
    { Private declarations }
    LinhaInicial,
    LinhaCabecalho,
    Paginas,
    AltLinha,
    EspacoLinha,
    Col,
    Lin,
    Pagina              : Integer;
    SqlAnterior,
    MacroAnterior,
    FieldResult,
    BotaoAtivo,
    BotaoOp,
    ArquinoTemp,
    ArquivoRB            : String;
    MostraConfig         : Boolean;
    PainelPrincipal      : TScrollBox;
    ArquivoSalvar        : TIniFile;
  public
    { Public declarations }
  end;

var
  FormAssistenteListagem: TFormAssistenteListagem;
  Operacao : array [0..8] of string = ('=','>','>=','<','<=','in','like','<>','in');
  OrE : array [0..1] of String = (' and ',' or ');

const
  SC_DragMove = $F012{a magic number};

implementation

uses DataModulo, VarSys, DataModuloTemplate,
  TelaConfigControle, WaitWindow, WindowsLibrary;

{$R *.dfm}

procedure TFormAssistenteListagem.MoveBotao(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var PosVert, PosHor : Integer;
begin
  inherited;
{  ReleaseCapture;
  (Sender as TWinControl).perform(WM_SysCommand, SC_DragMove, 0);

  BotaoAtivo := (Sender as TWinControl).Name;

  (Sender as TWinControl).Top  := StrToInt(FloatToStr((((Sender as TWinControl).Top / AltLinha) - Frac((Sender as TWinControl).Top / AltLinha))* AltLinha));
  (Sender as TWinControl).Left := StrToInt(FloatToStr((((Sender as TWinControl).Left/ EspacoLinha) - Frac((Sender as TWinControl).Left / EspacoLinha)) * EspacoLinha));

  if (Sender as TWinControl).Left <= ReguaLateral.Width then
     (Sender as TWinControl).Left := ReguaLateral.Width + 1;

  if (Sender as TWinControl).Top <= ReguaSuperior.Height then
     (Sender as TWinControl).Top := ReguaSuperior.Height + 2;

  (Sender as TWinControl).Hint := ' Linha:  ' + FloatToStr(((Sender as TWinControl).Top / AltLinha) - Frac((Sender as TWinControl).Top / AltLinha)) + Char(#13) +
                                  ' Coluna: ' + FloatToStr(((Sender as TWinControl).Left/ EspacoLinha) - Frac((Sender as TWinControl).Left / EspacoLinha));

  PosVert := ScrollBox.VertScrollBar.Position;
  PosHor  := ScrollBox.HorzScrollBar.Position;
  ScrollBox.AutoScroll := False;
  ScrollBox.AutoScroll := True;
  ScrollBox.VertScrollBar.Position := PosVert;
  ScrollBox.HorzScrollBar.Position := PosHor;}
end;

procedure TFormAssistenteListagem.FormCreate(Sender: TObject);
var
  I : Integer;
begin
   ArquinoTemp := GetCurrentDir +  '\ListagemPersonalizada' + FormatDateTime('ddmmhhmm', Now) + '.acr' ;

   TabSelecao.Show;

   SQLConsulta.Close;
   SQLConsulta.MacroByName('MFiltro').AsString := ' CONSA255TABELAS = "' + DM.TabelaExtra + '"';
   SQLConsulta.Open;

   SqlAnterior    := (DM.DSListagem.DataSet as TRxQuery).SQL.Text;
   MacroAnterior  := (DM.DSListagem.DataSet as TRxQuery).MacroByName('MFiltro').AsString;

  DBGridLista.DataSource := DM.DSListagem;
  DBGridLista.Columns.RebuildColumns;

  for I := 0 to DM.DSListagem.DataSet.FieldCount -1 do
    begin
      if DM.DSListagem.DataSet.Fields[I].DisplayLabel <> DM.DSListagem.DataSet.Fields[I].FieldName then
         begin
            ListCamposOrigem.Items.Add(DM.DSListagem.DataSet.Fields[I].DisplayLabel);
            ListSelecaoCondicao.Items.Add(DM.DSListagem.DataSet.Fields[I].DisplayLabel);
         end;
      DBGridLista.Columns.Items[I].Visible := False;
  end;
  (DM.DSListagem.DataSet as TRxQuery).Close;

  AltLinha    := 15;
  EspacoLinha := 7;
  Lin := StrToInt(EdLin.Text);
  Col := StrToInt(EdCol.Text);

  MostraConfig := True;
end;

procedure TFormAssistenteListagem.ConfigControle(Sender : TObject);
begin
  inherited;
  if Application.FindComponent('FormTelaConfigControle') = nil then
     Application.CreateForm(TFormTelaConfigControle,FormTelaConfigControle);

  FormTelaConfigControle.edLinha.Value := Round((Sender as TConerBtn).Top / AltLinha);
  FormTelaConfigControle.edColuna.Value := Round((Sender as TConerBtn).Left / EspacoLinha);

  FormTelaConfigControle.lblNomeControle.Caption := (Sender as TConerBtn).Caption;

  FormTelaConfigControle.PageControl.ActivePage := FormTelaConfigControle.TabSheetControle;
  FormTelaConfigControle.ShowModal;

  if FormTelaConfigControle.ModalResult = mrOK then
     begin
        (Sender as TConerBtn).Left := StrToInt(FloatToStr(Round((FormTelaConfigControle.edColuna.Value) * EspacoLinha)));
        (Sender as TConerBtn).Top  := StrToInt(FloatToStr(Round((FormTelaConfigControle.edLinha.Value) * AltLinha)));
        (Sender as TConerBtn).Hint := ' Linha:  ' + FloatToStr(FormTelaConfigControle.edLinha.Value) + Char(#13) +
                                      ' Coluna: ' + FloatToStr(FormTelaConfigControle.edColuna.Value);
        (Sender as TConerBtn).ShowHint := True;
     end;
end;

procedure TFormAssistenteListagem.btVizualizarClick(Sender: TObject);
begin
   if ListCamposRelatorio.Items.Count = -1 then
      begin
         Informa('Você deve Selecionar algum campo para exibir no Resultado.');
         Abort;
      end;
   ExecutaPesquisa;
   TabResultado.Show;
end;

procedure TFormAssistenteListagem.ListCamposRelatorioDblClick(
  Sender: TObject);
begin
  ListCamposOrigem.Items.Add(ListCamposRelatorio.Items.Strings[ListCamposRelatorio.ItemIndex]);
  ListCamposRelatorio.DeleteSelected;
end;

procedure TFormAssistenteListagem.ComboOperacaoChange(Sender: TObject);
begin
  PanelValor.Visible := (ComboOperacao.ItemIndex <> -1);
  LabelE.Visible     := (ComboOperacao.ItemIndex = 5);
  EditValor2.Visible := (ComboOperacao.ItemIndex = 5);
  PanelValor.Visible       := (ComboOperacao.ItemIndex <> 8);
  PanelAniversario.Visible := (ComboOperacao.ItemIndex = 8);
  dpDataFinal.Date := Date;
  dpDataInicial.Date := Date;
  EditValor1.Text := '';
  EditValor2.Text := '';
end;

procedure TFormAssistenteListagem.BtnAddFiltroClick(Sender: TObject);
Var ValorCondicao : String;
begin
  case ComboOperacao.ItemIndex of
       0,1,2,3,4,7 : ValorCondicao := '"' + EditValor1.Text + '"';    // IGUAL, MAIOR, MAIOR OU IGUAL, MENOR, MENOR OU IGUAL, DIFERENTE
       5: ValorCondicao := '("' + EditValor1.Text + '" and "' + EditValor2.Text + '")'; // ENTRE
       6: ValorCondicao := '"%' + EditValor1.Text + '%"';    // CONTENDO
       8: ValorCondicao := '("' + FormatDateTime('mm/dd/yyyy', dpDataInicial.Date) + '" and "' + FormatDateTime('mm/dd/yyyy',dpDataFinal.Date) + '")'; // ENTRE (DATAS)
  end;

  if ComboOperacao.ItemIndex <> - 1 then
     begin
       if (lstCondicoes.ItemIndex = -1) then
          lstCondicoes.Items.Add('(' + DM.DSListagem.DataSet.FieldByName(DM.LocateByDisplayLabel(DM.DSListagem.DataSet,ListSelecaoCondicao.Items.Strings[ListSelecaoCondicao.ItemIndex])).FieldName +
                                 ' ' + Operacao[ComboOperacao.ItemIndex] + ' ' + ValorCondicao + ')');

       if (lstCondicoes.ItemIndex <> -1) and (lstCondicoes.Items.Strings[lstCondicoes.ItemIndex] = '(0=0)') then
           lstCondicoes.Items.Strings[lstCondicoes.ItemIndex] :='(' + DM.DSListagem.DataSet.FieldByName(DM.LocateByDisplayLabel(DM.DSListagem.DataSet,ListSelecaoCondicao.Items.Strings[ListSelecaoCondicao.ItemIndex])).FieldName +
                               ' ' + Operacao[ComboOperacao.ItemIndex] + ' ' + ValorCondicao + ')'
       else
         if (lstCondicoes.ItemIndex <> -1) and (cboOuE.Visible) then
             lstCondicoes.Items.Strings[lstCondicoes.ItemIndex] := '(' + lstCondicoes.Items.Strings[lstCondicoes.ItemIndex] + ' ' + OrE[cboOuE.ItemIndex] + ' ' +
                                ('(' + DM.DSListagem.DataSet.FieldByName(DM.LocateByDisplayLabel(DM.DSListagem.DataSet,ListSelecaoCondicao.Items.Strings[ListSelecaoCondicao.ItemIndex])).FieldName +
                                 ' ' + Operacao[ComboOperacao.ItemIndex] + ' ' + ValorCondicao + '))');
     end;

  cboOuE.Visible := lstCondicoes.ItemIndex <> -1;
end;

procedure TFormAssistenteListagem.SpeedButton3Click(Sender: TObject);
begin
    lstCondicoes.Items.Add('(0=0)');
    lstCondicoes.Selected[lstCondicoes.Items.IndexOf('(0=0)')] := True;
    lstCondicoesClick(lstCondicoes);
end;

procedure TFormAssistenteListagem.lstCondicoesClick(Sender: TObject);
begin
  cboOuE.Visible := (lstCondicoes.ItemIndex <> -1) and (lstCondicoes.Items.Strings[lstCondicoes.ItemIndex] <> '(0=0)');
  BtnDelFiltro.Enabled := (lstCondicoes.ItemIndex <> -1);
end;

procedure TFormAssistenteListagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SQLConsulta.State in dsEditModes then
     if Application.MessageBox('Há dados em Edição, deseja grava-lo agora?', 'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_SYSTEMMODAL) = idYes then
        btSalvar.Click;

  DeleteFile(ArquinoTemp);

  (DM.DSListagem.DataSet as TRxQuery).Close;
  (DM.DSListagem.DataSet as TRxQuery).SQL.Text := SqlAnterior;
  (DM.DSListagem.DataSet as TRxQuery).MacroByName('MFiltro').AsString := MacroAnterior;
  (DM.DSListagem.DataSet as TRxQuery).Open;
end;

procedure TFormAssistenteListagem.ExecutaPesquisa;
Var I : Integer;
begin
   try
       if ListCamposRelatorio.Items.Count <= 0 then
          begin
             Informa('Você deve Selecionar algum campo para exibir no Resultado.');
             TabSelecao.Show;
             Abort;
          end;

       (DM.DSListagem.DataSet as TRxQuery).Close;
       (DM.DSListagem.DataSet as TRxQuery).SQL.Text := 'select * from ' + DM.TabelaExtra;

       if lstCondicoes.Items.Count > 0 then
          begin
             (DM.DSListagem.DataSet as TRxQuery).SQL.Add(' where ');
             for I := 0 to lstCondicoes.Items.Count -1 do
                begin
                   if I > 0 then
                     (DM.DSListagem.DataSet as TRxQuery).SQL.Add(' and ' + lstCondicoes.Items.Strings[I])
                   else
                     (DM.DSListagem.DataSet as TRxQuery).SQL.Add(lstCondicoes.Items.Strings[I]);
                end;
          end;
       for I := 1 to 4 do
           begin
              if gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I)) <> Nil then
                 if TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Text <> '...' then
                    begin
                       if Pos('order',(DM.DSListagem.DataSet as TRxQuery).SQL.Text) <= 0 then
                          (DM.DSListagem.DataSet as TRxQuery).SQL.Add(' order by ' + DM.LocateByDisplayLabel(DM.DSListagem.DataSet, TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Text) +
                                                                      ' ' + TComboBox(gboOrdemResultado.FindChildControl('cboOrderOrdem' + IntToStr(TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Tag))).Text)
                       else
                          (DM.DSListagem.DataSet as TRxQuery).SQL.Add(', ' + DM.LocateByDisplayLabel(DM.DSListagem.DataSet, TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Text) +
                                                                      ' ' + TComboBox(gboOrdemResultado.FindChildControl('cboOrderOrdem' + IntToStr(TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Tag))).Text);
                    end;
           end;
       (DM.DSListagem.DataSet as TRxQuery).Open;
   except
      on E : Exception do
         begin
           Informa('Não foi possivel gerar a consulta.' + #13 +
                   'Mensagem ' + E.Message + #13 +
                   'Classe ' + E.ClassName);
           Abort;
        end;
   end;
end;

procedure TFormAssistenteListagem.PagePrincipalChange(Sender: TObject);
begin
   if PagePrincipal.ActivePage = TabResultado then
      ExecutaPesquisa;
end;

procedure TFormAssistenteListagem.BtnDelFiltroClick(Sender: TObject);
begin
   lstCondicoes.DeleteSelected;
   lstCondicoesClick(lstCondicoes);
end;

procedure TFormAssistenteListagem.ListCamposOrigemClick(Sender: TObject);
Var I : Integer;
begin
   if ListCamposOrigem.Checked[ListCamposOrigem.ItemIndex] then
      begin
         ListCamposRelatorio.Items.Add(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]);
         DBGridLista.Columns.Items[LocateByDisplayLabel(DM.DSListagem.DataSet, ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex])].Visible := True;
         for I := 1 to 4 do
           if gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I)) <> Nil then
              TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.Add(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]);
      end
   else
      begin
         if ListCamposRelatorio.Items.IndexOf(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]) <> -1 then
            ListCamposRelatorio.Items.Delete(ListCamposRelatorio.Items.IndexOf(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]));
         DBGridLista.Columns.Items[LocateByDisplayLabel(DM.DSListagem.DataSet, ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex])].Visible := False;
         for I := 1 to 4 do
           if gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I)) <> Nil then
              if TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.IndexOf(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]) <> -1 then
                 begin
                    if TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.IndexOf(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]) = TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).ItemIndex then
                       begin
                          ListCamposOrigem.Checked[ListCamposOrigem.ItemIndex] := True;
                          Informa('O campo [' + ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex] + '] esta seleciona como Ordem.' + Char(13) +
                                  'Favor reorganize a sequencia de Ordem dos campos antes de proceguir.' + Char(13) +
                                  'Obrigado');
                          Abort;
                       end;
                    TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.Delete(TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.IndexOf(ListCamposOrigem.Items.Strings[ListCamposOrigem.ItemIndex]));
                 end;
      end
end;

procedure TFormAssistenteListagem.PintaGrade(Local: TPaintBox);
Var Alt, Dir : Integer;
begin
    Alt := 0;
    Dir := 0;
    Local.Canvas.Brush.Style := bsClear;

    while Alt < (Lin * AltLinha) do
      begin
          While Dir < (Col * EspacoLinha) do
             begin
                Local.Canvas.Pen.Width := 1;
               {Desenha Coluna Superior com saliencia // Não necessário na ultila versão 
                if (Alt < (edRepLinha.Value * AltLinha)) and
                   (Dir < (edColunasTamanho.Value * EspacoLinha))  then
                   Local.Canvas.Pen.Color := $00D3D3D3
                else }
                   Local.Canvas.Pen.Color := $00EBEBEB;

                Local.Canvas.Rectangle(Dir,
                                 Alt,
                                 Dir + 7,
                                 Alt + AltLinha);
                Dir := Dir + 7;
             end;
          Dir := 0;
          Alt := Alt + AltLinha;
      end;
end;

procedure TFormAssistenteListagem.PaintBoxPaint(Sender: TObject);
begin
   PintaGrade(Sender as TPaintBox);
end;

procedure TFormAssistenteListagem.CriaBotao(Sender:TObject; Caption, Hint: String;
X, Y: Integer);
Var NovoField : TConerBtn;
begin
     NovoField := TConerBtn.Create(Sender as TScrollBox);
     NovoField.Visible := False;
     NovoField.Parent  := (Sender  as TScrollBox);
     NovoField.Name    := 'Field' + IntToStr((Sender as TScrollBox).ControlCount + 1);
     NovoField.Caption := Caption;
     NovoField.OnMouseDown := MoveBotao;
     NovoField.Left    := Round(X / AltLinha) * AltLinha;
     NovoField.Top     := (Round(Y / EspacoLinha) * EspacoLinha);
     NovoField.Width   := (length(Caption) * 7) + 5;
     NovoField.Height  := 17;
     NovoField.Cursor  := crHandPoint;
     NovoField.PopupMenu := PopupMenuBotao;
     NovoField.Font.Size := 8;
     NovoField.Font.Style := [];
     NovoField.Font.Color := $00A80000;
     NovoField.PlaceConer := pcTopLeft;
     NovoField.Color      := $00EBDCCD;
     NovoField.SymbolState:= ssNone;
     NovoField.Visible  := True;
     NovoField.Hint     := Hint;
     NovoField.ShowHint := True;

     if MostraConfig then
        ConfigControle(NovoField);

     //Move botão pra mesma posição pra verificar coordenadas. 
     MoveBotao(NovoField, mbLeft , [], X, Y);
end;

procedure TFormAssistenteListagem.PaintBoxDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
     if (Source is TListBox) and ((Source as TListBox).Name = 'ListCamposRelatorio') then
        CriaBotao(((Sender as TPaintBox).Parent) as TScrollBox,ListCamposRelatorio.Items.Strings[ListCamposRelatorio.ItemIndex], 'Linha: X = ' + IntToStr(X) + char(#13) + 'Coluna: Y = ' + IntToStr(Y),X,Y);
end;

procedure TFormAssistenteListagem.PanelTipoRelatorioMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  (Sender as TWinControl).perform(WM_SysCommand, SC_DragMove, 0);
end;

procedure TFormAssistenteListagem.PaintBoxDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFormAssistenteListagem.EdColChange(Sender: TObject);
begin
  Col := StrToInt(FloatToStr(EdCol.Value));
  if (EdCol.Text <> '') and (edColunaQtde.Text <> '') then
     edColunasTamanho.Value := Round(EdCol.Value / edColunaQtde.Value);
  PaintBox.Repaint;
end;

procedure TFormAssistenteListagem.EdLinChange(Sender: TObject);
begin
  Lin := StrToInt(FloatToStr(EdLin.Value));
  PaintBox.Repaint;
end;

procedure TFormAssistenteListagem.ProcuraTabelaField(PainelField : TScrollBox; Caption: String);
Var X : Integer;
begin
    for X := 0 to PainelField.ControlCount - 1 do
       if (PainelField.Controls[X] is TConerBtn) and ((PainelField.Controls[X] as TConerBtn).Caption = Caption) then
          begin
              if DM.LocateByDisplayLabel(DBGridLista.DataSource.DataSet, Caption) <> '' then
                 begin
                    FieldResult := DM.LocateByDisplayLabel(DBGridLista.DataSource.DataSet, Caption);
                    Exit;
                 end
              else
                 begin
                    FieldResult := '';
                 end;
         end;
end;

procedure TFormAssistenteListagem.ImprimiDadosEmpresa;
begin
   if ckContorno.Checked and ckDadosEmpresa.Checked then
      //Contorno dos Dados da Empresa
      begin
         //Canto Esquerdo
         RDprint.impBox(1,1,'a');
         RDprint.impBox(2,1,'i');
         RDprint.impBox(3,1,'i');
         RDprint.impBox(4,1,'i');
         RDprint.impBox(5,1,'i');
         RDprint.impBox(6,1,'d');
         //Canto Direito
         RDprint.impBox(1,StrToInt(EdCol.Text),'b');
         RDprint.impBox(2,StrToInt(EdCol.Text),'i');
         RDprint.impBox(3,StrToInt(EdCol.Text),'i');
         RDprint.impBox(4,StrToInt(EdCol.Text),'i');
         RDprint.impBox(5,StrToInt(EdCol.Text),'i');
         RDprint.impBox(6,StrToInt(EdCol.Text),'c');

         //Linha Superior
         RDprint.LinhaH(1,15,StrToInt(EdCol.Text) - 1,0,False);
         //Linha Inferior
         RDprint.LinhaH(6,2,StrToInt(EdCol.Text) - 1,0,False);
      end;

   if ckDadosEmpresa.Checked then
      //Dados da Empresa
      begin
         RDprint.ImpF(1,2,'Dados Empresa',[TipoFonte(cboCompressao.Text)]);
         SQLEmpresa.Close;
         SQLEmpresa.MacroByName('MFiltro').AsString := ' EMPRICOD = ' + IntToStr(EmpresaCorrente);
         SQLEmpresa.Open;
         RDprint.ImpF(2,2,'Nome:        ' + SQLEmpresaEMPRA60RAZAOSOC.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(3,2,'Endereço:    ' + SQLEmpresaEMPRA60END.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(4,2,'Cidade:      ' + SQLEmpresaEMPRA60CID.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(4,35,'UF: ' + SQLEmpresaEMPRA2UF.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(5,2,'Telefone: ' + SQLEmpresaEMPRA20FONE.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(5,24,'CNPJ: ' + SQLEmpresaEMPRA14CGC.DisplayText, [TipoFonte(cboCompressao.Text)]);
         RDprint.ImpF(5,50,'IE:' + SQLEmpresaEMPRA20IE.DisplayText, [TipoFonte(cboCompressao.Text)]);
         LinhaInicial := 7;
      end;

end;

procedure TFormAssistenteListagem.DetalheCabecalho;
Var Coluna, I, ColunaPagina : Integer;
    Controle : TConerBtn;
begin
   if ckCabecalho.Checked then
      begin
         LinhaCabecalho := LinhaInicial;
         for ColunaPagina := 1 to StrToInt(edColunaQtde.Text) do
            begin
               for I := 0 to PainelPrincipal.ControlCount - 1 do
                  if PainelPrincipal.Controls[I] is TConerBtn then
                     begin
                        Controle := PainelPrincipal.Controls[I] as TConerBtn;
                        Coluna := StrToInt(FloatToStr((Controle.Left/ EspacoLinha) - Frac(Controle.Left / EspacoLinha)));
                        if ColunaPagina > 1 then
                           Coluna := Coluna + (StrToInt(edColunasTamanho.Text) * (ColunaPagina - 1));
                        if Controle.Visible then
                           RDprint.ImpF(LinhaCabecalho, Coluna, Controle.Caption, [negrito, TipoFonte(cboCompressao.Text)]);
                        if (Coluna - 1 > 1) and ckContorno.Checked then
                           RDprint.impBox(LinhaCabecalho, Coluna - 1, 't');
                     end;
            end;
      end;
end;

procedure TFormAssistenteListagem.DetalheRodape;
begin
   if ckContorno.Checked and ckRodape.Checked then
      RDprint.Box(StrToInt(EdLin.Text) - 2,1, StrToInt(EdLin.Text), StrToInt(EdCol.Text), False);

    if ckRodape.Checked then
       begin
          RDprint.ImpF(StrToInt(EdLin.Text) - 1,2,'Data\Hora: ' + FormatDateTime('DD/MM/YYYY : HH:MM', Now),[TipoFonte(cboCompressao.Text)]);
          RDprint.ImpF(StrToInt(EdLin.Text) - 1,StrToInt(EdCol.Text) - 20,'Pagina: ' + IntToStr(Pagina) + ' de ' + IntToStr(Paginas),[TipoFonte(cboCompressao.Text)]);
       end;
end;

procedure TFormAssistenteListagem.DetalheBordas;
begin
   if ckContorno.Checked  then
      if ckRodape.Checked then
         RDprint.Box(LinhaInicial , 1, StrToInt(EdLin.Text) - 2, StrToInt(EdCol.Text), False)
      else
         RDprint.Box(LinhaInicial , 1, StrToInt(EdLin.Text), StrToInt(EdCol.Text), False);
end;

function TFormAssistenteListagem.TipoFonte(Nome: String):TTipoFonte;
begin
    if Nome = 'normal' then
       Result := normal;
    if Nome = 'comp12' then
       Result := comp12;
    if Nome = 'comp17' then
       Result := comp17;
    if Nome = 'comp20' then
       Result := comp20;
end;

procedure TFormAssistenteListagem.btRelatorioClick(Sender: TObject);
Var PosBar, Item, I, LinhaAtual, ColunaAtual, TotalRegistros, Coluna : Integer;
    PaginaFrac : Double;
begin
   try
       edRepLinhaExit(edRepLinha);
       ExecutaPesquisa;

       if DM.DSListagem.DataSet.IsEmpty then
          begin
             Informa('A consulta não retornou nenhum resultado tente novamente.');
             Abort;
          end;

       PainelPrincipal := ScrollBox;

       TotalRegistros := DM.DSListagem.DataSet.RecordCount;

       MakeWindow(TotalRegistros,'Gerando relatório');

       DM.DSListagem.DataSet.DisableControls;

       Pagina := 1;

       PaginaFrac := ((((TotalRegistros / edLinhasDetalhe.Value) {- Frac(TotalRegistros / edLinhasDetalhe.Value)})) * edRepLinha.Value) / edColunaQtde.Value;

       if Frac(PaginaFrac) > 0 then
          Paginas := Round(PaginaFrac - Frac(PaginaFrac)) + 1
       else
          Paginas := Round(PaginaFrac - Frac(PaginaFrac));

       if ckPaisagem.Checked then
          RDprint.Orientacao := poLandscape
       else
          RDprint.Orientacao := poPortrait;

       RDprint.TamanhoQteLinhas  := StrToInt(EdLin.Text);
       RDprint.TamanhoQteColunas := StrToInt(EdCol.Text);

       RDprint.Abrir;

       LinhaInicial := 2;

       ImprimiDadosEmpresa;

       DetalheBordas;

       DetalheCabecalho;

       DM.DSListagem.DataSet.First;

       Item := 0;
       PosBar := 0;
       while not DM.DSListagem.DataSet.Eof do
          begin
            For Coluna := 1 to StrToInt(edColunaQtde.Text) do
               begin
                  if DM.DSListagem.DataSet.Eof then
                     Break;
                  for I := 0 to PainelPrincipal.ControlCount - 1 do
                     begin
                       if (PainelPrincipal.Controls[I] is TConerBtn) and TWinControl(PainelPrincipal.Controls[I]).Visible then
                          begin
                             SetProgress(PosBar);
                             ProcuraTabelaField(PainelPrincipal,(PainelPrincipal.Controls[I] as TConerBtn).Caption);
                             if Item >= StrToInt(edLinhasDetalhe.Text) then
                                begin
                                   DetalheRodape;
                                   RDprint.Novapagina;
                                   Item := 0;
                                   Pagina := Pagina + 1;
                                   ImprimiDadosEmpresa;
                                   DetalheBordas;
                                   DetalheCabecalho;
                                end;
                             LinhaAtual  := StrToInt(FloatToStr((PainelPrincipal.Controls[I].Top / AltLinha) - Frac(PainelPrincipal.Controls[I].Top / AltLinha))) + Item + LinhaInicial;
                             ColunaAtual := StrToInt(FloatToStr((PainelPrincipal.Controls[I].Left/ EspacoLinha) - Frac(PainelPrincipal.Controls[I].Left / EspacoLinha)));

                             if Coluna > 1 then
                                begin
                                   if ckContorno.Checked then
                                      RDprint.impBox(LinhaAtual, ColunaAtual + Round(edColunasTamanho.Value * (Coluna - 1)) - 1,'i');

                                   RDprint.ImpF(LinhaAtual, ColunaAtual + Round(edColunasTamanho.Value * (Coluna - 1)),
                                                Copy(DM.DSListagem.DataSet.FieldByName(FieldResult).DisplayText, 0, StrToInt(edColunasTamanho.Text) - ColunaAtual),
                                                [TipoFonte(cboCompressao.Text)]);
                                end
                             else
                                begin
                                   if ckContorno.Checked then
                                      RDprint.impBox(LinhaAtual,ColunaAtual - 1,'i');

                                   RDprint.ImpF(LinhaAtual, ColunaAtual,
                                                Copy(DM.DSListagem.DataSet.FieldByName(FieldResult).DisplayText, 0, StrToInt(edColunasTamanho.Text) - ColunaAtual),
                                                [TipoFonte(cboCompressao.Text)]);
                                end;
                          end;
                     end;
                  PosBar := PosBar + 1;
                  DM.DSListagem.DataSet.Next;
               end;
               Item := Item + (1 * StrToInt(FloatToStr(edRepLinha.Value)));
          end;
       DetalheRodape;
       DestroyWindow;
       RDprint.Fechar;
       DM.DSListagem.DataSet.EnableControls;
   except
       on E : Exception do
          begin
             Informa('Ocorreu um erro ao gerar o relatório.' + #13 +
                     'Messagem ' + E.Message + #13 +
                     'Classe ' + E.ClassName   );
             DestroyWindow;
             DM.DSListagem.DataSet.EnableControls;
          end;
   end;
end;

procedure TFormAssistenteListagem.edRepLinhaChange(Sender: TObject);
begin
  PaintBox.Repaint;
end;

procedure TFormAssistenteListagem.edRepLinhaExit(Sender: TObject);
Var LimiteMin : Integer;
begin
   LimiteMin := 0;

   if ckDadosEmpresa.Checked then
      LimiteMin := LimiteMin + 7;

   if ckCabecalho.Checked then
      LimiteMin := LimiteMin + 1;

   if ckRodape.Checked then
      LimiteMin := LimiteMin + 3;

   if edLinhasDetalhe.Value > (EdLin.Value - LimiteMin) then
      begin
         Informa('O total de linhas do detalhe não pode ser superior a ' + FloatToStr(EdLin.Value - LimiteMin) + '.');
         edLinhasDetalhe.Value := (EdLin.Value - LimiteMin);
      end;

   if edLinhasDetalhe.Value <= 0 then
      begin
         Informa('O total de linhas do detalhe deve ser maior que 0.');
         edLinhasDetalhe.Value := 1;
      end;

end;

procedure TFormAssistenteListagem.mnRemoverControleClick(Sender: TObject);
Var X : Integer;
begin
    for X := 0 to ScrollBox.ControlCount - 1 do
      if TConerBtn(ScrollBox.Controls[X]).Name = BotaoAtivo then
         begin
           try
              if Application.MessageBox(PChar('Tem certeza que deseja excluir  o Controle ' + ScrollBox.Controls[X].Name + '?'), 'Atençãp', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION) = idNO then
                 Abort;
              TConerBtn(ScrollBox.Controls[X]).Visible := False;
           except
           end;
           Exit;
         end;
end;

procedure TFormAssistenteListagem.mnAjusteFinoClick(Sender: TObject);
Var X : Integer;
begin
    for X := 0 to ScrollBox.ControlCount - 1 do
        if ScrollBox.Controls[X].Name = BotaoAtivo then
           begin
              ConfigControle(ScrollBox.Controls[X]);
              Exit;
           end;
end;

procedure TFormAssistenteListagem.ckDadosEmpresaClick(Sender: TObject);
Var LimiteMin : Integer;
begin
   if ckAutoAjustesDetalhe.Checked then
      begin
         LimiteMin := 0;

         if ckDadosEmpresa.Checked then
            LimiteMin := LimiteMin + 7;

         if ckCabecalho.Checked then
            LimiteMin := LimiteMin + 1;

         if ckRodape.Checked then
            LimiteMin := LimiteMin + 3;

         edLinhasDetalhe.Value := (EdLin.Value - LimiteMin) - 2;
      end;
end;

procedure TFormAssistenteListagem.Salvar(Arquivo : String; Controle : TObject);
Var I : Integer;
begin
    if Controle is TCurrencyEdit then
       ArquivoSalvar.WriteString(Controle.ClassName + '.' + (Controle as TCurrencyEdit).Name,'Texto' , (Controle as TCurrencyEdit).Text);
    if Controle is TCheckBox then
       ArquivoSalvar.WriteString(Controle.ClassName + '.' + (Controle as TCheckBox).Name,'Status', BoolToStr((Controle as TCheckBox).Checked, True));
    if Controle is TComboBox then
       ArquivoSalvar.WriteString(Controle.ClassName + '.' + (Controle as TComboBox).Name,'Compressao', IntToStr((Controle as TComboBox).ItemIndex));

    if Controle is TListBox then
       begin
           I := 0;
           while I < (TListBox(Controle).Items.Count) do
               begin
                  ArquivoSalvar.WriteString(Controle.ClassName + '.' + (Controle as TListBox).Name, 'Item' + IntToStr(I), (Controle as TListBox).Items.Strings[I]);
                  I := I + 1;
               end;
       end;
    if (Controle is TConerBtn) and ((Controle as TConerBtn).Visible) then
       begin
          ArquivoSalvar.WriteString(Controle.ClassName, (Controle as TConerBtn).Name + '.Caption', (Controle as TConerBtn).Caption);
          ArquivoSalvar.WriteString(Controle.ClassName, (Controle as TConerBtn).Name + '.Field', DM.LocateByDisplayLabel(DBGridLista.DataSource.DataSet, (Controle as TConerBtn).Caption));
          ArquivoSalvar.WriteString(Controle.ClassName, (Controle as TConerBtn).Name + '.Left', IntToStr((Controle as TConerBtn).Left));
          ArquivoSalvar.WriteString(Controle.ClassName, (Controle as TConerBtn).Name + '.Top',  IntToStr((Controle as TConerBtn).Top));
          ArquivoSalvar.WriteString(Controle.ClassName, (Controle as TConerBtn).Name + '.Name', (Controle as TConerBtn).Name);
       end;
end;

procedure TFormAssistenteListagem.SalvarControles(GrupoControles : TObject);
Var I : Integer;
begin
    for I := 0 to (GrupoControles as TWinControl).ControlCount - 1 do
       begin
         if (((GrupoControles as TWinControl).Controls[I] is TCurrencyEdit) or
            ((GrupoControles as TWinControl).Controls[I] is TCheckBox) or
            ((GrupoControles as TWinControl).Controls[I] is TListBox) or
            ((GrupoControles as TWinControl).Controls[I] is TComboBox) or
            ((GrupoControles as TWinControl).Controls[I] is TConerBtn)) and TWinControl(GrupoControles).Visible then
            Salvar(ArquivoSalvar.FileName , (GrupoControles as TWinControl).Controls[I])
       end;
end;

procedure TFormAssistenteListagem.CarregaControles(GrupoControles : TObject);
Var I : Integer;
    ListaBotoes : TStringList;
begin
    for I := 0 to (GrupoControles as TWinControl).ControlCount - 1 do
       begin
         if ((GrupoControles as TWinControl).Controls[I] is TCurrencyEdit) or
            ((GrupoControles as TWinControl).Controls[I] is TCheckBox) or
            ((GrupoControles as TWinControl).Controls[I] is TComboBox) or
            ((GrupoControles as TWinControl).Controls[I] is TListBox) then
            Carrega(ArquivoSalvar.FileName , (GrupoControles as TWinControl).Controls[I])
       end;
    if (GrupoControles.ClassName = 'TScrollBox') then
       begin
         ListaBotoes := TStringList.Create;
         ArquivoSalvar.ReadSectionValues('TConerBtn', ListaBotoes);
         if ListaBotoes.Count > 0 then
            begin
               MostraConfig := False;
               I := 0;
               while I < ListaBotoes.Count do
                  begin
                    CriaBotao(ScrollBox, Copy(ListaBotoes[0 + I],Pos('=',ListaBotoes[0 + I]) + 1 , Length(ListaBotoes[0 + I])),
                              'Field ' + Copy(ListaBotoes[4 + I],Pos('=',ListaBotoes[4 + I]) + 1 , Length(ListaBotoes[4 + I])),
                              StrToInt(Copy(ListaBotoes[2 + I],Pos('=',ListaBotoes[2 + I]) + 1 , Length(ListaBotoes[2 + I]))),
                              StrToInt(Copy(ListaBotoes[3 + I],Pos('=',ListaBotoes[3 + I]) + 1 , Length(ListaBotoes[3 + I]))) + 3);
                    I := I + 5;
                  end;
               MostraConfig := True;
            end;
       end;
end;

procedure TFormAssistenteListagem.Carrega(Arquivo : String; Controle : TObject);
Var I : Integer;
    ValoresRetorno : TStringList;
begin
    if ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Texto' ,'') <> '' then
       (Controle as TCurrencyEdit).Text := ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Texto' ,'');

    if ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Status' ,'') <> '' then
       if ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Status' ,'') = 'True' then
          (Controle as TCheckBox).Checked  := True
       else
          (Controle as TCheckBox).Checked  := False;

    if ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Compressao' ,'') <> '' then
       (Controle as TComboBox).ItemIndex := StrToInt(ArquivoSalvar.ReadString(Controle.ClassName + '.' + (Controle as TWinControl).Name,'Compressao' ,'0'));


    if (Controle as TWinControl) is TListBox then
       begin
          ValoresRetorno := TStringList.Create;
          ArquivoSalvar.ReadSectionValues(Controle.ClassName + '.' + (Controle as TWinControl).Name, ValoresRetorno);
          if ((Controle as TWinControl) as TListBox).Name = 'ListCamposRelatorio' then
             begin
                if ValoresRetorno.Count > 0 then
                   for I := 0 to ValoresRetorno.Count - 1 do
                      begin
                         if ListCamposOrigem.Items.IndexOf(Copy(ValoresRetorno[I],Pos('=',ValoresRetorno[I]) + 1 , Length(ValoresRetorno[I]))) > -1 then
                            begin
                               ListCamposOrigem.Checked[ListCamposOrigem.Items.IndexOf(Copy(ValoresRetorno[I],Pos('=',ValoresRetorno[I]) + 1 , Length(ValoresRetorno[I])))] := True;
                               ListCamposOrigem.ItemIndex := ListCamposOrigem.Items.IndexOf(Copy(ValoresRetorno[I],Pos('=',ValoresRetorno[I]) + 1 , Length(ValoresRetorno[I])));
                               ListCamposOrigemClick(ListCamposOrigem);
                            end
                         else
                            Informa('Verifique se você esta abrindo o relatório ligado a Tabela Correta.' + Char(13) +
                                    'Caso não esteja, favor reiniciar o processo. Obrigado');
                      end;
             end;
          if (((Controle as TWinControl) as TListBox).Name = 'lstCondicoes') and (ValoresRetorno.Count > 0) then
             for I := 0 to ValoresRetorno.Count - 1 do
                ((Controle as TWinControl) as TListBox).Items.Add(Copy(ValoresRetorno[I],Pos('=',ValoresRetorno[I]) + 1 , Length(ValoresRetorno[I])));
          pnCondicoes.Enabled := ((Controle as TWinControl) as TListBox).Items.Count > -1
       end;
end;

procedure TFormAssistenteListagem.btSalvarClick(Sender: TObject);
begin
     try
       ArquivoSalvar := TIniFile.Create(ArquinoTemp);
       SalvarControles(gboResultado);
       SalvarControles(gboColunas);
       SalvarControles(gboPapel);
       SalvarControles(gboOpcoes);
       SalvarControles(ScrollBox);
       SalvarControles(gboOrdemResultado);
       SalvarControles(TabSheetConfigImpressao);
       SalvarControles(pnCondicoes);
       SalvarControles(pnListCamposRelatorio);
       ArquivoSalvar.WriteString('ArquivoRB', 'Path', ArquivoRB);
       SQLConsultaCONSBLISTPERSONAL.LoadFromFile(ArquinoTemp);
       SQLConsulta.Post;

       SQLConsulta.Close;
       SQLConsulta.Open;
     except
       SQLConsulta.Cancel;
       ArquivoSalvar.Free;
       DeleteFile(ArquinoTemp);
       raise Exception.Create('Não foi possivel salvar os dados da Listagem.');
       Abort;
     end;
     ArquivoSalvar.Free;
     DeleteFile(ArquinoTemp);
end;

procedure TFormAssistenteListagem.btEditarClick(Sender: TObject);
begin
   AbrirListagem;
   if not SQLConsulta.IsEmpty then
      SQLConsulta.Edit;
end;

procedure TFormAssistenteListagem.AbrirListagem;
Var I : Integer;
begin
     try
       MakeWindowMessage('Carregando Listagem');
       BotaoOp := 'Abrir';
       if ArquivoSalvar <> Nil then
          btNovo.Click;
       SQLConsultaCONSBLISTPERSONAL.SaveToFile(ArquinoTemp);
       ArquivoSalvar := TIniFile.Create(ArquinoTemp);
       ScrollBox.Visible := False;
       CarregaControles(gboResultado);
       CarregaControles(gboColunas);
       CarregaControles(gboPapel);
       CarregaControles(gboOpcoes);
       CarregaControles(ScrollBox);
       CarregaControles(TabSheetConfigImpressao);
       CarregaControles(pnCondicoes);
       CarregaControles(gboOrdemResultado);
       CarregaControles(pnListCamposRelatorio);
       ArquivoRB := ArquivoSalvar.ReadString('ArquivoRB', 'Path', '');
       //Verifica se Tem itens selecionados nos combos ordem e libera-os.
       for I := 1 to 4 do
         if gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I)) <> Nil then
            cboOrder1Change(TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))));

       ScrollBox.Visible := True;
       lblArquivo.Caption := SQLConsultaCONSA60DESCR.AsString + #13 +
                             'Arquivo do Relatório: ' + ExtractFileName(ArquivoRB);
       DestroyWindow;
     except
       ArquivoSalvar.Free;
       DeleteFile(ArquinoTemp);
       DestroyWindow;
       raise Exception.Create('Não foi possivel carregar a Listagem. Tente novamente.');
     end;
     ArquivoSalvar.Free;
     DeleteFile(ArquinoTemp);
end;

procedure TFormAssistenteListagem.dpDataFinalChange(Sender: TObject);
begin
  BtnAddFiltro.Enabled := ListSelecaoCondicao.ItemIndex <> -1;
end;

procedure TFormAssistenteListagem.EditValor1Change(Sender: TObject);
begin
  BtnAddFiltro.Enabled := ListSelecaoCondicao.ItemIndex <> -1;
end;

procedure TFormAssistenteListagem.DestroiBotoes;
Var TotalBotoes : Integer;
begin
     TotalBotoes := ScrollBox.ControlCount;
     ScrollBox.Visible := False;
     while TotalBotoes > 0 do
        begin
          if ScrollBox.Controls[TotalBotoes - 1] is TConerBtn then
             (ScrollBox.Controls[TotalBotoes - 1] as TConerBtn).Destroy;
          Dec(TotalBotoes);
        end;
      ScrollBox.Visible := True;
end;

procedure TFormAssistenteListagem.btNovoClick(Sender: TObject);
Var I : Integer;
begin
     if BotaoOp = 'Abrir' then
        begin
           //Mesma instrução que abaixo só que não pergunta se quer limpar os dados.
           for I := 0 to ListCamposOrigem.Items.Count - 1 do
               ListCamposOrigem.Checked[I] := False;

           for I := 1 to 4 do
             if gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I)) <> Nil then
                begin
                  TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.Clear;
                  TComboBox(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr(I))).Items.Add('...');
                end;


           pnCondicoes.Enabled := False;
           lstCondicoes.Clear;

           DBGridLista.Columns.RebuildColumns;
           for I := 0 to DM.DSListagem.DataSet.FieldCount -1 do
              DBGridLista.Columns.Items[I].Visible := False;

           ListCamposRelatorio.Clear;
        end
     else
//         if Application.MessageBox('Deseja limpra todos os campos da Listagem atual?' + Char(#13) +
//                                   'Caso escolha "Não" os dados de pesquisa permaneceram.', 'Nova Listagem?', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_SYSTEMMODAL) = idYes then
            begin
               for I := 0 to ListCamposOrigem.Items.Count - 1 do
                   ListCamposOrigem.Checked[I] := False;

               pnCondicoes.Enabled := False;
               lstCondicoes.Clear;
               ComboOperacao.ItemIndex := -1;
               ComboOperacaoChange(ComboOperacao);
               DBGridLista.Columns.RebuildColumns;
               for I := 0 to DM.DSListagem.DataSet.FieldCount -1 do
                  DBGridLista.Columns.Items[I].Visible := False;

               ListCamposRelatorio.Clear;
            end;
     EdCol.Value := 80;
     EdLin.Value := 66;
     edRepLinha.Value := 1;
     edLinhasDetalhe.Value := 60;
     ckAutoAjustesDetalhe.Checked := True;
     ckCabecalho.Checked := True;
     ckDadosEmpresa.Checked := False;
     ckRodape.Checked := False;
     ckContorno.Checked := False;
     DestroiBotoes;
     lblArquivo.Caption := 'Nova Listagem';
     if BotaoOp = '' then
        SQLConsulta.Append;
     BotaoOp := '';
     cboOrder1.Items.Add('...');
     cboOrder1.ItemIndex := 0;

     cboOrder2.Items.Add('...');
     cboOrder2.ItemIndex := 0;

     cboOrder3.Items.Add('...');
     cboOrder3.ItemIndex := 0;

     cboOrder4.Items.Add('...');
     cboOrder4.ItemIndex := 0;
end;

procedure TFormAssistenteListagem.SQLConsultaBeforePost(DataSet: TDataSet);
begin
   if SQLConsulta.State in [dsInsert] then
      begin
         DM.CodigoAutomatico('CONSULTA', dsSQLConsulta, DataSet, 2, 0);
         SQLConsultaCONSA60DESCR.AsString    := InputBoxUSER('Descrição da Listagem','Digite a descrição da Listagem a ser Salva:','Listagem ' + SQLConsultaCONSICOD.AsString );
         SQLConsultaEMPRICOD.AsInteger       := EmpresaCorrente;
         SQLConsultaCONSA255TABELAS.AsString := DM.TabelaExtra;
      end;

   If DataSet.FindField('REGISTRO') <> Nil Then
      DataSet.FindField('REGISTRO').AsDateTime := Now ;
   If DataSet.FindField('PENDENTE')<> Nil Then
      DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormAssistenteListagem.DBGridListagensDblClick(Sender: TObject);
begin
   AbrirListagem;
end;

procedure TFormAssistenteListagem.dsSQLConsultaStateChange(
  Sender: TObject);
begin
    btExcluir.Enabled      := not (SQLConsultaCONSA60DESCR.IsNull) and not (SQLConsulta.State in dsEditModes);
    btEditar.Enabled       := not (SQLConsultaCONSA60DESCR.IsNull) and not (SQLConsulta.State in dsEditModes);
    btSalvar.Enabled       := SQLConsulta.State in dsEditModes;
    btNovo.Enabled         := not (SQLConsulta.State in dsEditModes);
    btCancel.Enabled       := SQLConsulta.State in dsEditModes;

    //Só pode mexer nos controles se estiver em edição;
    ScrollBox.Enabled      := SQLConsulta.State in dsEditModes;
    TabSheetConfig.Enabled := SQLConsulta.State in dsEditModes;
    TabCondicoes.Enabled    := SQLConsulta.State in dsEditModes;
    ListCamposOrigem.Enabled:= SQLConsulta.State in dsEditModes;

    if SQLConsultaCONSA60DESCR.IsNull then
       lblArquivo.Caption  := 'Nova Listagem'
    else
       lblArquivo.Caption  := 'Listagem Atual : ' + SQLConsultaCONSA60DESCR.AsString + #13 + ' Arquivo do Relatório : ' + ExtractFileName(ArquivoRB);
end;

procedure TFormAssistenteListagem.btCancelClick(Sender: TObject);
begin
    SQLConsulta.Cancel;
    BotaoOp := 'Abrir';
    btNovo.Click;
end;

procedure TFormAssistenteListagem.btExcluirClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja limpra todos os campos da Listagem atual e deletar a listagem?', 'Deletar Listagem?', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_SYSTEMMODAL) = idNo then
       Abort;
    BotaoOp := 'Abrir';
    btNovo.Click;
    SQLConsulta.Delete;
end;

procedure TFormAssistenteListagem.btSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFormAssistenteListagem.cblListDisponivelChange(Sender: TObject);
begin
   btOk.Enabled := cblListDisponivel.Text <> '...';
   btVizualizar.Enabled := btOk.Enabled;
   btRelatorio.Enabled  := btOk.Enabled;
   btEditar.Enabled     := btOk.Enabled;
   btExcluir.Enabled    := btOk.Enabled;
end;

procedure TFormAssistenteListagem.btOkClick(Sender: TObject);
begin
   AbrirListagem;
end;

procedure TFormAssistenteListagem.ListSelecaoCondicaoDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
    pnCondicoes.Enabled := ListSelecaoCondicao.ItemIndex <> -1;
end;

procedure TFormAssistenteListagem.ListSelecaoCondicaoClick(
  Sender: TObject);
begin
   pnCondicoes.Enabled := ListSelecaoCondicao.SelCount <> 0;
end;

procedure TFormAssistenteListagem.cboOrder1Change(Sender: TObject);
begin
   if TWinControl(Sender).Tag < 4 then
      TWinControl(gboOrdemResultado.FindChildControl('cboOrder' + IntToStr((TWinControl(Sender).Tag + 1)))).Enabled :=  TComboBox(Sender).ItemIndex <> 0;
   gboOrdemResultado.FindChildControl('cboOrderOrdem' + IntToStr(TWinControl(Sender).Tag)).Enabled := TWinControl(Sender).Enabled;
end;

procedure TFormAssistenteListagem.SQLConsultaAfterOpen(DataSet: TDataSet);
begin
   if not SQLConsultaCONSA13ID.IsNull then
      cblListDisponivel.KeyValue := SQLConsultaCONSA13ID.Value
   else
      cblListDisponivel.KeyValue := '';  
end;

procedure TFormAssistenteListagem.mnVisualizarClick(Sender: TObject);
Var I, X : Integer;
    NovoField : TppField;

begin
    btVizualizar.Click;

    ListagemCliente.FreeFields;

    for I := 0 to DM.DSListagem.DataSet.FieldCount - 1 do
      begin
        if ListCamposRelatorio.Items.IndexOf(DM.DSListagem.DataSet.Fields.Fields[I].DisplayLabel) > -1 then
           begin
              NovoField := TppField.Create(Self);
              case DM.DSListagem.DataSet.Fields.Fields[I].DataType of
                  ftString : NovoField.DataType  := dtString;
              end;
              NovoField.Name       := DM.DSListagem.DataSet.Fields.Fields[I].FieldName;
              NovoField.FieldName  := DM.DSListagem.DataSet.Fields.Fields[I].FieldName;
              NovoField.FieldAlias := DM.DSListagem.DataSet.Fields.Fields[I].DisplayLabel;
              ListagemCliente.AddField(NovoField);
           end;
      end;

    ListagemCliente.DataSource := DM.DSListagem;


    if ArquivoRB <> '' then
       begin
          ppReport.Template.FileName := ArquivoRB;
          ppReport.Template.LoadFromFile;
       end;

    case TMenuItem(Sender).Tag of
       1 : begin
              ppReport.DeviceType := 'Screen';
              ppReport.Print;
           end;
       2 : begin
              ppReport.DeviceType := 'Printer';
              ppReport.Print;
           end;
       3 : begin
              btEditar.Click;
//              ppDesigner.ShowModal;
              ArquivoRB := ppReport.Template.FileName;              
              btSalvar.Click;
           end;
    end;

    ArquivoRB := ppReport.Template.FileName;

    if SQLConsultaCONSA60DESCR.IsNull then
       lblArquivo.Caption  := 'Nova Listagem'
    else
       lblArquivo.Caption  := 'Listagem Atual : ' + SQLConsultaCONSA60DESCR.AsString + #13 + ' Arquivo do Relatório : ' + ExtractFileName(ArquivoRB);

    ListagemCliente.FreeFields;
end;

procedure TFormAssistenteListagem.ppReportPreviewFormCreate(
  Sender: TObject);
begin
  ppReport.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport.PreviewForm.Viewer).ZoomPercentage := 100;
  TppViewer(ppReport.PreviewForm.Viewer).ZoomSetting    := zsPageWidth;

end;

end.
