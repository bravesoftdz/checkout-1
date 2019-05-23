unit CadastroNegocioComposto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, ToolEdit, RXDBCtrl, RxDBComb;

type
  TFormCadastroNegocioComposto = class(TFormCadastroTEMPLATE)
    SQLTemplatePRNEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePRNEICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplatePRCLA13ID: TStringField;
    SQLTemplatePRNEDEMISSAO: TDateTimeField;
    SQLTemplatePRNEA100DESCRICAO: TStringField;
    SQLTemplatePRNEA60CONTATO: TStringField;
    SQLTemplatePRNEA15CONTATOFONE1: TStringField;
    SQLTemplatePRNEA15CONTATOFONE2: TStringField;
    SQLTemplatePRNEN2VALOR: TBCDField;
    SQLTemplatePRNEA254OBS: TStringField;
    SQLTemplatePRNEA15VALIDADE: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePNFEICOD: TIntegerField;
    SQLTemplatePRNECTIPOFRETE: TStringField;
    SQLTemplatePRNEA254MOTFECHA: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SQLPlanoRecebimento: TRxQuery;
    SQLStatus: TRxQuery;
    DSSQLPlanoRecebimento: TDataSource;
    DSSQLMotivoFecha: TDataSource;
    SQLFormaEnvio: TRxQuery;
    DSSQLFormaEnvio: TDataSource;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DblMotFecha: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    SQLTemplatePRCLA60ENDCOM: TStringField;
    SQLTemplatePRCLA60CIDCOM: TStringField;
    SQLTemplatePRCLA2UFCOM: TStringField;
    SQLTemplatePRCLA15FONE1: TStringField;
    SQLTemplatePRCLA254EMAIL: TStringField;
    GroupBox3: TGroupBox;
    SQLVendedor: TRxQuery;
    RxDBLookupCombo4: TRxDBLookupCombo;
    dsSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateVENDA60CONTATO: TStringField;
    SQLTemplateVENDA15FONE1: TStringField;
    SQLTemplateVENDA60CID: TStringField;
    SQLTemplateVENDA2UF: TStringField;
    AcessaVendedor: TSpeedButton;
    Button4: TRxSpeedButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    AcessaPlano: TSpeedButton;
    AcessaFormaEnvio: TSpeedButton;
    Label5: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    AcessaCliente: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    SQLTemplatePRNEA60END: TStringField;
    SQLTemplatePRNEA60CIDADE: TStringField;
    SQLTemplatePRNEA2UF: TStringField;
    SQLTemplatePRNEA8CEP: TStringField;
    SQLTemplatePRNEA60EMAIL: TStringField;
    lblMotivoFechamento: TLabel;
    MemoObs: TDBRichEdit;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSCPEDEMOTIVO: TStringField;
    SQLStatusPRNSA60DESCR: TStringField;
    SQLTemplatePRNSICOD: TIntegerField;
    SQLStatusPRNSCALTERA: TStringField;
    SQLTemplatePRNSCALTERA: TStringField;
    SQLTemplatePRNSCPEDEMOTIVO: TStringField;
    SQLTemplatePRNSA60DESCR: TStringField;
    SQLTemplateVENDA60NOME: TStringField;
    SQLTemplatePRCLA60RAZAOSOC: TStringField;
    SQLTemplateTipoFrete: TStringField;
    SQLClientePRCLA13ID: TStringField;
    SQLClientePRCLA60RAZAOSOC: TStringField;
    SQLClientePRCLA60ENDCOM: TStringField;
    SQLClientePRCLA60CIDCOM: TStringField;
    SQLClientePRCLA60BAICOM: TStringField;
    SQLClientePRCLA2UFCOM: TStringField;
    SQLClientePRCLA8CEPCOM: TStringField;
    SQLClientePRCLA254EMAIL: TStringField;
    SQLClientePRCLA15FONE1: TStringField;
    SQLTemplatePRNEA60BAIRRO: TStringField;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateTERMICOD: TIntegerField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboClienteConsulta: TRxDBLookupCombo;
    MnTrocarVendedorHist: TMenuItem;
    SQLHistorico: TRxQuery;
    dsSQLHistoricoAnterior: TDataSource;
    SQLHistoricoPCHTA13ID: TStringField;
    SQLHistoricoEMPRICOD: TIntegerField;
    SQLHistoricoPCHTICOD: TIntegerField;
    SQLHistoricoPRCLA13ID: TStringField;
    SQLHistoricoPRNEA13ID: TStringField;
    SQLHistoricoVENDICOD: TIntegerField;
    SQLHistoricoPCHTDCADASTRO: TDateTimeField;
    SQLHistoricoPCHTTHISTORICO: TMemoField;
    SQLHistoricoPCHTDPROXCONT: TDateTimeField;
    SQLHistoricoPCHTA60CONTATO: TStringField;
    SQLHistoricoPCHTA60NOMVEND: TStringField;
    SQLHistoricoREGISTRO: TDateTimeField;
    SQLHistoricoPENDENTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MemoObsKeyPress(Sender: TObject; var Key: Char);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure AcessaClienteClick(Sender: TObject);
    procedure AcessaVendedorClick(Sender: TObject);
    procedure AcessaPlanoClick(Sender: TObject);
    procedure AcessaFormaEnvioClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure ComboClienteChange(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure MnTrocarVendedorHistClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNegocioComposto: TFormCadastroNegocioComposto;

implementation

uses VarSYS, FormResources, UnitLibrary, CadastroProdutosProspect,
  CadastroVendedor, CadastroPlanoRecebimento,
  CadastroFormasDeEnvio, CadastroHistorico, DataModulo,
  CadastroClientePropect;

{$R *.dfm}

procedure TFormCadastroNegocioComposto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROSPECTNEGOCIO';
  if not SQLStatus.Active then SQLStatus.Active  := True;
  if not SQLFormaEnvio.Active  then SQLFormaEnvio.Active   := True;
  if not SQLPlanoRecebimento.Active then SQLPlanoRecebimento.Active  := True;
  if (DM.TipoHistorico <> '') and (length(DM.TipoHistorico) = 13) then
      SQLTemplate.MacroByName('MFiltro').AsString := ' PRNEA13ID = "' + DM.TipoHistorico + '"';

end;

procedure TFormCadastroNegocioComposto.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRNEN2VALOR.AsFloat:= 0;                              
  SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
  SQLTemplateTERMICOD.AsInteger := TerminalCorrente;
  SQLTemplatePRNEDEMISSAO.AsDateTime := Now;
End;

procedure TFormCadastroNegocioComposto.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DblMotFecha.KeyValue <> null then
     begin
        if (SQLStatus.FieldByName('PRNSCPEDEMOTIVO').AsString = 'S') and (MemoObs.Text = '') then
           begin
             lblMotivoFechamento.Visible := True;
             MemoObs.Visible             := True;
             Informa('Você deve imnformar um motivo pra o fechamento.');
             SQLTemplatePRNEA254MOTFECHA.FocusControl;
             Abort;
           end;
     end;

  if (SQLTemplatePRNSCPEDEMOTIVO.AsString = 'S') and (SQLTemplatePRNSICOD.IsNull) then
     begin
        Informa('Você deve informar um motivo de fechamento. Obrigado');
        SQLTemplatePRNSICOD.FocusControl;
        Abort;
     end;

  if SQLTemplatePRNEN2VALOR.AsFloat = 0 then
     begin
        if Application.MessageBox('O valor do Negócio esta zerado. Deseja continuar mesmo assim?', 'Atenção', MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION) = idNo then
           begin
              SQLTemplatePRNEN2VALOR.FocusControl;
              Abort;
           end;
     end;
end;

procedure TFormCadastroNegocioComposto.MemoObsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFormCadastroNegocioComposto.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRNSCALTERA.AsString = 'N' then
     begin
        Informa('Você não pode alterar este Negócio. Verifique o Status.');
        Abort;
     end;
end;

procedure TFormCadastroNegocioComposto.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroProdutosProspect,'FormCadastroProdutosProspect', True, False,True,'');
end;

