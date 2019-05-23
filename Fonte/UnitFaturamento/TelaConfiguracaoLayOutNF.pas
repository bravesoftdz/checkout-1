unit TelaConfiguracaoLayOutNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Mask,
  DBCtrls, DB, DBTables, RxQuery, ToolEdit, CurrEdit, ComCtrls, Menus,
  RxLookup, ConerBtn, RDprint, RXCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConfiguracaoLayOutNF = class(TFormTelaGeralTEMPLATE)
    pnGeral: TPanel;
    pnCabecalho: TPanel;
    pnItens: TPanel;
    pnRodape: TPanel;
    pnServico: TPanel;
    btSalvarComo: TSpeedButton;
    SQL: TRxQuery;
    lstFields: TListBox;
    PaintBox1: TPaintBox;
    PaintBox4: TPaintBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    PageControl: TPageControl;
    TabConfiguracao: TTabSheet;
    TabConfiguracaoGrupo: TTabSheet;
    pnPapel: TPanel;
    gboGeral: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    PopupMenuBotao: TPopupMenu;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    PaintBox3: TPaintBox;
    mnRemoverControle: TMenuItem;
    mnAjusteFino: TMenuItem;
    cblConfig: TRxDBLookupCombo;
    SQLImpConfigAtual: TRxQuery;
    dsSQLImpConfigAtual: TDataSource;
    SQLImpConfigAtualCFIMIID: TIntegerField;
    SQLImpConfigAtualCFIMA30DESCR: TStringField;
    btSalvar: TSpeedButton;
    pnFinanceiro: TPanel;
    PaintBox2: TPaintBox;
    PaintBox5: TPaintBox;
    PopUpFinanceiro: TPopupMenu;
    mnConfigurar: TMenuItem;
    Splitter4: TSplitter;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dsSQLConfigImpPapel: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    gboDirecao: TDBRadioGroup;
    LabelImpressao: TRxSpeedButton;
    PopupMenuImpressao: TPopupMenu;
    mnGradedeImpresso: TMenuItem;
    RDprint: TRDprint;
    ImprimirTeste1: TMenuItem;
    SQLLayOutImpressao: TRxQuery;
    Label11: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLConfigImpPapel: TRxQuery;
    SQLConfigImpPapelCFIMIID: TIntegerField;
    SQLConfigImpPapelCFIPITOTALLINHAS: TIntegerField;
    SQLConfigImpPapelCFIPITOTALCOLUNAS: TIntegerField;
    SQLConfigImpPapelCFIPILININICAB: TIntegerField;
    SQLConfigImpPapelCFIPILININIFINAN: TIntegerField;
    SQLConfigImpPapelCFIPILINFINFINAN: TIntegerField;
    SQLConfigImpPapelCFIPICOLINIFINAN: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINFINAN: TIntegerField;
    SQLConfigImpPapelCFIPILININIITENS: TIntegerField;
    SQLConfigImpPapelCFIPILINFINITENS: TIntegerField;
    SQLConfigImpPapelCFIPICOLINIITENS: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINITENS: TIntegerField;
    SQLConfigImpPapelCFIPILININISERV: TIntegerField;
    SQLConfigImpPapelCFIPILINFINSERV: TIntegerField;
    SQLConfigImpPapelCFIPICOLINISERV: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINSERV: TIntegerField;
    SQLConfigImpPapelCFIPILININIRODAPE: TIntegerField;
    SQLConfigImpPapelCFIPCDIRECAO: TStringField;
    SQLConfigImpPapelCFIPA13COMPRESSAO: TStringField;
    SQLConfigImpPapelCFIPCPADRAO: TStringField;
    DBCheckBox1: TDBCheckBox;
    procedure btSalvarComoClick(Sender: TObject);
    procedure GravaPosicaoControles(Divisao: TPanel; Acao: String);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PintaGrade(Local: TPaintBox);
    procedure PaintBox1Paint(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure pnCabecalhoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure PaintBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure PaintBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ProcuraTabelaField(PainelField : TPanel; Caption: String);
    procedure ConfigControle(Sender : TObject);
    procedure MoveBotao(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CriaBotao(Sender:TObject; Caption, Hint: String;
      X, Y: Integer);
    procedure mnRemoverControleClick(Sender: TObject);
    procedure mnAjusteFinoClick(Sender: TObject);
    procedure cblConfigChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DestroiBotoes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnGradedeImpressoClick(Sender: TObject);
    procedure lstFieldsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ImprimirTeste1Click(Sender: TObject);
    procedure ImprimeDadosNFPersonalizado(Divisao : Integer);
    procedure ImprimeFinanNFPersonalizado;
    procedure ImprimeItensNFPersonalizado;
    procedure ImprimeServsNFPersonalizado;
    function TipoFonte(Nome: String):TTipoFonte;
    procedure SQLConfigImpPapelNewRecord(DataSet: TDataSet);
    procedure SQLConfigImpPapelBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    AltLinha, EspacoLinha, UID, DivisaoAtivaTag : Integer;
    FieldResult, TableResult,
    DivisaoAtiva, BotaoAtivo, DescrConfig : String;

  public
    { Public declarations }
    MouseDownSpot: TPoint;
    Capturing : bool;
    Col,Lin : Integer;
    MostraConfig : Boolean;

  end;

var
  FormTelaConfiguracaoLayOutNF: TFormTelaConfiguracaoLayOutNF;
  Painel : array[0..3] of string = ('pnCabecalho','pnItens','pnServico','pnRodape');
  PainelDivisao : array [0..3] of string = ('CFIPILININICAB','','','CFIPILININIRODAPE');

//  Tabelas: array[0..3] of string = ('TblNotaFiscal','TblNotaFiscalItem','TblNotaFiscalFinanceiro','TblNotaFiscalItemServico');
const
  SC_DragMove = $F012{a magic number};


implementation

uses DataModuloImpNotaFiscal, UnitLibrary, DataModulo,
     TelaConfigControle, WindowsLibrary, WaitWindow;

{$R *.dfm}
procedure TFormTelaConfiguracaoLayOutNF.PintaGrade(Local: TPaintBox);
Var Alt, Dir : Integer;
begin
    Alt := 0;
    Dir := 0;

    while Alt < (Lin * AltLinha) do
      begin
          Local.Canvas.Brush.Style := bsClear;
          While Dir < (Col * EspacoLinha) do
             begin
                // Faz a Barra Superior
                if Alt = 0 then
                   begin
                      Local.Canvas.Pen.Width := 1;
                      Local.Canvas.Pen.Color := clNavy;
                   end
                else
                if (Dir > 0) and (Alt > 0) then
                   begin
                       Local.Canvas.Pen.Width := 1;
                       Local.Canvas.Pen.Color := $00E0E0E0;
                   end;

                // Esquerda, Altura, Direita, Rodape
                Local.Canvas.Rectangle(Local.Left + Dir,
                                 Local.Top + Alt,
                                 Local.Left + Dir + 7,
                                 Local.Top + Alt + 15);
                Dir := Dir + 7;
             end;
          Dir := 0;
          Alt := Alt + 15;
          // Faz a Barra Lateral
          if (Dir = 0) then
             begin
                Local.Canvas.Pen.Width := 1;
                Local.Canvas.Pen.Color := clNavy;
             end
          else
             begin
                 Local.Canvas.Pen.Width := 1;
                 Local.Canvas.Pen.Color := $00E0E0E0;
             end;
      end;
end;


procedure TFormTelaConfiguracaoLayOutNF.GravaPosicaoControles(Divisao: TPanel; Acao: String);
Var X, I : Integer;
    PainelPrincipal : TPanel;
    SqlAntigo : String;
begin
   if not DMImpNotaFiscal.SQLConfigimpressao.Active then DMImpNotaFiscal.SQLConfigimpressao.Active := True;
   if btSalvarComo.Caption = '&Novo' then
      begin
         SQL.Close;
         SQL.SQL.Text := 'select Max(CFIMICOD) as NovoCod  from CONFIGIMPRESSAO';
         SQL.Open;

         DMImpNotaFiscal.SQLConfigimpressao.Append;
         DMImpNotaFiscal.SQLConfigimpressaoCFIMA30DESCR.AsString         := DescrConfig;
         DMImpNotaFiscal.SQLConfigimpressaoCFIMIID.AsInteger             := UID;
         DMImpNotaFiscal.SQLConfigimpressaoCFIMICOD.AsInteger            := SQL.FieldByName('NovoCod').AsInteger + 1;
         DMImpNotaFiscal.SQLConfigimpressao.Post;
      end
   else
      begin
         for X := 0 to Divisao.ControlCount - 1 do
           if (Divisao.Controls[X] is TPanel) then
             begin
                 PainelPrincipal := (Divisao.Controls[X] as TPanel);
                 for I := 0 to PainelPrincipal.ControlCount - 1 do
                    begin
                      if PainelPrincipal.Controls[I] is TConerBtn then
                         begin
                           if Acao = 'Salvar' then
                              begin
                                 DMImpNotaFiscal.SQLConfigimpressao.Close;
                                 SqlAntigo := DMImpNotaFiscal.SQLConfigimpressao.SQL.Text;
                                 DMImpNotaFiscal.SQLConfigimpressao.SQL.Text := 'select * from CONFIGIMPRESSAO where CFIMIID = ' + IntToStr(cblConfig.KeyValue) +
                                                                                ' and CFIMA60FIELDLABEL = "' + (PainelPrincipal.Controls[I] as TConerBtn).Caption + '"' +
                                                                                ' and CFIMIDIVISAO = ' + IntToStr(PainelPrincipal.Tag);
                                 DMImpNotaFiscal.SQLConfigimpressao.Open;
                                 if not DMImpNotaFiscal.SQLConfigimpressao.IsEmpty then
                                    DMImpNotaFiscal.SQLConfigimpressao.Edit
                                 else
                                    begin
                                      Acao := 'SalvarComo';
                                      UID  := cblConfig.KeyValue;
                                    end;
                                 SQL.Close;
                                 SQL.SQL.Text := 'delete from CONFIGIMPRESSAO where CFIMA30DESCR is null';
                                 SQL.ExecSQL;
                              end;
                           if Acao = 'SalvarComo' then
                              begin
                                 SQL.Close;
                                 SQL.SQL.Text := 'select Max(CFIMICOD) as NovoCod  from CONFIGIMPRESSAO';
                                 SQL.Open;

                                 DMImpNotaFiscal.SQLConfigimpressao.Append;
                                 DMImpNotaFiscal.SQLConfigimpressaoCFIMIID.AsInteger             := UID;
                                 DMImpNotaFiscal.SQLConfigimpressaoCFIMICOD.AsInteger            := SQL.FieldByName('NovoCod').AsInteger + 1;
                              end;

                           ProcuraTabelaField(PainelPrincipal,(PainelPrincipal.Controls[I] as TConerBtn).Caption);

                           DMImpNotaFiscal.SQLConfigimpressaoCFIMA30FIELD.AsString         := FieldResult;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMA30TABLE.AsString         := TableResult;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMA60FIELDLABEL.AsString    := (PainelPrincipal.Controls[I] as TConerBtn).Caption;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMIIMPLIN.AsInteger         := StrToInt(FloatToStr((PainelPrincipal.Controls[I].Top / AltLinha) - Frac(PainelPrincipal.Controls[I].Top / AltLinha)));
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMIIMPCOL.AsInteger         := StrToInt(FloatToStr((PainelPrincipal.Controls[I].Left/ EspacoLinha) - Frac(PainelPrincipal.Controls[I].Left / EspacoLinha)));
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMILEFT.AsInteger           := PainelPrincipal.Controls[I].Left;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMITOP.AsInteger            := PainelPrincipal.Controls[I].Top;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMIDIVISAO.AsInteger        := PainelPrincipal.Tag;
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMA15TIPO.AsString          := 'NF';
                           DMImpNotaFiscal.SQLConfigimpressaoCFIMA30DESCR.AsString         := DescrConfig;

                           DMImpNotaFiscal.SQLConfigimpressao.Post;
                         end;
                    end;
             end;
      end;
   PageControlChange(PageControl);
end;

procedure TFormTelaConfiguracaoLayOutNF.btSalvarComoClick(Sender: TObject);
begin
  inherited;
   InputQueryUSER('Digite o nome da Configuração a ser Salva:','Salvar Como',DescrConfig);

   if DescrConfig = '' then
      begin
        Informa('É obrigatório oa Descrição da Configuração. Tente novamente.');
        Abort;
      end;

   SQL.Close;
   SQL.SQL.Text := 'select Max(CFIMIID) as NovoID, Max(CFIMICOD) as NovoCod  from CONFIGIMPRESSAO';
   SQL.Open;

   if SQL.IsEmpty then
      UID     := 0
   else
      UID     := SQL.FieldByName('NovoID').AsInteger + 1;

   GravaPosicaoControles(pnGeral,'SalvarComo');

   SQLImpConfigAtual.Close;
   SQLImpConfigAtual.Open;

   cblConfig.KeyValue := UID;
end;

procedure TFormTelaConfiguracaoLayOutNF.ProcuraTabelaField(PainelField : TPanel; Caption: String);
Var I, X : Integer;
begin
     for I := 0 to DMImpNotaFiscal.ComponentCount - 1 do
       if DMImpNotaFiscal.Components[I] is TTable then
          for X := 0 to PainelField.ControlCount - 1 do
            if (PainelField.Controls[X] is TConerBtn) and ((PainelField.Controls[X] as TConerBtn).Caption = Caption) then
               begin
                  if DM.LocateByDisplayLabel((DMImpNotaFiscal.Components[I] as TTable), Caption) <> '' then
                     begin
                        TableResult := (DMImpNotaFiscal.Components[I] as TTable).Name;
                        FieldResult := DM.LocateByDisplayLabel((DMImpNotaFiscal.Components[I] as TTable), Caption);
                        Exit;
                     end
                  else
                     begin
                        TableResult := '';
                        FieldResult := '';
                     end;
               end;
end;

procedure TFormTelaConfiguracaoLayOutNF.FormCreate(Sender: TObject);

begin
  inherited;
  if not SQLImpConfigAtual.Active then SQLImpConfigAtual.Active := True;
  if Application.FindComponent('DMImpNotaFiscal') = nil then
     DMImpNotaFiscal := TDMImpNotaFiscal.Create(Self);

  AltLinha    := 15;
  EspacoLinha := 7;

  MostraConfig := True;
end;

procedure TFormTelaConfiguracaoLayOutNF.FormActivate(Sender: TObject);
Var I : Integer;
begin
  inherited;
  lstFields.Clear;

  lstFields.Items.Add('= Dados da NF');
  for I := 0 to DMImpNotaFiscal.TblNotaFiscal.FieldCount - 1 do
      lstFields.Items.Add(DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].DisplayLabel);

  lstFields.Items.Add('= Itens da NF');
  for I := 0 to DMImpNotaFiscal.TblNotaFiscalItem.FieldCount - 1 do
      lstFields.Items.Add(DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].DisplayLabel);

  lstFields.Items.Add('= Serviços da NF');
  for I := 0 to DMImpNotaFiscal.TblNotaFiscalItemServico.FieldCount - 1 do
      lstFields.Items.Add(DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].DisplayLabel);

  lstFields.Items.Add('= Financeiro da NF');
  for I := 0 to DMImpNotaFiscal.TblNotaFiscalFinanceiro.FieldCount - 1 do
      lstFields.Items.Add(DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].DisplayLabel);

