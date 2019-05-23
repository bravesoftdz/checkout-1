unit TelaCadastroRapidoCliente;

interface

uses
  VarSYS, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ConerBtn, ExtCtrls, Mask, ToolEdit, DBTables, Db,
  RxQuery, RXDBCtrl, DBCtrls, jpeg, DBActns, ActnList, RxLookup;

type
  TFormTelaCadastroRapidoCliente = class(TForm)
    Shape4: TShape;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SQLCliente: TRxQuery;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DSSQLCliente: TDataSource;
    Nome: TDBEdit;
    Endereco: TDBEdit;
    Bairro: TDBEdit;
    Cidade: TDBEdit;
    Pai: TDBEdit;
    Mae: TDBEdit;
    Cep: TDBEdit;
    Estado: TDBEdit;
    Fone: TDBEdit;
    Email: TDBEdit;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60PROFISSAO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEA60URL: TStringField;
    SQLClienteCLIEN2RENDA: TBCDField;
    SQLClienteCLIEN2LIMITECRED: TBCDField;
    SQLClienteCLIEA60NOMEPAI: TStringField;
    SQLClienteCLIEA60NOMEMAE: TStringField;
    SQLClienteCLIEDNASC: TDateTimeField;
    SQLClienteCLIECESTADOCIVIL: TStringField;
    SQLClienteCLIEA60CONJUGE: TStringField;
    SQLClienteCLIEA60CONJUGEMAE: TStringField;
    SQLClienteCLIEN2CONJUGERENDA: TBCDField;
    SQLClienteCLIEDNASCCONJUGE: TDateTimeField;
    SQLClienteCLIEA60CONJUGEEMPR: TStringField;
    SQLClienteCLIEA15CONJFONEMPR: TStringField;
    SQLClienteCLIEA60EMPRESA: TStringField;
    SQLClienteCLIEA60ENDEMPRESA: TStringField;
    SQLClienteCLIEA60BAIEMPRESA: TStringField;
    SQLClienteCLIEA60CIDEMPRESA: TStringField;
    SQLClienteCLIEA2UFEMPRESA: TStringField;
    SQLClienteCLIEA8CEPEMPRESA: TStringField;
    SQLClienteCLIEDAMISEMPRESA: TDateTimeField;
    SQLClienteCLIEA15FONEEMPRESA: TStringField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    SQLClienteCLIETOBS: TStringField;
    SQLClienteTPCLICOD: TIntegerField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClientePROFICOD: TIntegerField;
    SQLClienteVENDICOD: TIntegerField;
    SQLClienteCLIEDCAD: TDateTimeField;
    SQLClienteCLIEDPRICOMPRA: TDateTimeField;
    SQLClienteCLIEDULTCOMPRA: TDateTimeField;
    SQLClienteCLIEA254PATHFOTO: TStringField;
    SQLClienteCLIECRECAVISATRASO: TStringField;
    SQLClienteCLIEA30NATURALIDADE: TStringField;
    SQLClienteCLIECRECEBECARTAO: TStringField;
    SQLClienteCLIEDENVCARTIMP: TDateTimeField;
    SQLClienteCLIEDRETCARTIMP: TDateTimeField;
    SQLClienteCLIEDENVCARTCLI: TDateTimeField;
    SQLClienteCLIEA10CODCONV: TStringField;
    SQLClienteCLIEA10CODANT: TStringField;
    SQLClienteCLIEA20NROCARTCRED: TStringField;
    SQLClientePENDENTE: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClienteCLIEA35NROCARTCRED: TStringField;
    SQLClienteCLIEA60EMAILCONJUG: TStringField;
    SQLClienteCLIEDCASAMENTO: TDateTimeField;
    SQLClienteTPRCICOD: TIntegerField;
    SQLClienteCLIEA60ENDCOB: TStringField;
    SQLClienteCLIEA60BAICOB: TStringField;
    SQLClienteCLIEA60CIDCOB: TStringField;
    SQLClienteCLIEA2UFCOB: TStringField;
    SQLClienteCLIEA8CEPCOB: TStringField;
    SQLClientePLRCICOD: TIntegerField;
    SQLClienteCLIEA30TEMPOMORADIA: TStringField;
    SQLClienteCLIECCASAPROPRIA: TStringField;
    ActionList1: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actProximo: TDataSetNext;
    actLookup: TAction;
    Image2: TImage;
    BtnRegistroAnterior: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    Bevel1: TBevel;
    LabelNovo: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RadioFisJur: TDBRadioGroup;
    PanelDocJur: TPanel;
    LabelCgc_CPF: TLabel;
    LabelIE_RG: TLabel;
    Label77: TLabel;
    DBEditCgc: TDBEdit;
    DBEditIE: TDBEdit;
    DBDateEdit8: TDBDateEdit;
    PanelDocFis: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label80: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    BtnFecharTela: TSpeedButton;
    ComboTipoCliente: TRxDBLookupCombo;
    Label11: TLabel;
    SQLTipoCliente: TRxQuery;
    DSSQLTipoCliente: TDataSource;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    LabelRetornar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SQLClienteBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioFisJurClick(Sender: TObject);
    procedure DSSQLClienteDataChange(Sender: TObject; Field: TField);
    procedure ControlarActions(DataSource: TDatasource);
    procedure DSSQLClienteStateChange(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure SQLClienteAfterPost(DataSet: TDataSet);
    procedure SQLClienteCLIEA10RGChange(Sender: TField);
    procedure SQLClienteAfterInsert(DataSet: TDataSet);
    procedure SQLClienteAfterEdit(DataSet: TDataSet);
    procedure SQLClienteCLIEA11CPFChange(Sender: TField);
    procedure SQLClienteCLIEA14CGCChange(Sender: TField);
    procedure SQLClienteNewRecord(DataSet: TDataSet);
    procedure LabelRetornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    RGAlterado,
    CPFAlterado,
    CGCAlterado : Boolean;
    function  AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroRapidoCliente: TFormTelaCadastroRapidoCliente;

implementation

uses DataModulo, UnitLibrary, UnitCheckoutLibrary;

{$R *.DFM}

procedure TFormTelaCadastroRapidoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaCadastroRapidoCliente.BtnCancelarClick(Sender: TObject) ;
begin
  SQLCliente.Cancel ;
  Close ;
end ;

procedure TFormTelaCadastroRapidoCliente.SQLClienteBeforePost(
  DataSet: TDataSet);

begin
  if DataSet.FieldByName('CLIEA14CGC').AsString <> '' then
    begin
      if Length(DataSet.FieldByName('CLIEA14CGC').AsString) = 14  then
        begin
          if not ValidaCGC(DataSet.FieldByName('CLIEA14CGC').AsString) then
            begin
              Informa('O CGC digitado é inválido !');
              Abort;
            end;
        end
      else
        begin
          Informa('O CCG digitado está incompleto !');
          Abort;
        end;
    end
  else
    if DataSet.FieldByName('CLIEA5FISJURID').AsString = 'J' then
      Informa('O CCG não foi informado !');

  if CPFAlterado then
    if SQLLocate('CLIENTE', 'CLIEA11CPF', 'CLIEA11CPF', '"' + DataSet.FieldByName('CLIEA11CPF').AsString + '"') <> '' then
      begin
         Informa('Este CPF já existe!') ;
        DataSet.FieldByName('CLIEA11CPF').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

  if RGAlterado then
    if SQLLocate('CLIENTE', 'CLIEA10RG', 'CLIEA10RG', '"' + DataSet.FieldByName('CLIEA10RG').AsString + '"') <> '' then
      begin
        Informa('Este RG já existe!') ;
        DataSet.FieldByName('CLIEA10RG').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

  if CGCAlterado then
    if SQLLocate('CLIENTE', 'CLIEA14CGC', 'CLIEA14CGC', '"' + DataSet.FieldByName('CLIEA14CGC').AsString + '"') <> '' then
      begin
         Informa('Este CGC já existe!') ;
        DataSet.FieldByName('CLIEA14CGC').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

  if DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  if DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                begin
                  DataSet.FindField('CLIEDCAD').AsDateTime := Date;
                  DM.CodigoAutomatico('CLIENTE', DSSQLCliente, DataSet, 2, 0);
                end;
  end ;
end ;

procedure TFormTelaCadastroRapidoCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl, 0, 0) ;
  if Key = VK_F3 then
    LabelRetornar.Click;