procedure TFormCadastroNegocioComposto.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lblMotivoFechamento.Visible := not (SQLStatus.FieldByName('PRNSCPEDEMOTIVO').AsString <> 'S');
  MemoObs.Visible             := not (SQLStatus.FieldByName('PRNSCPEDEMOTIVO').AsString <> 'S');
end;

procedure TFormCadastroNegocioComposto.AcessaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRCLA13ID');
  FieldOrigem := 'PRCLA13ID';
  DataSetLookup:= SQLCliente;
  CriaFormulario(TFormCadastroClientePropect,'FormCadastroClientePropect',False,True,False,'');
end;

procedure TFormCadastroNegocioComposto.AcessaVendedorClick(Sender: TObject);
begin
  inherited;
  DataSetLookup:= SQLVendedor;
  FieldLookup  := SQLTemplate.FindField('VENDICOD');
  FieldOrigem := 'VENDICOD';
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,True,'');
end;

procedure TFormCadastroNegocioComposto.AcessaPlanoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PLRCICOD');
  DataSetLookup:= SQLPlanoRecebimento;
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormCadastroPlanoRecebimento,'FormCadastroPlanoRecebimento',False,True,True,'');
end;

procedure TFormCadastroNegocioComposto.AcessaFormaEnvioClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PNFEICOD');
  DataSetLookup:= SQLFormaEnvio;
  FieldOrigem := 'PNFEICOD';
  CriaFormulario(TFormCadastroFormasDeEnvio,'FormCadastroFormasDeEnvio',False,True,True,'');
