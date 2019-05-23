unit TelaGeracaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, Grids, DBGrids, StdCtrls, CurrEdit,
  RxLookup, Mask, ToolEdit, DBTables, RxQuery, Buttons, jpeg, ExtCtrls,
  ComCtrls, VarSys, RXCtrls, Placemnt, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoDuplicata = class(TFormTelaGeralTEMPLATE)
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    ComboCliente: TRxDBLookupCombo;
    TotalContas: TCurrencyEdit;
    GroupPadrao: TGroupBox;
    Padrao1: TRadioButton;
    Padrao2: TRadioButton;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblRecebimento: TTable;
    TblRecebimentoCTRCA13ID: TStringField;
    TblRecebimentoCLIEA13ID: TStringField;
    TblRecebimentoDtVencimento: TDateTimeField;
    TblRecebimentoClienteNome: TStringField;
    TblRecebimentoParcela: TIntegerField;
    TblRecebimentoValor: TFloatField;
    TblRecebimentoValorJuro: TFloatField;
    TblRecebimentoValorMulta: TFloatField;
    TblRecebimentoValorDesconto: TFloatField;
    TblRecebimentoValorTotal: TFloatField;
    TblRecebimentoBaixar: TBooleanField;
    TblRecebimentoDocumento: TStringField;
    TblRecebimentoEmissao: TDateField;
    TblRecebimentoNroDuplicBanco: TStringField;
    DSTblRecebimento: TDataSource;
    DBGridLista: TDBGrid;
    SQLTotal: TRxQuery;
    SQLTotalTotal: TFloatField;
    SQLDuplicatas: TRxQuery;
    SQLDuplicatasDUPLA13ID: TStringField;
    SQLDuplicatasEMPRICOD: TIntegerField;
    SQLDuplicatasTERMICOD: TIntegerField;
    SQLDuplicatasDUPLICOD: TIntegerField;
    SQLDuplicatasCLIEA13ID: TStringField;
    SQLDuplicatasDUPLDEMIS: TDateTimeField;
    SQLDuplicatasDUPLN3VLR: TBCDField;
    SQLDuplicatasDUPLDVENC: TDateTimeField;
    SQLDuplicatasDUPLA254HIST: TStringField;
    SQLDuplicatasDUPLA60LOCALPAGTO: TStringField;
    Progress: TProgressBar;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    DSSQLRecebimento: TDataSource;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DtVencto: TDateEdit;
    Label6: TLabel;
    EditLocal: TEdit;
    MemoHistorico: TMemo;
    Label7: TLabel;
    CheckVencimento: TCheckBox;
    SQLDuplicatasDUPLA254DOCS: TStringField;
    DSSQLDuplicatas: TDataSource;
    SQLReceber: TRxQuery;
    SQLReceberCTRCA13ID: TStringField;
    SQLReceberEMPRICOD: TIntegerField;
    SQLReceberTERMICOD: TIntegerField;
    SQLReceberCTRCICOD: TIntegerField;
    SQLReceberCLIEA13ID: TStringField;
    SQLReceberCTRCCSTATUS: TStringField;
    SQLReceberCTRCINROPARC: TIntegerField;
    SQLReceberCTRCDVENC: TDateTimeField;
    SQLReceberCTRCN2VLR: TBCDField;
    SQLReceberCTRCN2DESCFIN: TBCDField;
    SQLReceberNUMEICOD: TIntegerField;
    SQLReceberPORTICOD: TIntegerField;
    SQLReceberCTRCN2TXJURO: TBCDField;
    SQLReceberCTRCN2TXMULTA: TBCDField;
    SQLReceberCTRCA5TIPOPADRAO: TStringField;
    SQLReceberCTRCDULTREC: TDateTimeField;
    SQLReceberCTRCN2TOTREC: TBCDField;
    SQLReceberCTRCN2TOTJUROREC: TBCDField;
    SQLReceberCTRCN2TOTMULTAREC: TBCDField;
    SQLReceberCTRCN2TOTDESCREC: TBCDField;
    SQLReceberCTRCN2TOTMULTACOBR: TBCDField;
    SQLReceberEMPRICODULTREC: TIntegerField;
    SQLReceberCUPOA13ID: TStringField;
    SQLReceberTPDCICOD: TIntegerField;
    SQLReceberPLCTA15COD: TStringField;
    SQLReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLReceberNOFIA13ID: TStringField;
    SQLReceberCTRCDEMIS: TDateTimeField;
    SQLReceberPENDENTE: TStringField;
    SQLReceberREGISTRO: TDateTimeField;
    SQLReceberCTRCDREABILSPC: TDateTimeField;
    SQLReceberBANCA5CODCHQ: TStringField;
    SQLReceberCTRCA10AGENCIACHQ: TStringField;
    SQLReceberCTRCA15CONTACHQ: TStringField;
    SQLReceberCTRCA15NROCHQ: TStringField;
    SQLReceberCTRCA60TITULARCHQ: TStringField;
    SQLReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLReceberALINICOD: TIntegerField;
    SQLReceberPDVDA13ID: TStringField;
    SQLReceberCTRCDESTORNO: TDateTimeField;
    SQLReceberFRETA13ID: TStringField;
    SQLReceberDUPLA13ID: TStringField;
    SQLReceberCTRCA254HIST: TStringField;
    DSSQLReceber: TDataSource;
    Label8: TLabel;
    EditDuplicata: TEdit;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    FormStorage: TFormStorage;
    BtnBaixarDoc: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtualizaTotal;
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure TblRecebimentoBeforePost(DataSet: TDataSet);
    procedure CheckVencimentoClick(Sender: TObject);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure LancaIDDuplicatasContasReceber(IDDuplicata,IDContasReceber : String);
    procedure SQLRecebimentoBeforePost(DataSet: TDataSet);
    procedure SQLDuplicatasBeforePost(DataSet: TDataSet);
    procedure SQLDuplicatasNewRecord(DataSet: TDataSet);
    procedure SQLReceberBeforePost(DataSet: TDataSet);
    procedure SQLReceberNewRecord(DataSet: TDataSet);
    procedure SQLReceberPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    OriginalOptions  : TDBGridOptions;
    TotalDuplicata   : Double;
    NumerosDuplicata : String;
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoDuplicata: TFormTelaGeracaoDuplicata;