end;

procedure TFormTelaCadastroRapidoCliente.RadioFisJurClick(Sender: TObject);
begin
  if SQLCliente.FieldByName('CLIEA5FISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := RadioFisJur.ItemIndex = 0;
      PanelDocJur.Visible        := RadioFisJur.ItemIndex = 1;
    end;
end;

procedure TFormTelaCadastroRapidoCliente.DSSQLClienteDataChange(
  Sender: TObject; Field: TField);
begin
  if SQLCliente.FieldByName('CLIEA5FISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := SQLCliente.FieldByName('CLIEA5FISJURID').AsString[1] = 'F';
      PanelDocJur.Visible        := SQLCliente.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
    end;
end;
procedure TFormTelaCadastroRapidoCliente.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      BtnRegistroAnterior.Action := nil;
      BtnRegistroAnterior.Enabled := False;
      BtnProximoRegistro.Action := nil;
      BtnProximoRegistro.Enabled := False;
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelAlterar.Action := nil;
      LabelAlterar.Enabled := False;
    end
   else
   begin
     BtnRegistroAnterior.Action := actAnterior;
     BtnProximoRegistro.Action := actProximo;
     LabelNovo.Action := actNovo;
     LabelAlterar.Action := actAlterar;
   end;
end;

procedure TFormTelaCadastroRapidoCliente.DSSQLClienteStateChange(
  Sender: TObject);
begin
  ControlarActions(DSSQLCliente);
end;

procedure TFormTelaCadastroRapidoCliente.BtnFecharTelaClick(
  Sender: TObject);
begin
  if AbandonarSemSalvar(SQLCliente) then
    begin
      SQLCliente.Cancel;
      SQLCliente.CancelUpdates;
      Close;
    end
  else
    Abort;
end;
function TFormTelaCadastroRapidoCliente.AbandonarSemSalvar(Tabela:TDataSet) : Boolean;
begin
  Result := True;
  if Tabela <> nil then
    if (Tabela.State in dsEditModes) then
      begin
        if Application.MessageBox('Existem dados não gravados. Deseja sair mesmo assim?',
          'Pergunta',MB_YesNo+MB_IconQuestion) = Id_Yes then
          Tabela.Cancel
        else
          Result := False;
      end;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteAfterPost(
  DataSet: TDataSet);
begin
  try
    SQLCliente.ApplyUpdates;
  except
    on E:Exception do
      begin
        SQLCliente.CancelUpdates;
        Informa('Problemas ao gravar o cliente, ANOTE O ERRO: ' + E.Message);
        Abort;
      end;
  end;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteCLIEA10RGChange(
  Sender: TField);
begin
  RGAlterado := true ;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteAfterInsert(
  DataSet: TDataSet);
begin
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteAfterEdit(
  DataSet: TDataSet);
begin
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteCLIEA11CPFChange(
  Sender: TField);
begin
  CPFAlterado := true ;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteCLIEA14CGCChange(
  Sender: TField);
begin
  CGCAlterado := True;
end;

procedure TFormTelaCadastroRapidoCliente.SQLClienteNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FindField('EMPRICOD').AsInteger := EmpresaCorrente;
  SQLClienteCLIEA5FISJURID.AsString := 'F';
end;

procedure TFormTelaCadastroRapidoCliente.LabelRetornarClick(
  Sender: TObject);
begin
  FormTelaCadastroRapidoCliente.ModalResult := MrOk;
end;

procedure TFormTelaCadastroRapidoCliente.FormCreate(Sender: TObject);
begin
  SQLTipoCliente.Open;
end;

procedure TFormTelaCadastroRapidoCliente.FormActivate(Sender: TObject);
begin
  LabelNovo.Click;
end;

end.
