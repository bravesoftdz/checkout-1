
unit CadastroPlanoRecebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, StdCtrls, RxDBComb, DBCtrls, Db, DBTables, RxQuery,
  Menus, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg,
  FormResources, VarSys, DBActns, ActnList, ImgList, EDBNum,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPlanoRecebimento = class(TFormCadastroTEMPLATE)
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePLRCN2TXJURO: TFloatField;
    SQLTemplatePLRCN2TXMULTA: TFloatField;
    SQLTemplatePLRCN2TXCRED: TFloatField;
    SQLTemplatePLRCN2PERCDESC: TFloatField;
    SQLTemplatePLRCCDFIX: TStringField;
    SQLTemplatePLRCIDFIXNROPARC: TIntegerField;
    SQLTemplatePLRCDFIXDVENC: TIntegerField;
    SQLTemplatePLRCCDFIXENTR: TStringField;
    SQLTemplatePLRCCATIVO: TStringField;
    SQLTemplatePLRCA60DESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    RxComboAtivo: TRxDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    RxComboBoxDtFixa: TRxDBComboBox;
    GroupBoxDatafixa: TGroupBox;
    Label10: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    SQLTemplatePLRCN5FATOR: TFloatField;
    SQLTemplatePLRCN5FATORPARC: TFloatField;
    Label8: TLabel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    SQLTemplatePLRCN2PERCACRESC: TFloatField;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePLRCFATCASH: TStringField;
    Label5: TLabel;
    ComboUsado: TRxDBComboBox;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    SQLTemplatePLRCN2PERCJURDIA: TFloatField;
    SQLTemplatePLRCCSOLICITASENHA: TStringField;
    Label15: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure RxComboBoxDtFixaChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPlanoRecebimento: TFormCadastroPlanoRecebimento;

implementation

uses CadastroPlanoRecebimentoParcela, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroPlanoRecebimento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PLANORECEBIMENTO';
end;

procedure TFormCadastroPlanoRecebimento.RxComboBoxDtFixaChange(Sender: TObject);
begin
  inherited;
  GroupBoxDatafixa.Visible := RxComboBoxDtFixa.ItemIndex = 0;
end;

procedure TFormCadastroPlanoRecebimento.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroPlanoRecebimentoParcela,'FormCadastroPlanoRecebimentoParcela',True,False,True,'Plano ' + SQLTemplatePLRCA60DESCR.Value);
end;

procedure TFormCadastroPlanoRecebimento.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePLRCCATIVO.Value       := 'S';
  SQLTemplatePLRCN2PERCDESC.Value   := 0;
  SQLTemplatePLRCN2TXJURO.Value     := 0;
  SQLTemplatePLRCN2TXCRED.Value     := 0;
  SQLTemplatePLRCN2PERCACRESC.Value := 0;
  SQLTemplatePLRCN2TXMULTA.Value    := 0;
  SQLTemplatePLRCCDFIX.Value        := 'S';
  SQLTemplatePLRCFATCASH.Value      := 'C';
end;

procedure TFormCadastroPlanoRecebimento.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  If SQLTemplatePLRCCDFIX.Value = 'S' Then
    begin
      GroupBoxDatafixa.Visible := True ;
      Button3.Enabled := False ;
    end
  else
    begin
      GroupBoxDatafixa.Visible := False ;
      Button3.Enabled := True ;
    end;
end;

procedure TFormCadastroPlanoRecebimento.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplatePLRCN2PERCDESC.Value > 0) and (SQLTemplatePLRCN2TXJURO.Value > 0) then
    begin
      Informa('Não é permitido ter Desconto e Acréscimo no mesmo plano !') ;
      SQLTemplatePLRCN2PERCDESC.FocusControl ;
      SQLTemplate.Cancel;
      Abort;
    end ;

  if SQLTemplatePLRCA60DESCR.Value = '' Then
    begin
      beep;
      Informa('O campo Descrição deve ser informado!');
      SQLTemplate.Cancel;
      Abort;
    end;
  if SQLTemplatePLRCCDFIX.Value = '' Then
    begin
      beep;
      Informa('O campo Data Fixa deve ser informado!');
      SQLTemplate.Cancel;
      Abort;
    end;
  if SQLTemplatePLRCDFIXDVENC.AsInteger > 0 then
    if SQLTemplatePLRCDFIXDVENC.AsInteger > 38 then  // 1 A 31 DIAS DO MES // 32 A 38 DIAS DA SEMANA - INICIO 2 = SEGUNDA - 8 = DOMINGO
      begin
        Informa('Dia de Vencimento Inválido. Verifique!');
        SQLTemplate.Cancel;
        Abort;
      end;
end;

procedure TFormCadastroPlanoRecebimento.SpeedButton1Click(Sender: TObject);
var
  T,Ac:Double;
  I:Integer;
begin
  inherited;
  Ac:=0;
  if (SQLTemplatePLRCN5FATORPARC.Value<>0) and (SQLTemplatePLRCN5FATOR.Value<>0) then
    Begin
      T:=100;
      for I:=1 To SQLTemplatePLRCN5FATORPARC.AsInteger do
        begin
          Ac:=Ac+T;
          T:=T-(100/SQLTemplatePLRCN5FATORPARC.Value);
        end;
      if not (SQLTemplate.State in dsEditModes) then SQLTemplate.Edit;
      SQLTemplatePLRCN2TXJURO.Value:=((((100*SQLTemplatePLRCN5FATOR.Value)*SQLTemplatePLRCN5FATORPARC.Value)-100)/Ac) * 100;
    end
  else
    Application.MessageBox('Informe o Fator e o Nro de Parcelas!', PChar('Advanced Control Informa !'), MB_SYSTEMMODAL+MB_Ok+MB_IconExclamation);
end;

end.
