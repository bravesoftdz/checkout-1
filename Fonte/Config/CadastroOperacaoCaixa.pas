unit CadastroOperacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  VarSYS, FormResources, RxLookup, UnitLibrary, DBActns, ActnList, ImgList,
  Serial, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroOperacaoCaixa = class(TFormCadastroTEMPLATE)
    SQLTemplateOPCXICOD: TIntegerField;
    SQLTemplateOPCXA60DESCR: TStringField;
    SQLTemplateOPCXCDEBITOCREDITO: TStringField;
    SQLTemplateOPCXCTOTALIZAREL: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateOPCXA5SIGLA: TStringField;
    Label3: TLabel;
    ComboDebitoCredito: TRxDBComboBox;
    ComboSigla: TRxDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboSolicitaValor: TRxDBComboBox;
    SQLTemplateOPCXCSOLICVLR: TStringField;
    Label6: TLabel;
    ComboMovCaixa: TRxDBComboBox;
    Label7: TLabel;
    ComboAutentica: TRxDBComboBox;
    SQLTemplateOPCXCAUTENTICA: TStringField;
    SQLTemplateOPCXCOPINTERNA: TStringField;
    RxDBComboOpInterna: TRxDBComboBox;
    Label8: TLabel;
    SQLTemplateIMPRIMIR_RESUMO: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label9: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    RetornaContaCorrente: TSpeedButton;
    DBEdit17: TDBEdit;
    SQLTemplateCTCRICOD: TIntegerField;
    SQLTemplateNomeContaCorrente: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaContaCorrenteClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacaoCaixa: TFormCadastroOperacaoCaixa;

implementation

uses DataModulo, CadastroOperacaoCaixaTotalizadorCaixa, CadastroContaCorrente;

{$R *.DFM}

procedure TFormCadastroOperacaoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOCAIXA' ;
end;

procedure TFormCadastroOperacaoCaixa.Button1Click(Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name = 'Button3' then
  begin
    DSMasterSys := DSTemplate ;
    CriaFormulario(TFormCadastroOperacaoCaixaTotalizadorCaixa,'FormCadastroOperacaoCaixaTotalizadorCaixa', True, False, True, '');
  end;
end;

procedure TFormCadastroOperacaoCaixa.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateOPCXCTOTALIZAREL.Value := 'N' ;
  SQLTemplateOPCXCSOLICVLR.Value    := 'N' ;
  SQLTemplateOPCXCAUTENTICA.Value   := 'N' ;
  SQLTemplateOPCXCOPINTERNA.Value   := 'S' ;
end;

procedure TFormCadastroOperacaoCaixa.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  ComboDebitoCredito.Enabled := SQLTemplateOPCXA5SIGLA.AsString <> '';
  ComboSolicitaValor.Enabled := SQLTemplateOPCXA5SIGLA.AsString <> '';
end;

procedure TFormCadastroOperacaoCaixa.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if SQLLocate('MOVIMENTOCAIXA','OPCXICOD','OPCXICOD',SQLTemplateOPCXICOD.AsString) <> '' then
    begin
      Informa('Esta operação de caixa já foi utilizada no sistema, você não poderá excluir.' + #13 +
              'Se desejar crie uma nova operação de caixa!');
      Abort;
      Exit;
    end;
end;

procedure TFormCadastroOperacaoCaixa.DBEdit16KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaContaCorrente.Click;
end;

procedure TFormCadastroOperacaoCaixa.RetornaContaCorrenteClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CTCRICOD') ;
  FieldOrigem := 'CTCRICOD' ;
  CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente',False,True,True,'');

end;

procedure TFormCadastroOperacaoCaixa.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateCTCRICOD.AsInteger > 0 then
    SQLTemplateNomeContaCorrente.AsString := SQLLocate('CONTACORRENTE', 'CTCRICOD', 'CTCRA60TITULAR', '"' + SQLTemplateCTCRICOD.AsString + '"') ;
end;

end.
