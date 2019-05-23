unit CadastroLMC;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  ExtCtrls, Buttons, jpeg, RxLookup, ToolEdit, RXDBCtrl, DBCtrls, EDBNum, DateUtils,
  ppBands, ppDB, ppCache, ppClass, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppReport, RDprint, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroLMC = class(TFormCadastroTEMPLATE)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateLILMICOD: TIntegerField;
    SQLTemplateLMCAIPAGATUAL: TIntegerField;
    SQLTemplateLMCADDTMOV: TDateTimeField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateLMCAN2PRECODIA: TBCDField;
    SQLTemplateLMCAN2TQI1: TBCDField;
    SQLTemplateLMCAN2TQI2: TBCDField;
    SQLTemplateLMCAN2TQI3: TBCDField;
    SQLTemplateLMCAN2TQI4: TBCDField;
    SQLTemplateLMCAN2TQI5: TBCDField;
    SQLTemplateLMCAN2TQI6: TBCDField;
    SQLTemplateLMCAN2TQF1: TBCDField;
    SQLTemplateLMCAN2TQF2: TBCDField;
    SQLTemplateLMCAN2TQF3: TBCDField;
    SQLTemplateLMCAN2TQF4: TBCDField;
    SQLTemplateLMCAN2TQF5: TBCDField;
    SQLTemplateLMCAN2TQF6: TBCDField;
    SQLTemplateLMCAN2VLRACUMES: TBCDField;
    SQLTemplateLMCAN2VLRPERDSOB: TBCDField;
    SQLTemplateLMCAA100OBS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBData: TDBDateEdit;
    Label2: TLabel;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    DSSQLProduto: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ComboProduto: TRxDBLookupCombo;
    DBEditVlrVenda: TEvDBNumEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    TQI1: TEvDBNumEdit;
    TQI2: TEvDBNumEdit;
    TQI3: TEvDBNumEdit;
    TQI4: TEvDBNumEdit;
    TQI5: TEvDBNumEdit;
    TQI6: TEvDBNumEdit;
    Label12: TLabel;
    EditEstoqueAbertura: TEdit;
    TabVolRecebido: TTabSheet;
    TabVolVendido: TTabSheet;
    BtVolumeVendido: TRxSpeedButton;
    TabFechamento: TTabSheet;
    BtFechamento: TRxSpeedButton;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label5: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    Label13: TLabel;
    SQLEntrada: TRxQuery;
    DSSQLEntrada: TDataSource;
    SQLEntradaEMPRICOD: TIntegerField;
    SQLEntradaLILMICOD: TIntegerField;
    SQLEntradaLMENIPAGATUAL: TIntegerField;
    SQLEntradaLMENDDTMOV: TDateTimeField;
    SQLEntradaPRODICOD: TIntegerField;
    SQLEntradaLMENA15NRONF: TStringField;
    SQLEntradaLMENDDTNF: TDateTimeField;
    SQLEntradaTANQICOD: TIntegerField;
    SQLEntradaLMENN2QTE: TBCDField;
    SQLEntradaPENDENTE: TStringField;
    SQLEntradaREGISTRO: TDateTimeField;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGridVolRecebido: TDBGrid;
    BTEntradaNovo: TBitBtn;
    BTEntradaGravar: TBitBtn;
    BtEntradaExcluir: TBitBtn;
    EditTotalRecebido: TEdit;
    Label18: TLabel;
    SQLTotalRecebido: TRxQuery;
    SQLTotalRecebidoSUM: TBCDField;
    Label19: TLabel;
    EditTotalRecebidoDisponivel: TEdit;
    Label20: TLabel;
    EditEstoqueRecebidoAbertura: TEdit;
    DSSQLSaida: TDataSource;
    SQLSaida: TRxQuery;
    SQLSaidaEMPRICOD: TIntegerField;
    SQLSaidaLILMICOD: TIntegerField;
    SQLSaidaLMSAIPAGATUAL: TIntegerField;
    SQLSaidaLMSADDTMOV: TDateTimeField;
    SQLSaidaPRODICOD: TIntegerField;
    SQLSaidaTANQICOD: TIntegerField;
    SQLSaidaBOMBICOD: TIntegerField;
    SQLSaidaLMSAN2FECHAME: TBCDField;
    SQLSaidaLMSAN2ABERTUR: TBCDField;
    SQLSaidaLMSAN2AFERIR: TBCDField;
    SQLSaidaPENDENTE: TStringField;
    SQLSaidaREGISTRO: TDateTimeField;
    Panel12: TPanel;
    BTSaidaNovo: TBitBtn;
    BTSaidaGravar: TBitBtn;
    BTSaidaExcluir: TBitBtn;
    Panel13: TPanel;
    DBGrid1: TDBGrid;
    SQLSaidaQtdeVendaBico: TFloatField;
    VendaBicos: TGroupBox;
    EvDBNumEdit5: TEvDBNumEdit;
    GroupBox2: TGroupBox;
    EvDBNumEdit6: TEvDBNumEdit;
    GroupBox3: TGroupBox;
    EvDBNumEdit7: TEvDBNumEdit;
    GroupBox4: TGroupBox;
    EvDBNumEdit8: TEvDBNumEdit;
    GroupBox5: TGroupBox;
    EvDBNumEdit9: TEvDBNumEdit;
    GroupBox6: TGroupBox;
    EditPerdasSobras: TEvDBNumEdit;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    EvDBNumEdit11: TEvDBNumEdit;
    EvDBNumEdit12: TEvDBNumEdit;
    EvDBNumEdit13: TEvDBNumEdit;
    EvDBNumEdit14: TEvDBNumEdit;
    EvDBNumEdit15: TEvDBNumEdit;
    SQLTemplateLMCAN2QTDVENDIA: TBCDField;
    SQLTemplateLMCAN2ESTESCRIT: TBCDField;
    SQLTemplateLMCAN2ESTFECHAM: TBCDField;
    SQLTemplateLMCAN2VLRVENDIA: TBCDField;
    SQLTotalRecebidoPorTanque: TRxQuery;
    SQLTotalRecebidoPorTanqueSUM: TBCDField;
    SQLLMCCABAcumaladoMes: TRxQuery;
    SQLLMCCABAcumaladoMesSUM: TBCDField;
    DSSQLLivro: TDataSource;
    SQLLivro: TRxQuery;
    SQLLivroEMPRICOD: TIntegerField;
    SQLLivroLILMICOD: TIntegerField;
    SQLLivroLILMIPAGATUAL: TIntegerField;
    SQLLivroLILMIPAGMAX: TIntegerField;
    SQLLivroLILMDDTABERT: TDateTimeField;
    SQLLivroLILMDDTFECHA: TDateTimeField;
    SQLLivroPENDENTE: TStringField;
    SQLLivroREGISTRO: TDateTimeField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RDprint: TRDprint;
    LivroLMC1: TMenuItem;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    UpdateLivro: TUpdateSQL;
    RxQuery: TRxQuery;
    Label32: TLabel;
    DBMemo1: TDBMemo;
    SQLTemplateLMCAN2TQSBR1: TBCDField;
    SQLTemplateLMCAN2TQSBR2: TBCDField;
    SQLTemplateLMCAN2TQSBR3: TBCDField;
    SQLTemplateLMCAN2TQSBR4: TBCDField;
    SQLTemplateLMCAN2TQSBR5: TBCDField;
    SQLTemplateLMCAN2TQSBR6: TBCDField;
    EvDBNumEdit16: TEvDBNumEdit;
    EvDBNumEdit17: TEvDBNumEdit;
    EvDBNumEdit18: TEvDBNumEdit;
    EvDBNumEdit19: TEvDBNumEdit;
    EvDBNumEdit20: TEvDBNumEdit;
    EvDBNumEdit21: TEvDBNumEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    LabelInform: TLabel;
    PanelRecebido: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    DBEditNRONF: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit6: TDBEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    PanelVendido: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    pnllivropagina: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    edtPagina: TEdit;
    edtLivro: TEdit;
    BTNLocalizar: TSpeedButton;
    N1: TMenuItem;
    Movimentao1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLEntradaNewRecord(DataSet: TDataSet);
    procedure BTEntradaNovoClick(Sender: TObject);
    procedure BTEntradaGravarClick(Sender: TObject);
    procedure BtEntradaExcluirClick(Sender: TObject);
    procedure EvDBNumEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLSaidaCalcFields(DataSet: TDataSet);
    procedure BTSaidaExcluirClick(Sender: TObject);
    procedure BTSaidaNovoClick(Sender: TObject);
    procedure BTSaidaGravarClick(Sender: TObject);
    procedure SQLSaidaNewRecord(DataSet: TDataSet);
    procedure EvDBNumEdit4Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure BTCalcularFechamentoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ComboEmpresaExit(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure LivroLMC1Click(Sender: TObject);
    procedure ComboProdutoExit(Sender: TObject);
    procedure EvDBNumEdit2Enter(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure TabSheetDadosPrincipaisShow(Sender: TObject);
    procedure VerificaTanques;
    procedure EvDBNumEdit10Enter(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure TabVolVendidoEnter(Sender: TObject);
    procedure EvDBNumEdit10Exit(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure Movimentao1Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);

  private
     vQtdeTotalAbertura, vQtdeTotalRecebido, vQtdeTotalRecebidoDisponivel : Double;
     InserindoLMC : Boolean;
     nPerdasSobras: Extended;
     procedure TrocaBtn(Status:Boolean);
     Procedure FieldsReadOnly(Status:Boolean);
    { Private declarations }
  public
    { Public declarations }
    Function TwoStr(xTex:String;nDig:Integer):String;
  end;

var
  FormCadastroLMC: TFormCadastroLMC;

implementation

uses UnitLibrary, Datamodulo;

{$R *.dfm}

procedure TFormCadastroLMC.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'LMCCAB';
  SQLProduto.Open;
  SQLEmpresa.Open;
end;

procedure TFormCadastroLMC.Button3Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      SQLEntrada.Close;
      SQLEntrada.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                 ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                 ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLEntrada.Open;
      SQLTotalRecebido.Close;
      SQLTotalRecebido.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                       ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                       ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLTotalRecebido.Open;
      PagePrincipal.ActivePage := TabVolRecebido ;
      EditEstoqueRecebidoAbertura.Text   := FormatCurr('#########0.00',vQtdeTotalAbertura);
      EditTotalRecebido.Text             := FormatCurr('#########0.00',SQLTotalRecebidoSUM.Value);
      EditTotalRecebidoDisponivel.Text   := FormatCurr('#########0.00',SQLTotalRecebidoSUM.Value + vQtdeTotalAbertura);
      vQtdeTotalRecebidoDisponivel       := SQLTotalRecebidoSUM.Value + vQtdeTotalAbertura;
      EditEstoqueRecebidoAbertura.Update;
      EditTotalRecebido.Update;
      EditTotalRecebidoDisponivel.Update;
      BTEntradaNovo.SetFocus;
    end;
  If (Sender as TRxSpeedButton).Name='BtVolumeVendido' Then
    begin
      SQLSaida.Close;
      SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                               ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                               ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLSaida.Open;
      PagePrincipal.ActivePage := TabVolVendido ;
      BTSaidaNovo.SetFocus;
    end;
  If (Sender as TRxSpeedButton).Name='BtFechamento' Then
    begin
     vQtdeTotalAbertura := SQLTemplateLMCAN2TQI1.Value + SQLTemplateLMCAN2TQI2.Value + SQLTemplateLMCAN2TQI3.Value +
                           SQLTemplateLMCAN2TQI4.Value + SQLTemplateLMCAN2TQI5.Value + SQLTemplateLMCAN2TQI6.Value ;

      SQLEntrada.Close;
      SQLEntrada.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                 ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                 ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLEntrada.Open;
      SQLTotalRecebido.Close;
      SQLTotalRecebido.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                       ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                       ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLTotalRecebido.Open;
      vQtdeTotalRecebidoDisponivel       := SQLTotalRecebidoSUM.Value + vQtdeTotalAbertura;
      SQLSaida.Close;
      SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                               ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                               ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLSaida.Open;

      PagePrincipal.ActivePage := TabFechamento ;
    end;

end;

procedure TFormCadastroLMC.SQLEntradaNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLEntradaEMPRICOD.Value      := SQLTemplateEMPRICOD.Value;
  SQLEntradaLILMICOD.Value      := SQLTemplateLILMICOD.Value;
  SQLEntradaLMENIPAGATUAL.Value := SQLTemplateLMCAIPAGATUAL.Value;
  SQLEntradaPRODICOD.Value      := SQLTemplatePRODICOD.Value;
  SQLEntradaLMENDDTMOV.Value    := SQLTemplateLMCADDTMOV.Value;
end;

procedure TFormCadastroLMC.BTEntradaNovoClick(Sender: TObject);
begin
  inherited;
  if (SQLTemplateEMPRICOD.Value > 0) and (SQLTemplateLILMICOD.Value > 0) and (SQLTemplateLMCADDTMOV.asstring <> '') and (SQLTemplateLMCAIPAGATUAL.Value > 0)
     and (SQLTemplatePRODICOD.Value > 0) then
    begin
      try
        SQLTemplate.Post;
      except
        Application.ProcessMessages;
      end;
      SQLEntrada.Append;
      TrocaBtn(true);
      DBEditNRONF.SetFocus;
    end;
end;

procedure TFormCadastroLMC.FieldsReadOnly(Status:Boolean);
begin
  InserindoLMC          := Status;
  DBEdit1.readOnly      := Status;
  DBEdit2.readOnly      := Status;
  DBEdit3.readOnly      := Status;
  DBEdit4.readOnly      := Status;
  DBData.readOnly       := Status;
  ComboProduto.ReadOnly := Status;
end;

procedure TFormCadastroLMC.TrocaBtn(Status:Boolean);
begin
  if PagePrincipal.ActivePageIndex = 2 then
  begin
    PanelRecebido.Enabled    := Status;
    BTEntradaNovo.Enabled    := not Status;
    BTEntradaGravar.Enabled  := Status;
    if BtEntradaExcluir.Caption = 'Excluir' then
      BtEntradaExcluir.Caption := 'Cancelar'
    else
      BtEntradaExcluir.Caption := 'Excluir'
  end;
  if PagePrincipal.ActivePageIndex = 3 then
  begin
    PanelVendido.Enabled   := Status;
    BTSaidaNovo.Enabled    := not Status;
    BTSaidaGravar.Enabled  := Status;
    if BTSaidaExcluir.Caption = 'Excluir' then
      BTSaidaExcluir.Caption := 'Cancelar'
    else
      BTSaidaExcluir.Caption := 'Excluir'
  end;
end;

procedure TFormCadastroLMC.BTEntradaGravarClick(Sender: TObject);
begin
  inherited;

  if SQLEntradaLMENDDTNF.AsDateTime > Date then
    begin
      ShowMessage('Data da Nota Fiscal Maior Que Data Atual. Verifique.');
      DBDateEdit1.SetFocus;
      Exit;
    end;

  if SQLEntradaLMENA15NRONF.Value = '' then
    begin
      ShowMessage('O campo Nro NF deve ser preechido! Verifique!');
      exit;
    end;
  if SQLEntradaLMENDDTNF.AsString = '' then
    begin
      ShowMessage('O campo Data NF deve ser preechido! Verifique!');
      exit;
    end;
  if SQLEntradaTANQICOD.Value < 1 then
    begin
      ShowMessage('O campo Nro Tanque deve ser preechido! Verifique!');
      exit;
    end;

  if SQLEntradaLMENN2QTE.Value < 0.1 then
    begin
      ShowMessage('O campo Volume deve ser preechido! Verifique!');
      exit;
    end;

  // confere se o tanque tem capacidade para o volume recebido
  RxQuery.SQL.Text := 'Select * from Tanque where TANQICOD = (%Mfiltro)';
  RxQuery.MacroByName('MFiltro').Value := SQLEntradaTANQICOD.AsString;
  RxQuery.Prepare;
  RxQuery.Open;

  if RxQuery.FieldByName('TANQICOD').isnull then
    Begin
      ShowMessage('Tanque Inexistente');
      DBEdit6.SetFocus;
      Exit;
    end;

  if RxQuery.FieldByName('PRODICOD').Value <> SQLTemplatePRODICOD.value then
    begin
      ShowMessage('Tanque Não Contêm Este Combustível');
      DBEdit6.SetFocus;
      Exit;
    end;


  if  (RxQuery.FieldByName('TANQN2SALDO').Value + SQLEntradaLMENN2QTE.value) > RxQuery.FieldByName('TANQN2CAPACID').Value then
    begin
      if MessageDlg('Atenção... '+#13+#10+'Quantidade Informada + Saldo Atual Ultrapassa a Capacidade '+#13+#10+'do Tanque.  Continua ?', mtWarning, [mbYes,mbNo], 0) = mrNo then
        begin
          EvDBNumEdit1.SetFocus;
          Exit;
        end;
    end;

  if (SQLEntrada.State in dsEditModes) then
    begin
      try
        SQLEntrada.Post;
        Trocabtn(False);
        SQLEntrada.Close;
        SQLEntrada.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                   ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                   ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
        SQLEntrada.Open;
      except
        Application.ProcessMessages;
      end;

      SQLTotalRecebido.Close;
      SQLTotalRecebido.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                       ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                       ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLTotalRecebido.Open;
      EditEstoqueRecebidoAbertura.Text   := FormatCurr('#########0.00',vQtdeTotalAbertura);
      EditTotalRecebido.Text             := FormatCurr('#########0.00',SQLTotalRecebidoSUM.Value);
      EditTotalRecebidoDisponivel.Text   := FormatCurr('#########0.00',SQLTotalRecebidoSUM.Value + vQtdeTotalAbertura);
      EditEstoqueRecebidoAbertura.Update;
      EditTotalRecebido.Update;
      EditTotalRecebidoDisponivel.Update;

      BTEntradaNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroLMC.BtEntradaExcluirClick(Sender: TObject);
begin
  if BtEntradaExcluir.Caption = 'Cancelar' then
  begin
    SQLEntrada.Cancel;
    TrocaBtn(False);
    Exit;
  End;
  if SQLEntradaEMPRICOD.Value > 0 then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir a NF lançada atualmente?') then
        begin
          SQLEntrada.Delete;
          BTEntradaNovo.SetFocus;
        end;
    end;
end;

procedure TFormCadastroLMC.EvDBNumEdit1Exit(Sender: TObject);
begin
  inherited;
  BTEntradaGravar.SetFocus;
end;

procedure TFormCadastroLMC.Button1Click(Sender: TObject);
begin
  inherited;
  vQtdeTotalAbertura := SQLTemplateLMCAN2TQI1.Value + SQLTemplateLMCAN2TQI2.Value + SQLTemplateLMCAN2TQI3.Value +
                        SQLTemplateLMCAN2TQI4.Value + SQLTemplateLMCAN2TQI5.Value + SQLTemplateLMCAN2TQI6.Value ;

  EditEstoqueAbertura.Text := FormatCurr('#########0.00', vQtdeTotalAbertura);
  EditEstoqueAbertura.Update;
end;

procedure TFormCadastroLMC.SQLSaidaCalcFields(DataSet: TDataSet);
begin
  inherited;
  try
    if (SQLSaidaLMSAN2FECHAME.Value < SQLSaidaLMSAN2ABERTUR.Value) and (SQLSaidaLMSAN2ABERTUR.Value > 900000) then
      SQLSaidaQtdeVendaBico.Value := ((SQLSaidaLMSAN2FECHAME.Value + 1000000) - SQLSaidaLMSAN2ABERTUR.Value)- SQLSaidaLMSAN2AFERIR.Value
    Else
      SQLSaidaQtdeVendaBico.Value := (SQLSaidaLMSAN2FECHAME.Value - SQLSaidaLMSAN2ABERTUR.Value)- SQLSaidaLMSAN2AFERIR.Value ;
  except
    SQLSaidaQtdeVendaBico.Value := 0;
    Application.ProcessMessages;
  end;  
end;

procedure TFormCadastroLMC.BTSaidaExcluirClick(Sender: TObject);
begin
  if BTSaidaExcluir.Caption = 'Cancelar' then
  begin
    SQLSaida.Cancel;
    TrocaBtn(False);
    Exit;
  End;

  if SQLSaidaEMPRICOD.Value > 0 then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir o lançamento atual?') then
        begin
          SQLSaida.Delete;
          BTSaidaNovo.SetFocus;
        end;
    end;
end;

procedure TFormCadastroLMC.BTSaidaNovoClick(Sender: TObject);
begin
  inherited;
  if (SQLTemplateEMPRICOD.Value > 0) and (SQLTemplateLILMICOD.Value > 0) and (SQLTemplateLMCADDTMOV.asstring <> '') and (SQLTemplateLMCAIPAGATUAL.Value > 0)
     and (SQLTemplatePRODICOD.Value > 0) then
    begin
      try
        SQLTemplate.Post;
      except
        Application.ProcessMessages;
      end;
      TrocaBtn(true);
      SQLSaida.Append;
      DBEdit8.SetFocus;

     end;
end;

procedure TFormCadastroLMC.BTSaidaGravarClick(Sender: TObject);
begin
  inherited;
  if SQLSaidaTANQICOD.Value < 1 then
    begin
      ShowMessage('O campo Nro Tanque deve ser preechido! Verifique!');
      exit;
    end;

  if SQLSaidaBOMBICOD.Value < 1 then
    begin
      ShowMessage('O campo Bomba deve ser preechido! Verifique!');
      exit;
    end;

  if SQLSaidaLMSAN2FECHAME.Value < 1 then
    begin
      ShowMessage('O campo Fechamento deve ser preechido! Verifique!');
      exit;
    end;

  if SQLSaidaLMSAN2ABERTUR.Value < 1 then
    begin
      ShowMessage('O campo Abertura deve ser preechido! Verifique!');
      EvDBNumEdit3.ReadOnly := False;
      EvDBNumEdit3.SetFocus;
      exit;
    end;

  RxQuery.Close;
  RxQuery.SQL.Text := 'Select * from TANQUE where (%MFiltro)';
  RxQuery.MacroByName('MFiltro').Value := ' TANQICOD = ' + SQLSaidaTANQICOD.asstring;
  RxQuery.Prepare;
  RxQuery.Open;
  If RxQuery.FieldByName('Prodicod').value <> SQLTemplatePRODICOD.value then
    begin
      ShowMessage('O Tanque Informado Contêm Outro Tipo de Combustível.');
      DBEdit8.SetFocus;
      Exit;
    end;
  RxQuery.Close;

//  ver se a venda é maior que o saldo.

  RxQuery.Close;
  RxQuery.SQL.Text := 'Select * from Bomba where (%MFiltro)';
  RxQuery.MacroByName('MFiltro').Value := ' TANQICOD = ' + SQLSaidaTANQICOD.asstring +
  'and BOMBICOD = '+SQLSaidaBOMBICOD.AsString;
  RxQuery.Prepare;
  RxQuery.Open;
  If RxQuery.FieldByName('BOMBICOD').value <> SQLSaidaBOMBICOD.value then
    begin
      ShowMessage('Bomba Não Cadastrada no Tanque Informado.');
      DBEdit7.SetFocus;
      Exit;
    end;
  RxQuery.Close;


  if (SQLSaida.State in dsEditModes) then
    begin
      try
        SQLSaida.Post;
        SQLSaida.Close;
        SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                 ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                 ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
        SQLSaida.Open;
        TrocaBtn(False);
      except
        Application.ProcessMessages;
      end;

      BTSaidaNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroLMC.SQLSaidaNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLSaidaEMPRICOD.Value      := SQLTemplateEMPRICOD.Value;
  SQLSaidaLILMICOD.Value      := SQLTemplateLILMICOD.Value;
  SQLSaidaLMSAIPAGATUAL.Value := SQLTemplateLMCAIPAGATUAL.Value;
  SQLSaidaPRODICOD.Value      := SQLTemplatePRODICOD.Value;
  SQLSaidaLMSADDTMOV.Value    := SQLTemplateLMCADDTMOV.Value;
  SQLSaidaLMSAN2ABERTUR.Value := 0;
  SQLSaidaLMSAN2AFERIR.Value  := 0;
  SQLSaidaLMSAN2FECHAME.Value := 0;
end;

procedure TFormCadastroLMC.EvDBNumEdit4Exit(Sender: TObject);
begin
  inherited;
  BTSaidaGravar.SetFocus;
end;

procedure TFormCadastroLMC.DBEdit13Enter(Sender: TObject);
begin
  inherited;
  try
    SQLTemplate.Edit;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroLMC.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  try
    SQLTemplate.Post;
  except
    Application.ProcessMessages;
  end;
end;

Procedure TFormCadastroLMC.BTCalcularFechamentoClick(Sender: TObject);
var vTq : Double;
    UltimoDiaMes, UltimoMes, UltimoAno : String;
    Ix: Integer;
begin
  inherited;
  try
    FieldsReadOnly(True);
    if SQLLivro.State = dsInactive then
      SQLLivro.Open;

    SQLTemplate.Edit;
    // Achar Qtde total venda nos bicos
    SQLTemplateLMCAN2QTDVENDIA.Value := 0;
    if not SQLSaida.Active then SQLSaida.Open;
    SQLSaida.First;
    while not SQLSaida.Eof do
      begin
        SQLTemplateLMCAN2QTDVENDIA.Value := SQLSaidaQtdeVendaBico.Value + SQLTemplateLMCAN2QTDVENDIA.Value;
        SQLSaida.Next;
      end;
    SQLSaida.First;

    // Estoque Escritural
    SQLTemplateLMCAN2ESTESCRIT.Value := vQtdeTotalRecebidoDisponivel - SQLTemplateLMCAN2QTDVENDIA.Value;
    // Estoque Fechamento
    SQLTemplateLMCAN2ESTFECHAM.Value := vQtdeTotalRecebidoDisponivel -  SQLTemplateLMCAN2QTDVENDIA.Value + SQLTemplateLMCAN2VLRPERDSOB.Value;
    // Venda Valor diario
    SQLTemplateLMCAN2VLRVENDIA.Value := SQLTemplateLMCAN2QTDVENDIA.Value * SQLTemplateLMCAN2PRECODIA.Value;
    // Venda acumulada do mes
//    UltimoDiaMes := IntToStr(DaysInAMonth(YearOf(SQLTemplateLMCADDTMOV.Value),MonthOf(SQLTemplateLMCADDTMOV.Value)));
    UltimoMes    := FormatFloat('00',MonthOf(SQLTemplateLMCADDTMOV.AsFloat));
    UltimoAno    := FormatFloat('####',YearOf(SQLTemplateLMCADDTMOV.Value));
//    UltimoDiaMes := UltimoMes + '/'+ UltimoDiaMes + '/' + UltimoAno;
    UltimoDiaMes := FormatDateTime('mm/dd/yyyy', SQLTemplateLMCADDTMOV.Value );

    SQLLMCCABAcumaladoMes.Close;
    SQLLMCCABAcumaladoMes.MacroByName('MFiltro').Value := ' EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                          ' PRODICOD = ' + SQLTemplatePRODICOD.AsString  + ' and ' +
                                                          ' LMCADDTMOV >= "'+UltimoMes + '/01/' + UltimoAno + '" and '+
                                                          ' LMCADDTMOV <= "'+UltimoDiaMes+'"';
    SQLLMCCABAcumaladoMes.Open;
    SQLTemplateLMCAN2VLRACUMES.Value := SQLLMCCABAcumaladoMesSUM.Value;

    // Calcula o estoque final de cada tanque
    RxQuery.Close;
    RxQuery.SQL.Text := 'Select * from tanque where '+
                        'EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
                        'PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' order by TANQICOD';
    RxQuery.Prepare;
    RxQuery.Open;
    ix := 1;
    While not RxQuery.Eof do
    begin
       // Calcular Qtde final do tanque
      SQLTotalRecebidoPorTanque.close;
      SQLTotalRecebidoPorTanque.macrobyname('Mfiltro').value := ' empricod = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                                ' lilmicod = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                                ' lmenipagatual = ' + SQLTemplateLMCAIPAGATUAL.AsString  + ' and ' +
                                                                ' TANQICOD = '+ RxQuery.Fieldbyname('TANQICOD').AsString;
      SQLTotalRecebidoPorTanque.open;
      SQLSaida.Close;
      SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                               ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                               ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString  + ' AND' +
                                               ' TANQICOD = '+ RxQuery.Fieldbyname('TANQICOD').AsString; ;
      SQLSaida.Open;

      vTq := 0;
      while not SQLSaida.eof do
        begin
          vTq := SQLSaidaQtdeVendaBico.Value + vtq ;
          SQLSaida.Next;
        end;
      SQLSaida.Close;

     Case ix of
        1: SQLTemplateLMCAN2TQF1.Value := SQLTemplateLMCAN2TQI1.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR1.value - vTq ;
        2: SQLTemplateLMCAN2TQF2.Value := SQLTemplateLMCAN2TQI2.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR2.value - vtq ;
        3: SQLTemplateLMCAN2TQF3.Value := SQLTemplateLMCAN2TQI3.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR3.value - vtq ;
        4: SQLTemplateLMCAN2TQF4.Value := SQLTemplateLMCAN2TQI4.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR4.value - vTq ;
        5: SQLTemplateLMCAN2TQF5.Value := SQLTemplateLMCAN2TQI5.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR5.value - vTq ;
        6: SQLTemplateLMCAN2TQF6.Value := SQLTemplateLMCAN2TQI6.Value + SQLTotalRecebidoPorTanqueSUM.Value + SQLTemplateLMCAN2TQSBR6.value - vTq ;
      end;
      RxQuery.Next; Inc(ix);
    end;

//    nPerdasSobras := SQLTemplateLMCAN2TQF1.Value + SQLTemplateLMCAN2TQF2.Value + SQLTemplateLMCAN2TQF3.Value + SQLTemplateLMCAN2TQF4.Value + SQLTemplateLMCAN2TQF5.Value + SQLTemplateLMCAN2TQF6.Value;

    SQLTemplate.Post;

    SQLSaida.Close;
    SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                             ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                             ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
    SQLSaida.Open;

    if InserindoLMC then
      begin
        if SQLLivroLILMIPAGATUAL.Value+1 = SQLLivroLILMIPAGMAX.Value then
        begin
          MessageDlg('Atenção! Número máximo de páginas permito para este livro.'+#13+#10+''+#13+#10+'Encerre ente livro e inicie um novo através do Menu '+#13+#10+'''Estoque - Posto de Combustíveis - Livro'' '+#13+#10+'Selecione o livro aberto e clique em '+#13+#10+'''Imprimir - Termo de Encerramento'''+#13+#10+'Após este procedimento, inicie um novo livro.', mtWarning, [mbOK], 0);
        end else
        begin
          SQLLivro.Edit;
          SQLLivroLILMIPAGATUAL.Value := SQLLivroLILMIPAGATUAL.Value+1;
          SQLLivro.Post;
        end;
      end;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroLMC.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  // libera os campos para digitação
  FieldsReadOnly(False);

  InserindoLMC := True;
  SQLTemplateLMCAN2QTDVENDIA.Value  := 0;
  SQLTemplateLMCAN2PRECODIA.Value   := 0;
  SQLTemplateLMCAN2VLRVENDIA.Value  := 0;
  SQLTemplateLMCAN2ESTESCRIT.Value  := 0;
  SQLTemplateLMCAN2ESTFECHAM.Value  := 0;
  SQLTemplateLMCAN2VLRACUMES.Value  := 0;
  SQLTemplateLMCAN2VLRPERDSOB.Value := 0;
  SQLTemplateLMCAN2TQi1.Value       := 0;
  SQLTemplateLMCAN2TQi2.Value       := 0;
  SQLTemplateLMCAN2TQi3.Value       := 0;
  SQLTemplateLMCAN2TQi4.Value       := 0;
  SQLTemplateLMCAN2TQi5.Value       := 0;
  SQLTemplateLMCAN2TQi6.Value       := 0;
  SQLTemplateLMCAN2TQF1.Value       := 0;
  SQLTemplateLMCAN2TQF2.Value       := 0;
  SQLTemplateLMCAN2TQF3.Value       := 0;
  SQLTemplateLMCAN2TQF4.Value       := 0;
  SQLTemplateLMCAN2TQF5.Value       := 0;
  SQLTemplateLMCAN2TQF6.Value       := 0;
  SQLTemplateLMCAN2TQSBR1.Value     := 0;
  SQLTemplateLMCAN2TQSBR2.Value     := 0;
  SQLTemplateLMCAN2TQSBR3.Value     := 0;
  SQLTemplateLMCAN2TQSBR4.Value     := 0;
  SQLTemplateLMCAN2TQSBR5.Value     := 0;
  SQLTemplateLMCAN2TQSBR6.Value     := 0;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
end;

procedure TFormCadastroLMC.ComboEmpresaExit(Sender: TObject);
begin
  inherited;
  with SQLLivro do
  begin
    Close;
    MacroByName('MFiltro').Value := 'EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
                                    'LILMDDTFECHA is null';
    Open;

    if SQLLivroLILMIPAGATUAL.Value+1 >= SQLLivroLILMIPAGMAX.Value then
    begin
      MessageDlg('Atenção! Número máximo de páginas permito para este livro.'+#13+#10+''+#13+#10+'Encerre ente livro através do Menu '+#13+#10+'''Estoque - Posto de Combustíveis - Livro'' '+#13+#10+'Selecione o livro aberto e clique em '+#13+#10+'''Imprimir - Termo de Encerramento'''+#13+#10+'Após este procedimento, inicie um novo livro.', mtWarning, [mbOK], 0);
      SQLTemplate.Cancel;
      Exit;
    end;
   
    if SQLTemplateLILMICOD.asstring = '' then
      SQLTemplateLILMICOD.Value      := SQLLivroLILMICOD.Value;
    if SQLTemplateLMCAIPAGATUAL.asstring = '' then
      SQLTemplateLMCAIPAGATUAL.Value := SQLLivroLILMIPAGATUAL.Value+1;
    if SQLTemplateLMCADDTMOV.AsString = '' then
      SQLTemplateLMCADDTMOV.value    := Date;
  end;
end;

procedure TFormCadastroLMC.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
    if InserindoLMC then
    begin
      SQLLivro.Edit;
      SQLLivroLILMIPAGATUAL.value := SQLLivroLILMIPAGATUAL.Value+1;
      SqlLivro.Post;
      FieldsReadOnly(True);
    end;
end;

procedure TFormCadastroLMC.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InserindoLMC := False;
end;

Function TFormCadastroLmc.TwoStr(xTex:String;nDig:Integer):String;
var NewText:String;
begin
  NewText := xTex;
  While Length(NewText) < nDig do
    Insert('0',NewText,0);
  if NewText = '00' then
    Result := '  '
  else
    Result:= NewText;
end;

procedure TFormCadastroLMC.LivroLMC1Click(Sender: TObject);
Var Linha, ContEntrada : Integer;
    vTotAbertura, vTotalEntrada : Double;
begin
  inherited;
  Button2.Click;
  Button3.Click;
  BtVolumeVendido.Click;
  BtFechamento.Click;
  PagePrincipal.ActivePageIndex := 4;
  PagePrincipal.Refresh;
  SQLTemplate.First;
  RDprint.Abrir;
//  RDPrint.Impressora:= Grafico;
  while not SQLTemplate.Eof do
    begin
      Linha := 1;
      vTotAbertura  := SQLTemplateLMCAN2TQI1.value + SQLTemplateLMCAN2TQI2.value + SQLTemplateLMCAN2TQI3.value +
                       SQLTemplateLMCAN2TQI4.value + SQLTemplateLMCAN2TQI5.value + SQLTemplateLMCAN2TQI6.value;
      RDprint.ImpF(Linha,  1,'LIVRO DE MOVIMENTACAO DE COMBUSTIVEIS',[Expandido, Italico]); inc(linha,2);
      RDprint.ImpF(Linha,  1,'Razao..: '+SQLEmpresaEMPRA60RAZAOSOC.AsString,[normal]); inc(linha);
      RDprint.ImpF(Linha,  1,'CNPJ...: '+SQLEmpresaEMPRA14CGC.AsString,[normal]);
      RDprint.ImpF(Linha, 32,'IE.: ' +SQLEmpresaEMPRA20IE.AsString,[normal]);
      RDprint.ImpF(Linha, 60,'Pag.: '+SQLTemplateLMCAIPAGATUAL.AsString,[normal]); inc(Linha);
      RDprint.ImpF(Linha, 1,'Produto: '+SQLProdutoPRODA60DESCR.AsString,[normal]);
      RDprint.ImpF(Linha, 60,'Data: '+FormatDateTime('dd/mm/yyyy',SQLTemplateLMCADDTMOV.value),[normal]); inc(Linha);
      RDprint.Imp(Linha,   1,'--------------------------------------------------------------------------------'); inc(Linha);
      RDprint.Imp(Linha,   1,'| Estoque de Abertura (Medicao fisica no inicio do dia)                        |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|  TQ  '+ TwoStr(Edit1.Text,2) +'  |  TQ  '+ TwoStr(Edit2.Text,2) +'  |  TQ  '+ TwoStr(Edit3.Text,2) +
      '  |  TQ  '+ TwoStr(Edit4.Text,2) +'  |  TQ  '+ TwoStr(Edit5.Text,2) +'  |  TQ  '+ TwoStr(Edit6.Text,2) +'  |  Abertura  |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|----------+----------+----------+----------+----------+----------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|          |          |          |          |          |          |            |');
      RDprint.ImpVal(Linha,   2,'#####0.00',SQLTemplateLMCAN2TQI1.value,[]);
      RDprint.ImpVal(Linha,  13,'#####0.00',SQLTemplateLMCAN2TQI2.value,[]);
      RDprint.ImpVal(Linha,  24,'#####0.00',SQLTemplateLMCAN2TQI3.value,[]);
      RDprint.ImpVal(Linha,  35,'#####0.00',SQLTemplateLMCAN2TQI4.value,[]);
      RDprint.ImpVal(Linha,  46,'#####0.00',SQLTemplateLMCAN2TQI5.value,[]);
      RDprint.ImpVal(Linha,  57,'#####0.00',SQLTemplateLMCAN2TQI6.value,[]);
      RDprint.ImpVal(Linha,  69,'######0.00',vTotAbertura,[]); inc(linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'| Volume Recebido no dia (Em litros)             | No.TQ Descarga | Volume Rec.|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------+----------------+------------|'); inc(Linha);

      // Loop para lancar as notas de compras no Livro
      SQLEntrada.Close;
      SQLEntrada.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                 ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                 ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLEntrada.Open;
      ContEntrada := 1;
      vTotalEntrada := 0;
      while not SQLEntrada.eof do
        begin
          RDprint.Imp(Linha,    1,'| Fiscal Nr.                     de              |                |            |');
          RDprint.Imp(Linha,   15,SQLEntradaLMENA15NRONF.AsString);
          RDprint.Imp(Linha,   38,FormatDateTime('dd/mm/yyyy',SQLEntradaLMENDDTNF.Value));
          RDprint.Imp(Linha,   57,SQLEntradaTANQICOD.AsString);
          RDprint.ImpVal(Linha,69,'######0.00',SQLEntradaLMENN2QTE.Value,[]); inc(linha);
          inc(ContEntrada);
          vTotalEntrada := vTotalEntrada + SQLEntradaLMENN2QTE.Value;
          SQLEntrada.Next;
        end;
      while ContEntrada <= 5 do
        begin
          RDprint.Imp(Linha,   1,'| Fiscal Nr.                     de              |                |            |'); inc(Linha);
          inc(ContEntrada);
        end;
      RDprint.Imp(Linha,   1,'|------------------------------------------------+----------------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                                | Total Recebido |            |');
      RDprint.ImpVal(Linha,69,'######0.00',vTotalEntrada,[]); inc(linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------+----------------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'| Volume Vendido no dia (em litros)              | Volume Dispon. |            |');
      RDprint.ImpVal(Linha,   69,'######0.00',vTotalEntrada+vTotAbertura,[]); inc(linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------+----------------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|  Tq  |  Bico  |  + Fechamento  |   - Abertura  |   - Afericoes  | Venda Bico |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|------+--------+----------------+---------------+----------------+------------|'); inc(Linha);

      // Loop pra lancar as vendas do dia no LMC
      SQLSaida.Close;
      SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                               ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                               ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
      SQLSaida.Open;
      while not SQLSaida.eof do
        begin
          RDprint.Imp(Linha,   1,'|      |        |                |               |                |            |');
          RDprint.Imp(Linha,   5,SQLSaidaTANQICOD.AsString);
          RDprint.Imp(Linha,  13,SQLSaidaBOMBICOD.AsString);
          RDprint.Impval(Linha,  20,'#########0.00',SQLSaidaLMSAN2FECHAME.Value,[]);
          RDprint.Impval(Linha,  36,'#########0.00',SQLSaidaLMSAN2ABERTUR.Value,[]);
          RDprint.Impval(Linha,  53,'#########0.00',SQLSaidaLMSAN2AFERIR.Value,[]);
          RDprint.Impval(Linha,  70,'#####0.00', SQLSaidaLMSAN2FECHAME.Value-
                                                 SQLSaidaLMSAN2ABERTUR.Value-
                                                 SQLSaidaLMSAN2AFERIR.Value,[]); inc(linha);
          inc(ContEntrada);
          SQLSaida.Next;
        end;
      while ContEntrada <= 17 do
        begin
          RDprint.Imp(Linha,   1,'|      |        |                |               |                |            |'); inc(linha);
          inc(ContEntrada);
        end;
      RDprint.Imp(Linha,   1,'|------------------------------------------------+----------------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'| Valor Venda * Preço Bomba:                     | Vendas no dia  |            |');
      RDprint.Impval(Linha,  36,'#########0.00',SQLTemplateLMCAN2VLRVENDIA.Value,[]);
      RDprint.Impval(Linha,  69,'######0.00',SQLTemplateLMCAN2QTDVENDIA.Value,[]); inc(Linha);
      RDprint.Imp(Linha,   1,'| Valor Acumulado no mes...:                     |----------------|------------|');
      RDprint.Impval(Linha,  36,'#########0.00',SQLTemplateLMCAN2VLRACUMES.Value,[]); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------| Est.Escritural |            |');
      RDprint.Impval(Linha,  69,'######0.00',SQLTemplateLMCAN2ESTESCRIT.Value,[]); inc(Linha);
      RDprint.Imp(Linha,   1,'| Para uso do revendedor                         |----------------|------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                                | Est.Fechamento |            |');
      RDprint.Impval(Linha,  69,'######0.00',SQLTemplateLMCAN2ESTFECHAM.Value,[]); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                                |----------------|------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                                |*-Perdas/+Sobras|            |');
      RDprint.Impval(Linha,  69,'######0.00',SQLTemplateLMCAN2VLRPERDSOB.Value,[]); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'| Observacoes: ');
      RDprint.Imp(linha,  16, Copy(SQLTemplateLMCAA100OBS.asstring,1,31));
      RDprint.Imp(Linha,  48,'| Destinado a Fiscalizacao      |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|');
      RDprint.Imp(Linha,   3,Copy(SQLTemplateLMCAA100OBS.asstring,32,44));
      RDprint.Imp(Linha,  48,'|                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|');
      RDprint.Imp(Linha,   3,Copy(SQLTemplateLMCAA100OBS.asstring,76,45));
      RDprint.Imp(Linha,  48,'|                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |-------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              | Outros Orgaos Fiscais         |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                                              |                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|                         Conciliacao de Estoque                               |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|------------------------------------------------------------------------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|  TQ  '+ TwoStr(Edit1.Text,2) +'  |  TQ  '+ TwoStr(Edit2.Text,2) +'  |  TQ  '+ TwoStr(Edit3.Text,2) +
      '  |  TQ  '+ TwoStr(Edit4.Text,2) +'  |  TQ  '+ TwoStr(Edit5.Text,2) +'  |  TQ  '+ TwoStr(Edit6.Text,2) +'  | Fechamento |'); inc(Linha);
      RDprint.Imp(Linha,   1,'|----------+----------+----------+----------+----------+----------+------------|'); inc(Linha);
      RDprint.Imp(Linha,   1,'|          |          |          |          |          |          |            |');
      RDprint.ImpVal(Linha,   2,'#####0.00',SQLTemplateLMCAN2TQF1.value,[]);
      RDprint.ImpVal(Linha,  13,'#####0.00',SQLTemplateLMCAN2TQF2.value,[]);
      RDprint.ImpVal(Linha,  24,'#####0.00',SQLTemplateLMCAN2TQF3.value,[]);
      RDprint.ImpVal(Linha,  35,'#####0.00',SQLTemplateLMCAN2TQF4.value,[]);
      RDprint.ImpVal(Linha,  46,'#####0.00',SQLTemplateLMCAN2TQF5.value,[]);
      RDprint.ImpVal(Linha,  57,'#####0.00',SQLTemplateLMCAN2TQF6.value,[]);
      RDprint.ImpVal(Linha,  69,'######0.00',SQLTemplateLMCAN2ESTFECHAM.Value,[]); inc(linha);
      RDprint.Imp(Linha,   1,'--------------------------------------------------------------------------------'); inc(Linha);
      RDprint.Imp(Linha,   1,'(*) Atencao: Se negativo, pode estar havendo vazamento de prod. p/ meio ambiente'); inc(Linha);
      SQLTemplate.Next;
      RDPrint.Novapagina;
    end;
    RDprint.Fechar;
end;

procedure TFormCadastroLMC.ComboProdutoExit(Sender: TObject);
begin
  SQLTemplateLMCAN2PRECODIA.value := SQLProdutoPRODN3VLRVENDA.value;
  VerificaTanques;
end;

procedure TFormCadastroLMC.VerificaTanques;
var ix: Integer;
begin
  inherited;
  // se for nulo é porque está incluindo um novo registro
  if SQLTemplateEMPRICOD.asstring = '' then
    Exit;

  Try
    RxQuery.SQL.Text := 'Select * from tanque where '+
                        'EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
                        'PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' order by TANQICOD';
    RxQuery.Prepare;
    RxQuery.Open;
    ix := 1;
    While not RxQuery.Eof do
    begin
      Case ix of
      1: begin
            Edit1.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit7.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI1.Enabled := True;
            EvDBNumEdit10.Enabled := True;
         end;
      2: begin
            Edit2.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit8.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI2.Enabled := True;
            EvDBNumEdit11.Enabled := True;
         end;
      3: begin
            Edit3.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit9.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI3.Enabled := True;
            EvDBNumEdit12.Enabled := True;
         end;
      4: begin
            Edit4.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit10.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI4.Enabled := True;
            EvDBNumEdit13.Enabled := True;
         end;
      5: begin
            Edit5.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit11.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI5.Enabled := True;
            EvDBNumEdit14.Enabled := True;
         end;
      6: begin
            Edit6.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            Edit12.Text := RxQuery.Fieldbyname('TANQICOD').AsString;
            TQI6.Enabled := True;
            EvDBNumEdit15.Enabled := True;
         end;
      end;
      RxQuery.Next; Inc(ix);
    end;

    RxQuery.Close;
    // /caso não encontre uma pagina anterior neste livro para este produto, procura no livro anterior
    rxQuery.Sql.Text := 'Select L.LMCAIPAGATUAL from LMCCAB L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
    'L.PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' and '  +
    'L.LILMICOD = ' + SQLTemplateLILMICOD.asstring;
    RxQuery.prepare;
    RxQuery.Open;

    if rxQuery.FieldByName('LMCAIPAGATUAL').IsNull then
    begin
      rxQuery.Close;
      RxQuery.SQL.Text := 'Select L.* from LMCCAB L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L. LMCAIPAGATUAL = (SELECT MAX(L2.LMCAIPAGATUAL) FROM LMCCAB L2 WHERE '+
      'L2.EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L2.PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' and ' +
      'L2.LILMICOD = ' + IntToStr(SQLTemplateLILMICOD.Value-1) + ') and ' +
      'L.PRODICOD = ' + SQLTemplatePRODICOD.AsString            + ' and '  +
      'L.LILMICOD = ' + IntToStr(SQLTemplateLILMICOD.Value-1)
    end else
    begin
      rxQuery.Close;
      RxQuery.SQL.Text := 'Select L.* from LMCCAB L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L. LMCAIPAGATUAL = (SELECT MAX(L2.LMCAIPAGATUAL) FROM LMCCAB L2 WHERE '+
      'L2.EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L2.PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' and ' +
      'L2.LILMICOD = ' + SQLTemplateLILMICOD.AsString + ' and ' +
      'L2.LMCAIPAGATUAL < ' + SQLTemplateLMCAIPAGATUAL.AsString + ') and ' +
      'L.PRODICOD = ' + SQLTemplatePRODICOD.AsString            + ' and '  +
      'L.LMCAIPAGATUAL < ' + SQLTemplateLMCAIPAGATUAL.AsString  + ' and '  +
      'L.LILMICOD = ' + SQLTemplateLILMICOD.AsString ;
    end;
    RxQuery.prepare;
    RxQuery.Open;
    SQLTemplateLMCAN2TQI1.value := RxQuery.Fieldbyname('LMCAN2TQF1').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR1').Value ;
    SQLTemplateLMCAN2TQI2.value := RxQuery.Fieldbyname('LMCAN2TQF2').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR2').Value ;
    SQLTemplateLMCAN2TQI3.value := RxQuery.Fieldbyname('LMCAN2TQF3').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR3').Value ;
    SQLTemplateLMCAN2TQI4.value := RxQuery.Fieldbyname('LMCAN2TQF4').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR4').Value ;
    SQLTemplateLMCAN2TQI5.value := RxQuery.Fieldbyname('LMCAN2TQF5').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR5').Value ;
    SQLTemplateLMCAN2TQI6.value := RxQuery.Fieldbyname('LMCAN2TQF6').Value;// + RxQuery.Fieldbyname('LMCAN2TQSBR6').Value ;

    RxQuery.Close;
    vQtdeTotalAbertura := SQLTemplateLMCAN2TQI1.Value + SQLTemplateLMCAN2TQI2.Value + SQLTemplateLMCAN2TQI3.Value +
                        SQLTemplateLMCAN2TQI4.Value + SQLTemplateLMCAN2TQI5.Value + SQLTemplateLMCAN2TQI6.Value ;

    EditEstoqueAbertura.Text := FormatCurr('#########0.00', vQtdeTotalAbertura);
    EditEstoqueAbertura.Update;

  Except

  End;

end;

procedure TFormCadastroLMC.EvDBNumEdit2Enter(Sender: TObject);
begin
  inherited;
    RxQuery.Close;
    // /caso não encontre uma pagina anterior neste livro para este produto, procura no livro anterior
    rxQuery.Sql.Text := 'Select L.LMSAIPAGATUAL from LMCSAIDA L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
    'L.PRODICOD = ' + SQLTemplatePRODICOD.AsString + ' and '  +
    'L.LILMICOD = ' + SQLTemplateLILMICOD.asstring +' and '+
      'L.BOMBICOD = ' + SQLSaidaBOMBICOD.AsString;
    RxQuery.prepare;
    RxQuery.Open;

    if rxQuery.FieldByName('LMSAIPAGATUAL').IsNull then
    begin
      RxQuery.Close;
      RxQuery.SQL.Text := 'Select L.* from LMCSAIDA L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L. LMSAIPAGATUAL = (SELECT MAX(L2.LMSAIPAGATUAL) FROM LMCSAIDA L2 WHERE '+
      'L2.EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L2.BOMBICOD = ' + SQLSaidaBOMBICOD.AsString + ' and ' +
      'L2.PRODICOD = ' + SQLSaidaPRODICOD.AsString + ' and ' +
      'L2.LILMICOD = ' + IntToStr(SQLSaidaLILMICOD.value-1)+ ') and ' +
      'L.PRODICOD = ' + SQLSaidaPRODICOD.AsString            + ' and '  +
      'L.LILMICOD = ' + IntToStr(SQLSaidaLILMICOD.value-1) + ' and '+
      'L.BOMBICOD = ' + SQLSaidaBOMBICOD.AsString
    end else
    begin
      RxQuery.Close;
      RxQuery.SQL.Text := 'Select L.* from LMCSAIDA L WHERE EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L. LMSAIPAGATUAL = (SELECT MAX(L2.LMSAIPAGATUAL) FROM LMCSAIDA L2 WHERE '+
      'L2.EMPRICOD = ' + SQLTemplateEMPRICOD.AsString + ' and ' +
      'L2.BOMBICOD = ' + SQLSaidaBOMBICOD.AsString + ' and ' +
      'L2.PRODICOD = ' + SQLSaidaPRODICOD.AsString + ' and ' +
      'L2.LILMICOD = ' + SQLSaidaLILMICOD.AsString + ' and ' +
      'L2.LMSAIPAGATUAL < ' + SQLTemplateLMCAIPAGATUAL.AsString + ') and ' +
      'L.PRODICOD = ' + SQLSaidaPRODICOD.AsString            + ' and '  +
      'L.LMSAIPAGATUAL < ' + SQLTemplateLMCAIPAGATUAL.AsString  + ' and '  +
      'L.LILMICOD = ' + SQLSaidaLILMICOD.AsString + ' and '+
      'L.BOMBICOD = ' + SQLSaidaBOMBICOD.AsString ;
    end;
    RxQuery.prepare;
    RxQuery.Open;
    try
      SQLSaidaLMSAN2ABERTUR.Value := RxQuery.FieldByName('LMSAN2FECHAME').Value;
    except
      Application.ProcessMessages;
    end;
    RxQuery.Close;
end;

procedure TFormCadastroLMC.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  // Deleta registros da tabela lmcsaida
  RxQuery.Close;
  RxQuery.Sql.Text := 'Delete from LMCSAIDA Where '+
                      ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                      ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                      ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
  RxQuery.Prepare;
  RxQuery.ExecSQL;
  // deleta registros da tabela lmcentrada
  RxQuery.Close;
  RxQuery.Sql.Text := 'Delete from LMCENTRADA Where '+
                      ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                      ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                      ' LMENIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
  RxQuery.Prepare;
  RxQuery.ExecSQL;
  RxQuery.Close;
  
    inherited;

end;

procedure TFormCadastroLMC.EvDBNumEdit3Exit(Sender: TObject);
begin
  inherited;
  if  MessageDlg('Confirma a Digitação de Abertura ?', mtConfirmation, [mbNo,mbOK], 0) = mrYes then
    EvDBNumEdit3.ReadOnly := True;
end;

procedure TFormCadastroLMC.TabSheetDadosPrincipaisShow(Sender: TObject);
begin
  inherited;
  FieldsReadOnly(True);
  VerificaTanques;
end;

procedure TFormCadastroLMC.EvDBNumEdit10Enter(Sender: TObject);
begin
  inherited;
  nPerdasSobras:= TEvDBNumEdit(Sender).value;
end;

procedure TFormCadastroLMC.PagePrincipalChange(Sender: TObject);
begin
  inherited;
  case PagePrincipal.ActivePageIndex of
  0:Button1.Down := true;
  1:Button2.Down := true;
  2:Button3.Down := true;
  3:BtVolumeVendido.Down := true;
  4:BtFechamento.Down := true;
  end;
end;

procedure TFormCadastroLMC.actExcluirExecute(Sender: TObject);
var nPagina:Integer;
begin
  RxQuery.Close;
  RxQuery.Sql.Text := 'Select * from LMCCAB Where LMCAIPAGATUAL > '+ SQLTemplateLMCAIPAGATUAL.AsString + ' and '+
  'LILMICOD = (Select max(LILMICOD) from LMCCAB)';
  RxQuery.Prepare;
  RxQuery.Open;
  If not RxQuery.FieldbyName('LMCAIPAGATUAL').IsNull then
  begin
    MessageDlg('Somente é premitido excluir a última página.', mtWarning, [mbOK], 0);
    Exit;
  end ;
  if Application.MessageBox('Confirma Exclusão do Registro Selecionado?','Pergunta',MB_YESNO) = mryes then
  begin
    nPagina := SQLTemplateLMCAIPAGATUAL.Value;
    SQLTemplate.delete;
    RxQuery.Sql.Text := 'Update LIVROLMC set LILMIPAGATUAL = :xPag where LILMICOD = :xlmicod and EMPRICOD = :xemprcod';
    RxQuery.Prepare;
    RxQuery.ParamByName('xpag').value := nPagina - 1;
    RxQuery.ParamByName('xlmicod').Value := SQLTemplateLILMICOD.value;
    RxQuery.ParamByName('xemprcod').value := SQLTemplateEMPRICOD.value;
    RxQuery.ExecSQL;
    RxQuery.Close;
  end;
end;

procedure TFormCadastroLMC.TabVolVendidoEnter(Sender: TObject);
begin
  inherited;
  RxQuery.Close;
  RxQuery.SQL.Text := 'select t.prodicod, t.tanqicod,b.bombicod from tanque t '+
  'inner join bomba b on b.tanqicod = t.tanqicod where t.prodicod = :xProduto';
  RxQuery.ParamByName('xProduto').Value := SQLTemplatePRODICOD.Value;
  RxQuery.Open;
  LabelInform.Caption := '';
  While not RxQuery.Eof do
  begin
    labelInform.Caption := labelInform.Caption + 'Tanque '+RxQuery.Fieldbyname('Tanqicod').AsString +
                           '  Bomba '+ RxQuery.Fieldbyname('Bombicod').AsString + #13#10;
    RxQuery.Next;
  end;
  RxQuery.Close;

end;

procedure TFormCadastroLMC.EvDBNumEdit10Exit(Sender: TObject);
begin
  inherited;
    if not (SQLTemplate.State in ([dsEdit,dsInsert])) then
      exit;
    if TEvDBNumEdit(Sender).Name = 'EvDBNumEdit10' then
      SQLTemplateLMCAN2TQSBR1.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR1.Value;
    if TEvDBNumEdit(Sender).Name = 'EvDBNumEdit11' then
      SQLTemplateLMCAN2TQSBR2.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR2.Value;
    if TEvDBNumEdit(Sender).Name = 'EvDBNumEdit12' then
      SQLTemplateLMCAN2TQSBR3.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR3.Value;
    if TEvDBNumEdit(Sender).Name = 'EvDBNumEdit13' then
      SQLTemplateLMCAN2TQSBR4.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR4.Value;
    if TEvDBNumEdit(Sender).Name = 'EvDBNumEdit14' then
      SQLTemplateLMCAN2TQSBR5.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR5.Value;
    if TEvDBNumEdit(Sender).name = 'EvDBNumEdit15' then
      SQLTemplateLMCAN2TQSBR6.Value := TEvDBNumEdit(Sender).value - nPerdasSobras + SQLTemplateLMCAN2TQSBR6.Value;
    SQLTemplateLMCAN2VLRPERDSOB.Value := SQLTemplateLMCAN2TQSBR1.Value + SQLTemplateLMCAN2TQSBR2.Value +
                                         SQLTemplateLMCAN2TQSBR3.Value + SQLTemplateLMCAN2TQSBR4.Value +
                                         SQLTemplateLMCAN2TQSBR5.Value + SQLTemplateLMCAN2TQSBR6.Value ;


end;

procedure TFormCadastroLMC.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if PagePrincipal.ActivePageIndex <> 4 then
    FieldsReadOnly(False);
end;

procedure TFormCadastroLMC.BTNLocalizarClick(Sender: TObject);
var Clausula: String;
begin
  inherited;
  Clausula := '';
  if edtPagina.Text <> '' then
    Clausula := 'LMCAIPAGATUAL = ' + edtPagina.text;
  if edtLivro.Text <> '' then
    if edtPagina.text <> '' then
      Clausula := Clausula +' and LILMICOD = ' + edtlivro.text
    else
      Clausula := 'LILMICOD = ' + edtlivro.text;

  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incompleta, verifique!');
end;

procedure TFormCadastroLMC.Movimentao1Click(Sender: TObject);
var linha, xPag: Integer;
    Strx, Frase: String;
    VendaTotal : Extended;
begin
  inherited;
      SqlTemplate.DisableControls;
      SQLTemplate.First;
      RDPrint.Abrir;
      xPag := 1;
      VendaTotal := 0;
      While Not SQLTemplate.Eof do
      begin
        linha:= 1;
        RDprint.ImpF(Linha,  1,'MOVIMENTACAO DE COMBUSTIVEIS',[Expandido, Italico]); inc(linha,2);
        RDprint.ImpF(Linha,  1,'Razao..: '+SQLEmpresaEMPRA60RAZAOSOC.AsString,[normal]); inc(linha);
        RDprint.ImpF(Linha,  1,'CNPJ...: '+SQLEmpresaEMPRA14CGC.AsString,[normal]);
        RDprint.ImpF(Linha, 32,'IE.: ' +SQLEmpresaEMPRA20IE.AsString,[normal]);
        RDprint.ImpF(Linha, 60,'Pag.: '+IntToStr(xpag),[normal]); inc(Linha);
        RDprint.ImpF(Linha,  1,'-----------------------------------------------------------------------------------------------------------------------------------',[comp20]); inc(Linha);
        RDprint.ImpF(Linha,  1,'Data       Produto                                 Bico No.Inicial No.Final   Afer.        Liquido          R$ Bico        R$ Total',[Comp20]); inc(Linha);
        RDprint.ImpF(Linha,  1,'-----------------------------------------------------------------------------------------------------------------------------------',[comp20]); inc(Linha);
        While (Not SQLTemplate.Eof) and (Linha < 62) do
        begin
          SQLSaida.Close;
          SQLSaida.MacroByName('MFiltro').Value := ' EMPRICOD = '      + SQLTemplateEMPRICOD.AsString + ' and ' +
                                                   ' LILMICOD = '      + SQLTemplateLILMICOD.AsString + ' and ' +
                                                   ' LMSAIPAGATUAL = ' + SQLTemplateLMCAIPAGATUAL.AsString ;
          SQLSaida.Open;

          Frase := SQLTemplateLMCADDTMOV.AsString;
          Strx  := SQLProdutoPRODA60DESCR.AsString;
          while not SQLSaida.eof do
          begin
            While Length(strx) < 40 do
              Insert(' ',Strx,Length(Strx)+1);
            Frase := Frase + ' '+Strx;
            Strx:= SQLSaidaBOMBICOD.AsString;
            While Length(strx) < 3 do
              Insert('0',Strx,1);
            Frase := Frase + ' '+Strx;
            Strx:= SQLSaidaLMSAN2ABERTUR.AsString;
            While Length(strx) < 10 do
              Insert('0',Strx,1);
            Frase := Frase + ' '+Strx;
            Strx:= SQLSaidaLMSAN2FECHAME.AsString;
            While Length(strx) < 10 do
              Insert('0',Strx,1);
            Frase := Frase + ' '+Strx;
            Strx:= SQLSaidaLMSAN2AFERIR.AsString;
            While Length(strx) < 5 do
              Insert(' ',Strx,1);
            Frase := Frase + ' '+Strx;
            Strx:= FloatToStr(SQLSaidaLMSAN2FECHAME.Value-
                              SQLSaidaLMSAN2ABERTUR.Value-
                              SQLSaidaLMSAN2AFERIR.Value);
            While Length(strx) < 15 do
              Insert(' ',Strx,0);
            Frase := Frase + ' '+Strx;
            Strx:= FormatFloat(',0.00',SQLSaidaQtdeVendaBico.value*SQLTemplateLMCAN2PRECODIA.value);
            While Length(strx) < 15 do
              Insert(' ',Strx,1);
            Frase := Frase + ' '+Strx;
            SQLSaida.Next;
            if SQLSaida.Eof then
            begin
              Strx:= FormatFloat(',0.00', SQLTemplateLMCAN2VLRVENDIA.Value);
              While Length(Strx) < 15 do
                Insert(' ',Strx,1);
              Frase := Frase + ' '+Strx;
             end;
            RDprint.ImpF(Linha,  1,Frase,[Comp20]);inc(Linha);
            Frase := '          ';
            Strx:='';
          end;
          VendaTotal := VendaTotal + SQLTemplateLMCAN2VLRVENDIA.Value;
          SQLTemplate.Next;
          SQLSaida.Close;
          SQLEntrada.close;
        end;
        RDprint.ImpF(Linha,  1,'-----------------------------------------------------------------------------------------------------------------------------------',[comp20]); inc(Linha);
        Strx:= FormatFloat(',0.00',VendaTotal);
        While Length(strx) < 15 do
          Insert(' ',Strx,1);
        RDprint.ImpF(Linha,71,Strx,[comp20]); inc(Linha);
        RDprint.Novapagina;
        inc(xPag);
      end;
      RDprint.Fechar;
      SQLSaida.Close;
      SQLTemplate.EnableControls;
end;

procedure TFormCadastroLMC.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DBEditVlrVenda.Value <= 0 then
  begin
    ShowMessage('Tecle <Enter> no nome do produto para carregar seu valor e saldo');
    Abort;
  end
end;

end.