end;

procedure TFormTelaConfiguracaoLayOutNF.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  PintaGrade(Sender as TPaintBox);
end;

procedure TFormTelaConfiguracaoLayOutNF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  pnCabecalho.Visible := (Sender as TCheckBox).Checked;
end;

procedure TFormTelaConfiguracaoLayOutNF.CheckBox3Click(Sender: TObject);
begin
  inherited;
  pnItens.Visible := (Sender as TCheckBox).Checked;
end;

procedure TFormTelaConfiguracaoLayOutNF.CheckBox2Click(Sender: TObject);
begin
  inherited;
  pnServico.Visible := (Sender as TCheckBox).Checked;
end;

procedure TFormTelaConfiguracaoLayOutNF.CheckBox4Click(Sender: TObject);
begin
  inherited;
  pnRodape.Visible := (Sender as TCheckBox).Checked;
end;

procedure TFormTelaConfiguracaoLayOutNF.pnCabecalhoDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
   Accept := True;
end;

procedure TFormTelaConfiguracaoLayOutNF.CriaBotao(Sender:TObject; Caption, Hint: String;
X, Y: Integer);
Var NovoField : TConerBtn;
begin
     NovoField := TConerBtn.Create(Sender as TPanel);
     NovoField.Visible := False;
     NovoField.Parent  := (Sender  as TPanel);
     NovoField.Name    := 'Field' + IntToStr((Sender as TPanel).ControlCount);
     NovoField.Caption := Caption;
     NovoField.OnMouseDown := MoveBotao;
     NovoField.Left    := Round(X / AltLinha) * AltLinha;
     NovoField.Top     := Round(Y / EspacoLinha) * EspacoLinha;
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
end;