implementation

uses DataModulo, UnitLibrary, TelaImpressaoBloquetos;

{$R *.dfm}

procedure TFormTelaGeracaoDuplicata.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;

  TblRecebimento.Close;
  try
    TblRecebimento.DeleteTable;
  except
  end;
  TblRecebimento.CreateTable;
  TblRecebimento.AddIndex('','CTRCA13ID',[ixPrimary]);
  TblRecebimento.AddIndex('Data','DtVencimento',[ixCaseInsensitive]);
  TblRecebimento.IndexFieldNames := 'DtVencimento' ;
  TblRecebimento.Open ;

  if ComboCliente.Value = '' then
    begin
      Informa('Por favor selecione um cliente!');
      ComboCliente.SetFocus;
      Exit;
    end;
  SQLContasReceber.Close;
  if not CheckVencimento.Checked then
    begin
      SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CR.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    end
  else
    SQLContasReceber.MacroByName('MData').Value := '0=0';
  if ComboCliente.Text <> '' then
    SQLContasReceber.MacroByName('MCliente').Value   := 'CL.CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLContasReceber.MacroByName('MCliente').Value   := '0=0';

  if ComboEmpresa.Value <> '' then
    SQLContasReceber.MacroByName('MEmpresa').Value   := 'CR.EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLContasReceber.MacroByName('MEmpresa').Value   := '0=0';

  SQLContasReceber.Open;
  TblRecebimento.DisableControls;
  while not SQLContasReceber.Eof do
    begin
      TblRecebimento.Append;
      TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceber.FieldByName('CTRCA13ID').AsString;
      TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
      TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
      TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
      TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceber.FieldByName('CTRCINROPARC').Value;
      TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceber.FieldByName('Saldo').AsFloat;
      TblRecebimento.FieldByName('ValorDesconto').AsFloat   := SQLContasReceber.FieldByName('CTRCN2DESCFIN').AsFloat;
      TblRecebimento.FieldByName('ValorTotal').AsFloat      := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
      TblRecebimento.FieldByName('Emissao').AsFloat         := SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;

      if SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
        begin
          if DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[SQLContasReceber.FieldByName('NOFIA13ID').asString],1) Then
            TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('NOFIINUMERO').asString;
        end
      else
        begin
          if SQLContasReceber.FieldByName('CUPOA13ID').AsVariant <> Null then
            TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CUPOA13ID').asString
          else
            TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CTRCA13ID').asString;
        end;
      TblRecebimento.FieldByName('NroDuplicBanco').AsString  := SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString;

      If Padrao1.Checked Then
        TblRecebimento.FieldByName('Baixar').Value := True
      Else
        TblRecebimento.FieldByName('Baixar').Value := False;
      TblRecebimento.Post;

      SQLContasReceber.Next;
    end;
  AtualizaTotal ;
  TblRecebimento.EnableControls;