end;

procedure TFormCadastroNegocioComposto.Button4Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  DM.TipoHistorico := 'Neg';
  CriaFormulario(TFormCadastroHistorico,'FormCadastroHistorico',False,False,True,'Cliente '+ SQLTemplatePRCLA60RAZAOSOC.AsString);
end;

procedure TFormCadastroNegocioComposto.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaCliente.Click;
end;

procedure TFormCadastroNegocioComposto.RxDBLookupCombo4KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaVendedor.Click;
end;

procedure TFormCadastroNegocioComposto.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaPlano.Click;
end;

procedure TFormCadastroNegocioComposto.RxDBLookupCombo3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     AcessaFormaEnvio.Click;
end;

procedure TFormCadastroNegocioComposto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.ParametroExterno := '';
  DM.TipoHistorico := '';
  if DSMasterSys <> Nil then
     DSMasterSys := Nil;
  if FieldLookup <> Nil then
     FieldLookup := Nil;
  if DataSetLookup <> Nil then
     DataSetLookup := Nil;
end;

procedure TFormCadastroNegocioComposto.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRNECTIPOFRETE.AsString = 'C' then
     SQLTemplateTipoFrete.AsString := 'CIF - Pago';
  if SQLTemplatePRNECTIPOFRETE.AsString = 'F' then
     SQLTemplateTipoFrete.AsString := 'FOB - Pagar';
end;

procedure TFormCadastroNegocioComposto.ComboClienteChange(
  Sender: TObject);
begin
  inherited;
  SQLTemplatePRNEA60END.AsVariant    := SQLClientePRCLA60ENDCOM.AsVariant;
  SQLTemplatePRNEA60CIDADE.AsVariant := SQLClientePRCLA60CIDCOM.AsVariant;
  SQLTemplatePRNEA2UF.AsVariant      := SQLClientePRCLA2UFCOM.AsVariant;
  SQLTemplatePRNEA8CEP.AsVariant     := SQLClientePRCLA8CEPCOM.AsVariant;
  SQLTemplatePRNEA60EMAIL.AsVariant  := SQLClientePRCLA254EMAIL.AsVariant;
  SQLTemplatePRNEA60BAIRRO.AsVariant := SQLClientePRCLA60BAICOM.AsVariant;
end;

procedure TFormCadastroNegocioComposto.SQLTemplateBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if DM.ParametroExterno <> '' then
     begin
       if SQLTemplate.MacroByName('MFiltro').AsString = '0=0' then
          SQLTemplate.MacroByName('MFiltro').AsString := DM.ParametroExterno
       else
          SQLTemplate.MacroByName('MFiltro').AsString := SQLTemplate.MacroByName('MFiltro').AsString + DM.ParametroExterno;
     end;
end;

procedure TFormCadastroNegocioComposto.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'PRCLA13ID = "' + ComboClienteConsulta.Value + '" ';

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem       := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incomleta, verifique!');
end;

procedure TFormCadastroNegocioComposto.MnTrocarVendedorHistClick(
  Sender: TObject);
begin
  inherited;
  If Pergunta('Não','Deseja alterar nos históricos o nome do vendedor pelo vendedor atual') then
    begin
      SQLHistorico.Close;
      SQLHistorico.MacroByName('MFiltro').Value := 'PRNEA13ID = "'+ SQLTemplatePRNEA13ID.Value+'"';
      SQLHistorico.Open;
      if not SQLHistorico.IsEmpty then
        begin
          SQLHistorico.First;
          while not SQLHistorico.eof do
            begin
              SQLHistorico.Edit;
              SQLHistoricoVENDICOD.Value := SQLTemplateVENDICOD.Value;
              SQLHistorico.Post;
              SQLHistorico.Next;
            end;
          ShowMessage('Atualização Concluida com Sucesso!');  
        end;
      SQLHistorico.Close;  
    end;
end;

end.