procedure TFormTelaConfiguracaoLayOutNF.PaintBox1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
     if (Source is TListBox) and ((Source as TListBox).Name = 'lstFields') and (lstFields.Items.Strings[lstFields.ItemIndex][1] <> '=') then
        CriaBotao(((Sender as TPaintBox).Parent) as TPanel,lstFields.Items.Strings[lstFields.ItemIndex], 'Linha: X = ' + IntToStr(X) + char(#13) + 'Coluna: Y = ' + IntToStr(Y),X,Y);
end;

procedure TFormTelaConfiguracaoLayOutNF.PaintBox1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
   Accept := True;
end;

procedure TFormTelaConfiguracaoLayOutNF.ConfigControle(Sender : TObject);
Var I : Integer;
begin
  inherited;
  if Application.FindComponent('FormTelaConfigControle') = nil then
       Application.CreateForm(TFormTelaConfigControle,FormTelaConfigControle);

  SQL.Close;
  SQL.SQL.Text := 'select * from CONFIGIMPRESSAO where CFIMA60FIELDLABEL = "' + (Sender as TConerBtn).Caption + '" and CFIMIDIVISAO = ' + IntToStr(DivisaoAtivaTag);
  SQL.Open;

  if not SQL.IsEmpty then
     begin
        if Round((Sender as TConerBtn).Top / AltLinha) = SQL.FieldByName('CFIMIIMPLIN').AsInteger then
           FormTelaConfigControle.edLinha.Value := SQL.FieldByName('CFIMIIMPLIN').AsInteger
        else
           FormTelaConfigControle.edLinha.Value := Round((Sender as TConerBtn).Top / AltLinha);

        if Round((Sender as TConerBtn).Left / EspacoLinha) = SQL.FieldByName('CFIMIIMPCOL').AsInteger then
           FormTelaConfigControle.edColuna.Value := SQL.FieldByName('CFIMIIMPCOL').AsInteger
        else
           FormTelaConfigControle.edColuna.Value := Round((Sender as TConerBtn).Left / EspacoLinha);
     end
  else
     begin
        FormTelaConfigControle.edLinha.Value := Round((Sender as TConerBtn).Top / AltLinha);
        FormTelaConfigControle.edColuna.Value := Round((Sender as TConerBtn).Left / EspacoLinha);
     end;

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

        if not SQL.IsEmpty then
           begin
              SQL.Close;
              SQL.RequestLive := True;
              SQL.Open;

              SQL.Edit;
              SQL.FieldByName('CFIMIIMPLIN').AsFloat  := FormTelaConfigControle.edLinha.Value;
              SQL.FieldByName('CFIMIIMPCOL').AsFloat  := FormTelaConfigControle.edColuna.Value;
              SQL.Post;

              SQL.Close;
              SQL.RequestLive := False;
           end;
     end;
end;

procedure TFormTelaConfiguracaoLayOutNF.MoveBotao(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  DivisaoAtiva := ((Sender as TConerBtn).Parent as TPanel).Name;
  DivisaoAtivaTag := ((Sender as TConerBtn).Parent as TPanel).Tag;
  if Button = mbRight then
     BotaoAtivo := (Sender as TConerBtn).Name;
  ReleaseCapture;
  (Sender as TWinControl).perform(WM_SysCommand, SC_DragMove, 0);
end;

procedure TFormTelaConfiguracaoLayOutNF.Button2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  MoveBotao(Sender, Button, Shift, X, Y);
end;

procedure TFormTelaConfiguracaoLayOutNF.mnRemoverControleClick(
  Sender: TObject);
Var I, X : Integer;
begin
  inherited;
  for I := 0 to pnGeral.ControlCount - 1 do
     if pnGeral.Controls[I].Name = DivisaoAtiva then
        for X := 0 to (pnGeral.Controls[I] as TPanel).ControlCount - 1 do
            if (pnGeral.Controls[I] as TPanel).Controls[X].Name = BotaoAtivo then
               begin
                 if Application.MessageBox('Deseja realmente deletar este Campo da Impressão da Nota Fiscal?', 'Atenção', MB_YESNO + MB_ICONQUESTION + MB_SYSTEMMODAL) = idYes then
                    begin
                       SQL.Close;
                       SQL.SQL.Text := 'DELETE FROM CONFIGIMPRESSAO WHERE CFIMA60FIELDLABEL = "' + ((pnGeral.Controls[I] as TPanel).Controls[X] as TConerBtn).Caption +  '" AND  CFIMIDIVISAO = ' + IntToStr(pnGeral.Controls[I].Tag) +
                                       ' and CFIMIID = ' + IntToStr(cblConfig.KeyValue);
                       SQL.ExecSQL;
                       (pnGeral.Controls[I] as TPanel).Controls[X].Destroy;
                    end;
                 Exit;
               end;
end;

procedure TFormTelaConfiguracaoLayOutNF.mnAjusteFinoClick(Sender: TObject);
Var I, X : Integer;
begin
  inherited;
  for I := 0 to pnGeral.ControlCount - 1 do
     if pnGeral.Controls[I].Name = DivisaoAtiva then
        for X := 0 to (pnGeral.Controls[I] as TPanel).ControlCount - 1 do
            if (pnGeral.Controls[I] as TPanel).Controls[X].Name = BotaoAtivo then
               begin
                  ConfigControle((pnGeral.Controls[I] as TPanel).Controls[X]);
                  Exit;
               end;
end;

procedure TFormTelaConfiguracaoLayOutNF.DestroiBotoes;
Var X, PainelNro, TotalBotoes : Integer;
    PainelAtual : TPanel;
begin
   for PainelNro := 0 to pnGeral.ControlCount - 1 do
       begin
         if (pnGeral.Controls[PainelNro] is TPanel) then
             begin
               PainelAtual := (pnGeral.Controls[PainelNro] as TPanel);
               TotalBotoes := PainelAtual.ControlCount;
               while TotalBotoes > 0 do
                  begin
                    if PainelAtual.Controls[TotalBotoes - 1] is TConerBtn then
                       (PainelAtual.Controls[TotalBotoes - 1] as TConerBtn).Destroy;
                    Dec(TotalBotoes);
                  end;
             end;
       end;
end;

procedure TFormTelaConfiguracaoLayOutNF.cblConfigChange(
  Sender: TObject);
Var YY, X, I, Y, PainelNro : Integer;
    ControleExiste: Boolean;
    PainelAtual : TPanel;
begin
   inherited;
   if cblConfig.Text = '...' then
      btSalvarComo.Caption := '&Novo'
   else
      btSalvarComo.Caption := '&Salvar Como';

   btSalvar.Enabled := not (cblConfig.Text = '...');

   TabConfiguracaoGrupo.Show;

   DestroiBotoes;

   SQL.Close;
   SQL.SQL.Text := 'Select * from CONFIGIMPRESSAO where CFIMIID  = ' + SQLImpConfigAtualCFIMIID.AsString;
   SQL.Open;

   ControleExiste := False;

   for PainelNro := 0 to pnGeral.ControlCount - 1 do
       begin
         SQL.First;
         if (pnGeral.Controls[PainelNro] is TPanel) then
             begin
               PainelAtual := (pnGeral.Controls[PainelNro] as TPanel);
               while not SQL.Eof do
                  begin
                      for X := 0 to PainelAtual.ControlCount - 1 do
                          begin
                            if PainelAtual.Controls[X] is TConerBtn and
                               ((PainelAtual.Controls[X] as TConerBtn).Caption = SQL.FieldByName('CFIMA60FIELDLABEL').AsString) and
                               (PainelAtual.Tag = SQL.FieldByName('CFIMIDIVISAO').AsInteger) then
                               begin
                                  PainelAtual.Controls[X].Left := SQL.FieldByName('CFIMILEFT').AsInteger;
                                  PainelAtual.Controls[X].Top  := SQL.FieldByName('CFIMITOP').AsInteger;
                                  ControleExiste := True;
                                  Break;
                               end;
                          end;
                      if not ControleExiste and (PainelAtual.Tag = SQL.FieldByName('CFIMIDIVISAO').AsInteger) and
                         (SQL.FieldByName('CFIMA60FIELDLABEL').AsString <> '') then
                         begin
                            MostraConfig := False;
                            CriaBotao(PainelAtual, SQL.FieldByName('CFIMA60FIELDLABEL').AsString,'', SQL.FieldByName('CFIMILEFT').AsInteger, SQL.FieldByName('CFIMITOP').AsInteger);
                            MostraConfig := True;
                         end;
                    SQL.Next;
                  end;
             end;
       end;
   PageControlChange(PageControl);
end;

procedure TFormTelaConfiguracaoLayOutNF.btSalvarClick(Sender: TObject);
begin
  inherited;
  GravaPosicaoControles(pnGeral,'Salvar');
end;

procedure TFormTelaConfiguracaoLayOutNF.PageControlChange(Sender: TObject);
Var I : Integer;
begin
  inherited;
  if SQLConfigImpPapel.State  in dsEditModes then
     SQLConfigImpPapel.Post;

  SQLConfigImpPapel.Close;
  SQLConfigImpPapel.RequestLive := True;
  SQLConfigImpPapel.Open;

  if (PageControl.ActivePage = TabConfiguracaoGrupo) and (cblConfig.Text <> '...') then
     begin
         if SQLConfigImpPapel.Locate('CFIMIID',IntToStr(cblConfig.KeyValue),[]) then
            SQLConfigImpPapel.Edit
         else
            begin
                SQLConfigImpPapel.Append;
                SQLConfigImpPapelCFIMIID.AsInteger := cblConfig.KeyValue;
            end;
         Col := SQLConfigImpPapel.FieldByName('CFIPITOTALCOLUNAS').AsInteger;
         Lin := SQLConfigImpPapel.FieldByName('CFIPITOTALLINHAS').AsInteger;

         for I := 0 to pnGeral.ControlCount - 1 do
            begin
                if (pnGeral.Controls[I] is TPaintBox) then
                   (pnGeral.Controls[I] as TPaintBox).Repaint;
            end;
     end
  else
     SQLConfigImpPapel.Close;
end;

procedure TFormTelaConfiguracaoLayOutNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFormTelaConfiguracaoLayOutNF.mnGradedeImpressoClick(
  Sender: TObject);
Var Linha, Coluna : Integer;
begin
  inherited;
  if Application.FindComponent('FormTelaConfigControle') = nil then
       Application.CreateForm(TFormTelaConfigControle,FormTelaConfigControle);

  FormTelaConfigControle.PageControl.ActivePage := FormTelaConfigControle.TabSheetImpressao;
  FormTelaConfigControle.ShowModal;

  if FormTelaConfigControle.ModalResult <> mrOK then
     begin
        FormTelaConfigControle.Free;
        Abort;
     end;

  MakeWindowMessage('Gerando Grade.');
  RDprint.TamanhoQteLinhas  := SQLConfigImpPapelCFIPITOTALLINHAS.AsInteger;
  RDprint.TamanhoQteColunas := SQLConfigImpPapelCFIPITOTALCOLUNAS.AsInteger;
  RDprint.Abrir;
  for Linha := 1 to RDprint.TamanhoQteLinhas do
     begin
        if (Linha = 1) or (Linha = RDprint.TamanhoQteLinhas) then
           for Coluna := 2 to RDprint.TamanhoQteColunas do
               RDprint.ImpF(Linha,Coluna,Copy(IntToStr(Coluna),Length(IntToStr(Coluna)), 1),[TipoFonte(FormTelaConfigControle.cboEstilo.Text)])
        else
           begin
             Coluna := 1;
             while Coluna <= RDprint.TamanhoQteColunas do
                 begin
                    RDprint.ImpF(Linha,Coluna,'-',[TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                    if (Coluna = 1) or (Coluna = RDprint.TamanhoQteColunas) then
                       RDprint.ImpF(Linha,Coluna,Copy(IntToStr(Linha),Length(IntToStr(Linha)), 1),[TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                    if (Coluna mod 4) = 0 then
                       RDprint.ImpF(Linha,Coluna,'+',[TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                    Inc(Coluna);
                    Application.ProcessMessages;
                 end;
           end;
     end;
  RDprint.Fechar;
  FormTelaConfigControle.Free;
  DestroyWindow;
end;

procedure TFormTelaConfiguracaoLayOutNF.lstFieldsDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
  inherited;
  lstFields.Canvas.FillRect(Rect);
  if lstFields.Items.Strings[Index][1] = '=' then
  lstFields.Canvas.Font.Color := clBlue;
  lstFields.Canvas.TextOut(Rect.TopLeft.X,Rect.TopLeft.Y,lstFields.Items.Strings[Index]);
end;

procedure TFormTelaConfiguracaoLayOutNF.ImprimirTeste1Click(
  Sender: TObject);
begin
  inherited;
    RDprint.Abrir;
    if Application.FindComponent('FormTelaConfigControle') = nil then
         Application.CreateForm(TFormTelaConfigControle,FormTelaConfigControle);

    FormTelaConfigControle.PageControl.ActivePage := FormTelaConfigControle.TabSheetImpressao;
    FormTelaConfigControle.ShowModal;

    if FormTelaConfigControle.ModalResult <> mrOK then
       begin
          FormTelaConfigControle.Free;
          Abort;
       end;
    ImprimeDadosNFPersonalizado(0); // Cabecalho
    ImprimeFinanNFPersonalizado;    //Financeiro
    ImprimeItensNFPersonalizado;    //Itens
    ImprimeDadosNFPersonalizado(3); // Rodape
    ImprimeServsNFPersonalizado;    //Serviços
    RDprint.Fechar;
end;

function TFormTelaConfiguracaoLayOutNF.TipoFonte(Nome: String):TTipoFonte;
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

procedure TFormTelaConfiguracaoLayOutNF.ImprimeDadosNFPersonalizado(Divisao : Integer);
Var I : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO  ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + IntToStr(cblConfig.KeyValue) + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = ' + IntToStr(Divisao) ;
   SQLLayOutImpressao.Open;

   RDprint.TamanhoQteLinhas  := SQLLayOutImpressao.FieldByName('CFIPITOTALLINHAS').AsInteger;
   RDprint.TamanhoQteColunas := SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsInteger;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscal.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscal.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName(PainelDivisao[Divisao]).AsInteger,
                          SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,SQLLayOutImpressao.FieldByName('CFIMA60FIELDLABEL').AsVariant,
                          [TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
       end;
end;

procedure TFormTelaConfiguracaoLayOutNF.ImprimeItensNFPersonalizado;
Var I, Z, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + IntToStr(cblConfig.KeyValue) + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 1 ';
   SQLLayOutImpressao.Open;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalItem.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalItem.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                Item := 0;
                for Z := 0 to 7 do
                    begin
                       RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIITENS').AsInteger + Item,
                                    SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,SQLLayOutImpressao.FieldByName('CFIMA60FIELDLABEL').AsVariant,
                                    [TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                       Item := Item + 1;
                    end;
             end;
       end;
end;


procedure TFormTelaConfiguracaoLayOutNF.ImprimeServsNFPersonalizado;
Var I, Z, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + IntToStr(cblConfig.KeyValue) + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 2 ';
   SQLLayOutImpressao.Open;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalItemServico.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalItemServico.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                Item := 0;
                for Z := 0 to 7 do
                    begin
                       RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININISERV').AsInteger + Item,
                                    SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,SQLLayOutImpressao.FieldByName('CFIMA60FIELDLABEL').AsVariant,
                                    [TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                       Item := Item + 1;
                    end;
             end;
       end;
end;

procedure TFormTelaConfiguracaoLayOutNF.ImprimeFinanNFPersonalizado;
Var I, Z, Item, QtdeItens, QtdeColunas, ColunasBox, Linha : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + IntToStr(cblConfig.KeyValue) + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 4';
   SQLLayOutImpressao.Open;

   QtdeItens := SQLLayOutImpressao.FieldByName('CFIPILINFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger;
   ColunasBox := SQLLayOutImpressao.FieldByName('CFIPICOLFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPICOLINIFINAN').AsInteger;

   for I := 0 to DMImpNotaFiscal.TblNotaFiscalFinanceiro.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',DMImpNotaFiscal.TblNotaFiscalFinanceiro.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                Item := 0;
                QtdeColunas := 0;
                Linha       := 0;

                for Z := 0 to 7 do
                    begin
                       //Direção Vertical
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'V' then
                          begin
                             if Item > (QtdeItens - 1) then
                                begin
                                   Item := 0;
                                   QtdeColunas := QtdeColunas + ColunasBox;
                                end;
                             if Item <> 0 then
                                Linha := Linha + 1
                             else
                                Linha := 0;
                          end;

                       //Direção Horizontal
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'H' then
                          if (Item * ColunasBox) > SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsFloat  then
                             begin
                               QtdeColunas := 0;
                               Linha       := Linha + 1;
                             end
                          else
                             begin
                               QtdeColunas := Item * ColunasBox;
                             end;

                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger + Linha,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger + QtdeColunas,
                                       SQLLayOutImpressao.FieldByName('CFIMA60FIELDLABEL').AsVariant,
                                       [TipoFonte(FormTelaConfigControle.cboEstilo.Text)]);
                       Item := Item + 1;
                    end;
             end;
       end;
end;

procedure TFormTelaConfiguracaoLayOutNF.SQLConfigImpPapelNewRecord(
  DataSet: TDataSet);
Var I : Integer;
begin
    inherited;
    SQLConfigImpPapelCFIPITOTALLINHAS.AsInteger  := 80;
    SQLConfigImpPapelCFIPITOTALCOLUNAS.AsInteger := 96;
    SQLConfigImpPapelCFIPA13COMPRESSAO.AsString  := 'normal';
    SQLConfigImpPapelCFIPCPADRAO.AsString        := 'N';
    SQLConfigImpPapelCFIPCDIRECAO.AsString       := 'H';

    for I := 6 to SQLConfigImpPapel.FieldCount - 1 do
         begin
            SQLConfigImpPapel.Fields.Fields[I].AsInteger := 0;
         end;
end;

procedure TFormTelaConfiguracaoLayOutNF.SQLConfigImpPapelBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLConfigImpPapelCFIPCPADRAO.AsString = 'S' then
     begin
        SQL.Close;
        SQL.SQL.Text := 'update CONFIGIMPRESSAOPAPEL set CFIPCPADRAO = "N" where CFIMIID <> ' + SQLConfigImpPapelCFIMIID.AsString;
        SQL.ExecSQL;
     end;
end;

end.