end;

procedure TFormTelaGeracaoDuplicata.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open ;
  SQLCliente.Open ;
  ComboEmpresa.KeyValue := EmpresaPadrao;
  De.Date := Date ;
  Ate.Date := Date ;
end;
procedure TFormTelaGeracaoDuplicata.AtualizaTotal ;
begin
  SQLTotal.Close ;
  SQLTotal.Open ;
  TotalContas.Value := SQLTotalTotal.Value ;
  SQLTotal.Close ;
end ;

procedure TFormTelaGeracaoDuplicata.DBGridListaCellClick(Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaGeracaoDuplicata.DBGridListaColEnter(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaGeracaoDuplicata.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaGeracaoDuplicata.DBGridListaDrawColumnCell(
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

procedure TFormTelaGeracaoDuplicata.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = VK_Return) and (DSTblRecebimento.DataSet.State in DSEditModes) then
    TblRecebimento.Post;
end;
procedure TFormTelaGeracaoDuplicata.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaGeracaoDuplicata.TblRecebimentoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  TblRecebimentoValorTotal.AsFloat := (TblRecebimentoValor.AsFloat +
                                      TblRecebimentoValorMulta.AsFloat +
                                      TblRecebimentoValorJuro.AsFloat) -
                                      TblRecebimentoValorDesconto.AsFloat;
end;

procedure TFormTelaGeracaoDuplicata.CheckVencimentoClick(Sender: TObject);
begin
  inherited;
  if CheckVencimento.Checked then
    begin
      De.Enabled  := False;
      Ate.Enabled := False;
    end
  else
    begin
      De.Enabled  := True;
      Ate.Enabled := True;
    end;
end;

procedure TFormTelaGeracaoDuplicata.BtnBaixarDocClick(Sender: TObject);
begin
  inherited;
  if DtVencto.Text = '  /  /    ' then
    begin
      Informa('Você deve informar a data de vencimento da duplicata!');
      DtVencto.SetFocus;
      Abort;
    end;
  SQLReceber.Close;
  TblRecebimento.DisableControls;
  TblRecebimento.First;
  Progress.Position := 0;
  SQLRecebimento.Open;
  TotalDuplicata    := 0;
  while not TblRecebimento.Eof do
    begin
      if TblRecebimento.FieldByName('Baixar').Value then
        begin
          {SQLRecebimento.Append;
          SQLRecebimento.FieldByName('CTRCA13ID').AsString     := TblRecebimento.FieldByName('CTRCA13ID').AsString;
          SQLRecebimento.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
          SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime  := Date;
          SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= Date;
          SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := TblRecebimento.FieldByName('Valor').AsFloat;
          SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := TblRecebimento.FieldByName('ValorJuro').AsFloat;
          SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := TblRecebimento.FieldByName('ValorMulta').AsFloat;
          SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := TblRecebimento.FieldByName('ValorDesconto').AsFloat;
          SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente;
          SQLRecebimento.Post ; }

          TotalDuplicata    := TotalDuplicata + TblRecebimento.FieldByName('Valor').AsFloat;

          {if NumerosDuplicata = '' then
            NumerosDuplicata  := TblRecebimento.FieldByName('NroDuplicBanco').AsString
          else
            NumerosDuplicata  := NumerosDuplicata + ' - ' + TblRecebimento.FieldByName('NroDuplicBanco').AsString;

          AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').Value); }
        end;
      TblRecebimento.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    end;
  // GERAR DUPLICATA
  if not SQLDuplicatas.Active then SQLDuplicatas.Open;
  if TotalDuplicata > 0 then
    begin
      SQLDuplicatas.Append;
      SQLDuplicatasCLIEA13ID.AsString         := TblRecebimentoCLIEA13ID.AsString;
      SQLDuplicatasDUPLDEMIS.AsDateTime       := Date;
      SQLDuplicatasDUPLDVENC.AsDateTime       := DtVencto.Date;
      SQLDuplicatasDUPLN3VLR.AsFloat          := TotalDuplicata;
      SQLDuplicatasDUPLA254DOCS.AsString      := NumerosDuplicata;
      SQLDuplicatasDUPLA60LOCALPAGTO.AsString := EditLocal.Text;
      SQLDuplicatasDUPLA254HIST.AsString      := MemoHistorico.Text;
      SQLDuplicatas.Post;
      TblRecebimento.First;
      Progress.Min := 0;
      Progress.Max := TblRecebimento.RecordCount;
      Progress.Position := 0;
      while not TblRecebimento.Eof do
        begin
          if TblRecebimento.FieldByName('Baixar').Value then
            begin
              LancaIDDuplicatasContasReceber(SQLDuplicatasDUPLA13ID.AsString,TblRecebimentoCTRCA13ID.AsString);
              TblRecebimento.Delete;
            end
          else
            TblRecebimento.Next;
          Progress.Position := Progress.Position + 1;
          Progress.Update;
        end;
      // LANCA NOVO REGISTRO NO CONTAS A RECEBER COM OS VALORES ACUMULDADOS DAS CONTAS
      // SELECIONADAS PARA A EMISSAO DA DUPLICATA;
     {SQLReceber.Close;
      SQLReceber.MacroByName('MFiltro').AsString := 'CTRCA13ID IS NULL';
      SQLReceber.Open;
      SQLReceber.Append;
      SQLReceberCLIEA13ID.AsString             := SQLDuplicatasCLIEA13ID.AsString;
      SQLReceberCTRCA254HIST.AsString          := SQLDuplicatasDUPLA254HIST.AsString;
      if EditDuplicata.Text = '' then
        SQLReceberCTRCA30NRODUPLICBANCO.AsString := SQLDuplicatasDUPLICOD.AsString
      else
        SQLReceberCTRCA30NRODUPLICBANCO.AsString := EditDuplicata.Text;
      SQLReceberCTRCA5TIPOPADRAO.AsString      := 'CRD';
      SQLReceberCTRCCSTATUS.AsString           := 'A';
      SQLReceberCTRCDEMIS.AsDateTime           := SQLDuplicatasDUPLDEMIS.AsDateTime;
      SQLReceberCTRCDVENC.AsDateTime           := SQLDuplicatasDUPLDVENC.AsDateTime;
      SQLReceberCTRCINROPARC.AsString          := '1';
      SQLReceberCTRCN2VLR.AsFloat              := SQLDuplicatasDUPLN3VLR.AsFloat;
      SQLReceberDUPLA13ID.AsString             := SQLDuplicatasDUPLA13ID.AsString;
      SQLReceber.Post; }
    end;
  Progress.Position := 0;
  if TotalDuplicata > 0 then
    if Pergunta('SIM','Duplicata Gerada Com Sucesso. Deseja Imprimir Agora?') then
      begin
        Application.CreateForm(TFormTelaImpressaoBloquetos,FormTelaImpressaoBloquetos);
        FormTelaImpressaoBloquetos.SQLContasReceber.Close;
        FormTelaImpressaoBloquetos.SQLContasReceber.MacroByName('MNota').Value := 'DUPLA13ID = ' + '"' + SQLDuplicatasDUPLA13ID.AsString + '"';
        FormTelaImpressaoBloquetos.SQLContasReceber.Open;
        FormTelaImpressaoBloquetos.SQLTotais.Close;
        FormTelaImpressaoBloquetos.SQLTotais.MacroByName('MNota').Value := 'DUPLA13ID = '+ '"' + SQLDuplicatasDUPLA13ID.AsString + '"';
        FormTelaImpressaoBloquetos.SQLTotais.Open;
        FormTelaImpressaoBloquetos.MemoInst.Text         := MemoHistorico.Text;
        FormTelaImpressaoBloquetos.EditLocalPagto.Text   := EditLocal.Text;
        FormTelaImpressaoBloquetos.Show;
      end;

  SQLDuplicatas.Close;
  SQLRecebimento.Close;
  TblRecebimento.EnableControls;
end;
procedure TFormTelaGeracaoDuplicata.LancaIDDuplicatasContasReceber(IDDuplicata,IDContasReceber : String);
begin
  if (Length(IDDuplicata) = 13) and (Length(IDContasReceber) = 13) then
    begin
      SQLReceber.Close;
      SQLReceber.MacroByName('MFiltro').AsString := 'CTRCA13ID = "' + IDContasReceber + '"';
      SQLReceber.Open;
      if not SQLReceber.IsEmpty then
        begin
          SQLReceber.Edit;
          if SQLReceberCTRCA254HIST.AsString <> '' then
            SQLReceberCTRCA254HIST.AsString := SQLReceberCTRCA254HIST.AsString + #13 +
                                               'CONTA SELECIONADA PARA A GERAÇÃO DA DUPLICATA DE NRO: ' +
                                               SQLDuplicatasDUPLICOD.AsString
          else
            SQLReceberCTRCA254HIST.AsString := 'CONTA SELECIONADA PARA A GERAÇÃO DA DUPLICATA DE NRO: ' +
                                               SQLDuplicatasDUPLICOD.AsString;

          SQLReceberDUPLA13ID.AsString      := IDDuplicata;
          SQLReceberCTRCA30NRODUPLICBANCO.AsString := SQLDuplicatasDUPLICOD.AsString;                           
          SQLReceber.Post;
        end;
    end
  else
    Informa('Parâmetros inválidos!');
end;
procedure TFormTelaGeracaoDuplicata.SQLRecebimentoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;

  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('RECEBIMENTO', DSSQLRecebimento, DataSet, 1, 0);
  end;
end;

procedure TFormTelaGeracaoDuplicata.SQLDuplicatasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;

  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('DUPLICATA', DSSQLDuplicatas, DataSet, 3, 0);
  end;
end;

procedure TFormTelaGeracaoDuplicata.SQLDuplicatasNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet <> nil then
    case DataSet.Tag of
      2:if DataSet.FindField('EMPRICOD') <> nil then
          DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
      3:begin
          if DataSet.FindField('EMPRICOD') <> nil then
            DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
          if DataSet.FindField('TERMICOD') <> nil then
            DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
        end;
    end;
end;
procedure TFormTelaGeracaoDuplicata.SQLReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;

  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('CONTASRECEBER', DSSQLReceber, DataSet, 3, 0);
  end;
end;

procedure TFormTelaGeracaoDuplicata.SQLReceberNewRecord(DataSet: TDataSet);
begin
  inherited;
  if DataSet <> nil then
    case DataSet.Tag of
      2:if DataSet.FindField('EMPRICOD') <> nil then
          DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
      3:begin
          if DataSet.FindField('EMPRICOD') <> nil then
            DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
          if DataSet.FindField('TERMICOD') <> nil then
            DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
        end;
    end;
  DataSet.FieldByName('CTRCN2VLR').Value         := 0 ;
  DataSet.FieldByName('CTRCN2DESCFIN').Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXMULTA').Value     := Dm.SQLConfigCrediarioCFCRN2PERCMULATRAS.Value
  else
    DataSet.FieldByName('CTRCN2TXMULTA').Value     := 0 ;

  if Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXJURO').Value      := Dm.SQLConfigCrediarioCFCRN2PERCJURATRAS.Value
  else
    DataSet.FieldByName('CTRCN2TXJURO').Value      := 0 ;

  DataSet.FieldByName('CTRCN2TOTREC').Value      := 0 ;
  DataSet.FieldByName('CTRCN2TOTJUROREC').Value  := 0 ;
  DataSet.FieldByName('CTRCN2TOTMULTAREC').Value := 0 ;
  DataSet.FieldByName('CTRCN2TOTDESCREC').Value  := 0 ;
end;

procedure TFormTelaGeracaoDuplicata.SQLReceberPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  ID : String;  
begin
  inherited;
  case DataSet.State Of
    DsInsert:
      begin
        case DataSet.Tag Of
          3:begin
              DataSet.Fields[3].AsInteger:=DataSet.Fields[3].AsInteger + 1;
              ID:=Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.Fields[3].asInteger]);
              DataSet.Fields[0].asString:=ID+DM.DigitVerifEAN(ID);
            end;
         end;
      end;
   end;
end;

end.


