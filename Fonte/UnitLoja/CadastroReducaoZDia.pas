unit CadastroReducaoZDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, EDBNum, RxLookup, ToolEdit, RXDBCtrl, DBCtrls,
  DB, DBTables, DBActns, ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, RXCtrls, ExtCtrls, Buttons, jpeg,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormCadastroReducaoZ = class(TFormCadastroTEMPLATE)
    SQLTemplateREDUA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateREDUICOD: TIntegerField;
    SQLTemplateECFA13ID: TStringField;
    SQLTemplateREDUDEMIS: TDateTimeField;
    SQLTemplateREDUN3VENDABRUTA: TBCDField;
    SQLTemplateREDUN3GRANDETOTAL: TBCDField;
    SQLTemplateREDUICONTINICIAL: TIntegerField;
    SQLTemplateREDUICONTFINAL: TIntegerField;
    SQLTemplateREDUICONTREDUZ: TIntegerField;
    SQLTemplateREDUICONTREINICIO: TIntegerField;
    SQLTemplateREDUN3ALIQ1: TBCDField;
    SQLTemplateREDUN3BASE1: TBCDField;
    SQLTemplateREDUN3IMPO1: TBCDField;
    SQLTemplateREDUN3ALIQ2: TBCDField;
    SQLTemplateREDUN3BASE2: TBCDField;
    SQLTemplateREDUN3IMPO2: TBCDField;
    SQLTemplateREDUN3ALIQ3: TBCDField;
    SQLTemplateREDUN3BASE3: TBCDField;
    SQLTemplateREDUN3IMPO3: TBCDField;
    SQLTemplateREDUN3ALIQ4: TBCDField;
    SQLTemplateREDUN3BASE4: TBCDField;
    SQLTemplateREDUN3IMPO4: TBCDField;
    SQLTemplateREDUN3ALIQ5: TBCDField;
    SQLTemplateREDUN3BASE5: TBCDField;
    SQLTemplateREDUN3IMPO5: TBCDField;
    SQLTemplateREDUN3ALIQ6: TBCDField;
    SQLTemplateREDUN3BASE6: TBCDField;
    SQLTemplateREDUN3IMPO6: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label19: TLabel;
    Label48: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label2: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    Label3: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    EvDBNumEdit11: TEvDBNumEdit;
    EvDBNumEdit12: TEvDBNumEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EvDBNumEdit13: TEvDBNumEdit;
    EvDBNumEdit14: TEvDBNumEdit;
    EvDBNumEdit15: TEvDBNumEdit;
    EvDBNumEdit16: TEvDBNumEdit;
    EvDBNumEdit17: TEvDBNumEdit;
    EvDBNumEdit18: TEvDBNumEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    EvDBNumEdit19: TEvDBNumEdit;
    Label25: TLabel;
    EvDBNumEdit20: TEvDBNumEdit;
    DBGrid2: TDBGrid;
    BTParcNovo: TBitBtn;
    BtParcGravar: TBitBtn;
    BtParcExcluir: TBitBtn;
    DBEdit9: TDBEdit;
    Label26: TLabel;
    EvDBNumEdit21: TEvDBNumEdit;
    Label27: TLabel;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DSSQLNumerario: TDataSource;
    SQLRedNumerario: TRxQuery;
    DSSQLRedNumerario: TDataSource;
    SQLRedNumerarioREDUA13ID: TStringField;
    SQLRedNumerarioNUMEICOD: TIntegerField;
    SQLRedNumerarioREFON3VLR: TBCDField;
    SQLRedNumerarioNumerario: TStringField;
    ComboNumerario: TRxDBLookupCombo;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTemplateTERMICOD: TIntegerField;
    Label28: TLabel;
    EvDBNumEdit22: TEvDBNumEdit;
    SQLTemplateREDUN3VLRCANC: TBCDField;
    SQLTemplateVLRTOTBASEDIG: TFloatField;
    SQLTemplateVLRTOTIMPDIG: TFloatField;
    Panel7: TPanel;
    Label29: TLabel;
    EvDBNumEdit23: TEvDBNumEdit;
    EvDBNumEdit24: TEvDBNumEdit;
    SQLTemplateREDUN3VLRDESC: TBCDField;
    SQLTemplateREDUN3VENDALIQ: TBCDField;
    Label30: TLabel;
    EvDBNumEdit25: TEvDBNumEdit;
    EvDBNumEdit26: TEvDBNumEdit;
    Label31: TLabel;
    EvDBNumEdit27: TEvDBNumEdit;
    SQLTotal: TRxQuery;
    DSSQLTotal: TDataSource;
    SQLTotalTOTAL: TBCDField;
    Label32: TLabel;
    EvDBNumEdit28: TEvDBNumEdit;
    SQLTemplateREDUITOTCUPOM: TIntegerField;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioSALDO: TFloatField;
    SQLTemplateREDUCENVIADOTES: TStringField;
    DBCheckBox1: TDBCheckBox;
    MnEnviaMovtoAtualpTesouraria: TMenuItem;
    SQLTemplateREDUN3ALIQ7: TBCDField;
    SQLTemplateREDUN3BASE7: TBCDField;
    SQLTemplateREDUN3IMPO7: TBCDField;
    SQLTemplateREDUN3ALIQ8: TBCDField;
    SQLTemplateREDUN3BASE8: TBCDField;
    SQLTemplateREDUN3IMPO8: TBCDField;
    SQLTemplateREDUN3ALIQF: TBCDField;
    SQLTemplateREDUN3BASEF: TBCDField;
    SQLTemplateREDUN3IMPOF: TBCDField;
    SQLTemplateREDUN3ALIQI: TBCDField;
    SQLTemplateREDUN3BASEI: TBCDField;
    SQLTemplateREDUN3IMPOI: TBCDField;
    SQLTemplateREDUN3ALIQN: TBCDField;
    SQLTemplateREDUN3BASEN: TBCDField;
    SQLTemplateREDUN3IMPON: TBCDField;
    SQLTemplateREDUN3ALIQS: TBCDField;
    SQLTemplateREDUN3BASES: TBCDField;
    SQLTemplateREDUN3IMPOS: TBCDField;
    EvDBNumEdit29: TEvDBNumEdit;
    EvDBNumEdit30: TEvDBNumEdit;
    EvDBNumEdit31: TEvDBNumEdit;
    EvDBNumEdit32: TEvDBNumEdit;
    EvDBNumEdit33: TEvDBNumEdit;
    EvDBNumEdit34: TEvDBNumEdit;
    EvDBNumEdit35: TEvDBNumEdit;
    EvDBNumEdit36: TEvDBNumEdit;
    EvDBNumEdit37: TEvDBNumEdit;
    EvDBNumEdit38: TEvDBNumEdit;
    EvDBNumEdit39: TEvDBNumEdit;
    EvDBNumEdit40: TEvDBNumEdit;
    EvDBNumEdit41: TEvDBNumEdit;
    EvDBNumEdit42: TEvDBNumEdit;
    EvDBNumEdit43: TEvDBNumEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label16: TLabel;
    EvDBNumEdit44: TEvDBNumEdit;
    EvDBNumEdit45: TEvDBNumEdit;
    EvDBNumEdit46: TEvDBNumEdit;
    Label17: TLabel;
    Label18: TLabel;
    EvDBNumEdit47: TEvDBNumEdit;
    Label33: TLabel;
    EvDBNumEdit48: TEvDBNumEdit;
    SQLTemplateREDUN3CANCELICMS: TBCDField;
    SQLTemplateREDUN3CANCELISS: TBCDField;
    RecalculaSpedC420Impostos1: TMenuItem;
    zPesquisa: TZQuery;
    zPesquisa1: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure EvDBNumEdit2Exit(Sender: TObject);
    procedure EvDBNumEdit5Exit(Sender: TObject);
    procedure EvDBNumEdit8Exit(Sender: TObject);
    procedure EvDBNumEdit11Exit(Sender: TObject);
    procedure EvDBNumEdit14Exit(Sender: TObject);
    procedure EvDBNumEdit17Exit(Sender: TObject);
    procedure SQLRedNumerarioNewRecord(DataSet: TDataSet);
    procedure BTParcNovoClick(Sender: TObject);
    procedure BtParcGravarClick(Sender: TObject);
    procedure BtParcExcluirClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure EvDBNumEdit19Exit(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLRedNumerarioAfterOpen(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateTERMICODChange(Sender: TField);
    procedure MnEnviaMovtoAtualpTesourariaClick(Sender: TObject);
    procedure EvDBNumEdit22Enter(Sender: TObject);
    procedure EvDBNumEdit35Exit(Sender: TObject);
    procedure EvDBNumEdit34Exit(Sender: TObject);
    procedure EvDBNumEdit40Exit(Sender: TObject);
    procedure EvDBNumEdit41Exit(Sender: TObject);
    procedure RecalculaSpedC420Impostos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroReducaoZ: TFormCadastroReducaoZ;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroReducaoZ.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ReducaoZDia';
  SQLNumerario.Open;
  SQLTerminal.Open;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit2Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO1.Value := (SQLTemplateREDUN3ALIQ1.Value * SQLTemplateREDUN3BASE1.Value)/100;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit5Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO2.Value := (SQLTemplateREDUN3ALIQ2.Value * SQLTemplateREDUN3BASE2.Value)/100;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit8Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO3.Value := (SQLTemplateREDUN3ALIQ3.Value * SQLTemplateREDUN3BASE3.Value)/100;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit11Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO4.Value := (SQLTemplateREDUN3ALIQ4.Value * SQLTemplateREDUN3BASE4.Value)/100;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit14Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO5.Value := (SQLTemplateREDUN3ALIQ5.Value * SQLTemplateREDUN3BASE5.Value)/100;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit17Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO6.Value := (SQLTemplateREDUN3ALIQ6.Value * SQLTemplateREDUN3BASE6.Value)/100;
end;

procedure TFormCadastroReducaoZ.SQLRedNumerarioNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLRedNumerarioREDUA13ID.Value   := SQLTemplateREDUA13ID.Value;
  SQLRedNumerarioREFON3VLR.Value   := 0;
end;

procedure TFormCadastroReducaoZ.BTParcNovoClick(Sender: TObject);
begin
  inherited;
  try
    SQLTemplate.Post;
  except
    Application.ProcessMessages;
  end;
  if not SQLRedNumerario.Active then SQLRedNumerario.Open;
  SQLRedNumerario.Append;
  DBEdit9.SetFocus;
end;

procedure TFormCadastroReducaoZ.BtParcGravarClick(Sender: TObject);
begin
  inherited;
  if (SQLRedNumerario.State in dsEditModes) then
    begin
      try
        SQLRedNumerario.Post;
      except
        Application.ProcessMessages;
      end;
      SQLRedNumerario.Close;
      SQLRedNumerario.Open;
      BTParcNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroReducaoZ.BtParcExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta('Não','Tem certeza que deseja excluir o numerário lançado atualmente') then
    begin
      SQLRedNumerario.Delete;
      BTParcNovo.SetFocus;
    end;
end;

procedure TFormCadastroReducaoZ.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLRedNumerario.Close;
  SQLRedNumerario.Open;
  SQLTotal.Close;
  SQLTotal.Open;
end;

procedure TFormCadastroReducaoZ.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateREDUN3VENDABRUTA.Value := 0;
  SQLTemplateREDUN3VLRCANC.Value    := 0;
  SQLTemplateREDUN3VLRDESC.Value    := 0;
  SQLTemplateREDUN3VENDALIQ.Value   := 0;
  SQLTemplateREDUN3BASE1.Value      := 0;
  SQLTemplateREDUN3BASE2.Value      := 0;
  SQLTemplateREDUN3BASE3.Value      := 0;
  SQLTemplateREDUN3BASE4.Value      := 0;
  SQLTemplateREDUN3BASE5.Value      := 0;
  SQLTemplateREDUN3BASE6.Value      := 0;
  SQLTemplateREDUN3IMPO1.Value      := 0;
  SQLTemplateREDUN3IMPO2.Value      := 0;
  SQLTemplateREDUN3IMPO3.Value      := 0;
  SQLTemplateREDUN3IMPO4.Value      := 0;
  SQLTemplateREDUN3IMPO5.Value      := 0;
  SQLTemplateREDUN3IMPO6.Value      := 0;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit19Exit(Sender: TObject);
begin
  inherited;
  try
    SQLTemplateREDUN3VENDALIQ.Value := SQLTemplateREDUN3VENDABRUTA.Value -
                                       SQLTemplateREDUN3VLRCANC.Value    -
                                       SQLTemplateREDUN3VLRDESC.Value ;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroReducaoZ.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  try
    SQLTemplateVLRTOTBASEDIG.Value := SQLTemplateREDUN3BASE1.Value +
                                      SQLTemplateREDUN3BASE2.Value +
                                      SQLTemplateREDUN3BASE3.Value +
                                      SQLTemplateREDUN3BASE4.Value +
                                      SQLTemplateREDUN3BASE5.Value +
                                      SQLTemplateREDUN3BASE6.Value +
                                      SQLTemplateREDUN3BASE7.Value +
                                      SQLTemplateREDUN3BASE8.Value +
                                      SQLTemplateREDUN3BASEI.Value +
                                      SQLTemplateREDUN3BASEF.Value +
                                      SQLTemplateREDUN3BASEN.Value +
                                      SQLTemplateREDUN3BASES.Value ;
    SQLTemplateVLRTOTIMPDIG.Value  := SQLTemplateREDUN3IMPO1.Value +
                                      SQLTemplateREDUN3IMPO2.Value +
                                      SQLTemplateREDUN3IMPO3.Value +
                                      SQLTemplateREDUN3IMPO4.Value +
                                      SQLTemplateREDUN3IMPO5.Value +
                                      SQLTemplateREDUN3IMPO6.Value +
                                      SQLTemplateREDUN3IMPO7.Value +
                                      SQLTemplateREDUN3IMPO8.Value +
                                      SQLTemplateREDUN3IMPO8.Value +
                                      SQLTemplateREDUN3IMPOI.Value +
                                      SQLTemplateREDUN3IMPOF.Value +
                                      SQLTemplateREDUN3IMPON.Value +
                                      SQLTemplateREDUN3IMPOS.Value ;

  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroReducaoZ.SQLRedNumerarioAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateREDUA13ID.AsString <> '' then
    begin
      SQLTotal.Close;
      SQLTotal.MacroByName('MFiltro').Value := 'REDUA13ID = "'+SQLTemplateREDUA13ID.AsString+'"';
      SQLTotal.Open;
    end;
end;

procedure TFormCadastroReducaoZ.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  try
    SQLTemplateREDUITOTCUPOM.Value := SQLTemplateREDUICONTFINAL.Value - SQLTemplateREDUICONTINICIAL.Value;
  Except
    Application.ProcessMessages;
  end
end;

procedure TFormCadastroReducaoZ.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if ((SQLTemplateTERMICOD.AsString = '') or (SQLTemplateREDUDEMIS.AsString = '')) then
    begin
      ShowMessage('O campo Data ou Terminal não foram preenchidos! Operação Cancelada!');
      Abort;
      Exit;
    end
  else
    inherited;

  if SQLTemplateECFA13ID.Value = '' then
    SQLTemplateECFA13ID.Value := SQLLocate('TERMINAL','TERMICOD','ECFA13ID',ComboNumerario.Value);

  IF SQLTemplateVLRTOTBASEDIG.AsFloat <> SQLTemplateREDUN3VENDALIQ.AsFloat THEN
  Begin
      ShowMessage('Atenção...  Total das Bases de Cálculo deve ser igual ao Valor da Venda Liquida!');
      Abort;
      Exit;
  end;
end;

procedure TFormCadastroReducaoZ.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacroByName('MEmpresa').Value  := 'MOVIMENTOCAIXA.EMPRICOD = ' + EmpresaPadrao;
  SQLTotaNumerario.MacroByName('MData').Value     := 'MOVIMENTOCAIXA.MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', SQLTemplateREDUDEMIS.Value)+ '"';
  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value
  else
    SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  SQLTotaNumerario.Open;
  if not SQLTotaNumerario.IsEmpty then
    begin
      while not SQLTotaNumerario.eof do
        begin
          if not SQLRedNumerario.Active then SQLRedNumerario.Open;
          SQLRedNumerario.Append;
          SQLRedNumerarioREDUA13ID.Value := SQLTemplateREDUA13ID.Value;
          SQLRedNumerarioNUMEICOD.Value  := SQLTotaNumerarioNUMEICOD.Value;
          SQLRedNumerarioREFON3VLR.Value := SQLTotaNumerarioSALDO.Value;
          SQLRedNumerario.Post;
          SQLTotaNumerario.Next;
        end;
    end;
  SQLRedNumerario.Close;
  SQLRedNumerario.Open;
end;

procedure TFormCadastroReducaoZ.SQLTemplateTERMICODChange(Sender: TField);
begin
  inherited;
  if SQLTemplateTERMICOD.Value > 0 then
    SQLTemplateECFA13ID.Value := SQLLocate('TERMINAL','TERMICOD','ECFA13ID',SQLTemplateTERMICOD.AsString);
end;

procedure TFormCadastroReducaoZ.MnEnviaMovtoAtualpTesourariaClick(
  Sender: TObject);
var OpEnviaTesouraria : Integer;
begin
  inherited;
  if not SQLRedNumerario.IsEmpty then
    begin
      SQLRedNumerario.First;
      While not SQLRedNumerario.Eof Do
        begin
          try
            OpEnviaTesouraria := StrToInt(SQLLocate('NUMERARIO','NUMEICOD','OPTEICODENVTES',SQLRedNumerarioNUMEICOD.AsString));
          except
            OpEnviaTesouraria := 0;
          end;
          if OpEnviaTesouraria < 1 then
            begin
              ShowMessage('O numerario = '+SQLRedNumerarioNUMEICOD.AsString+' não possui nenhuma operação de enviu para tesouraria! Operação Cancelada, Revise as configurações!');
              exit;
            end;
          SQLRedNumerario.Next;
        end;
      SQLRedNumerario.First;
      While not SQLRedNumerario.Eof Do
        begin
          LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),
                                      SQLTemplateTERMICOD.Value,
                                      SQLRedNumerarioNUMEICOD.Value,
                                      StrToInt(SQLLocate('NUMERARIO','NUMEICOD','OPTEICODENVTES',SQLRedNumerarioNUMEICOD.AsString)),
                                      SQLRedNumerarioREFON3VLR.AsFloat,
                                      '',
                                      '',
                                      '',
                                      '',
                                      SQLTemplateREDUA13ID.Value,
                                      SQLTemplateREDUDEMIS.Value,
                                      'Red.Z = '+SQLTemplateREDUICONTFINAL.AsString,
                                      '');

          SQLRedNumerario.Next;
        end;
      SQLRedNumerario.First;
    end;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit22Enter(Sender: TObject);
begin
  inherited;
  If SQLTemplate.State in ([dsEdit, dsInsert]) then
    SQLTemplateREDUN3VLRCANC.Value := SQLTemplateREDUN3CANCELICMS.value + SQLTemplateREDUN3CANCELISS.Value;
end;

procedure TFormCadastroReducaoZ.EvDBNumEdit35Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO5.Value := (SQLTemplateREDUN3ALIQ5.Value * SQLTemplateREDUN3BASE5.Value)/100;

end;

procedure TFormCadastroReducaoZ.EvDBNumEdit34Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO6.Value := (SQLTemplateREDUN3ALIQ6.Value * SQLTemplateREDUN3BASE6.Value)/100;

end;

procedure TFormCadastroReducaoZ.EvDBNumEdit40Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO7.Value := (SQLTemplateREDUN3ALIQ7.Value * SQLTemplateREDUN3BASE7.Value)/100;

end;

procedure TFormCadastroReducaoZ.EvDBNumEdit41Exit(Sender: TObject);
begin
  inherited;
  SQLTemplateREDUN3IMPO8.Value := (SQLTemplateREDUN3ALIQ8.Value * SQLTemplateREDUN3BASE8.Value)/100;
end;

procedure TFormCadastroReducaoZ.RecalculaSpedC420Impostos1Click(Sender: TObject);
var PercDescTotalRateado, nVl_item,
    Base01, Base02, Base03, Base04, BaseII, BaseFF,
    Valor01, Valor02, Valor03, Valor04 : double;
    Cst_Icms : string;
begin
  inherited;
  SQLTemplate.AfterPost := nil;
  while not sqltemplate.Eof do
    begin
      Base01:=0; Base02:=0; Base03:=0; Base04:=0; BaseII:=0; BaseFF:=0;
      Valor01:=0; Valor02:=0; Valor03:=0; Valor04:=0;
      {filtra cupons do terminal e do dia conforme capa}
      LabelRegistros.Caption := 'Filtrando cupons do terminal e do dia...';
      LabelRegistros.Update;
      Application.ProcessMessages;
      zPesquisa.Close;
      zPesquisa.SQL.Text := 'SELECT * FROM CUPOM WHERE (CUPODEMIS = '''+FormatDateTime('mm/dd/yyyy',SQLTemplateREDUDEMIS.Value)+''') AND (TERMICOD = '+SQLTemplateTERMICOD.AsString+') AND (CUPOINRO>0) ORDER BY CUPOINRO ASC';
      zPesquisa.Open;
      if not zPesquisa.IsEmpty then
        begin
          while not zPesquisa.eof do
            begin
              PercDescTotalRateado := 0;
              if zPesquisa.fieldbyname('CUPON2DESC').Value > 0 then
                 PercDescTotalRateado := (zPesquisa.fieldbyname('CUPON2DESC').Value / (zPesquisa.fieldbyname('CUPON2TOTITENS').Value-zPesquisa.fieldbyname('CUPON2DESCITENS').Value) ) * 100;

              {filtra os itens do cupom para calcular os totais impostos por aliquota}
              LabelRegistros.Caption := 'Filtrando Produtos do cupom ID:'+zPesquisa.fieldbyname('CUPOA13ID').AsString;
              LabelRegistros.Update;
              Application.ProcessMessages;
              zPesquisa1.Close;
              zPesquisa1.SQL.Text := 'SELECT C.*, U.UNIDA5DESCR, P.PRODA60CODBAR, P.PRODIORIGEM, P.PRODISITTRIB, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, '+
                                         'P.PRODA1TIPO, I.ICMSN2ALIQUOTA, P.PRODCSERVICO FROM CUPOMITEM C ' +
                                         'LEFT JOIN PRODUTO P ON P.PRODICOD = C.PRODICOD ' +
                                         'LEFT JOIN UNIDADE U ON U.UNIDICOD = P.UNIDICOD ' +
                                         'LEFT JOIN ICMS I ON I.ICMSICOD = P.ICMSICOD ' +
                                         'WHERE CPITCSTATUS=''A'' and CUPOA13ID = ''' + zPesquisa.fieldbyname('CUPOA13ID').AsString + '''';
              zPesquisa1.open;
              if (not zPesquisa1.IsEmpty) and (zPesquisa.FieldByName('cupocstatus').AsString <> 'C') then
                begin
                  while not zPesquisa1.eof do
                    begin
                      LabelRegistros.Caption := 'Recalculando cupom ID'+zPesquisa.fieldbyname('CUPOA13ID').AsString+' Produto: '+zPesquisa1.fieldbyname('PRODICOD').AsString;
                      LabelRegistros.Update;
                      Application.ProcessMessages;

                      // Vlr Total Item
                      nVl_Item := (zPesquisa1.fieldbyname('CPITN3VLRUNIT').Value * zPesquisa1.fieldbyname('CPITN3QTD').Value)-zPesquisa1.fieldbyname('CPITN2DESC').Value;
                      if PercDescTotalRateado > 0 then
                        nVl_Item := nVl_Item - (nVl_Item * (PercDescTotalRateado/100));

                      Cst_Icms := zPesquisa1.fieldbyname('PRODIORIGEM').AsString+zPesquisa1.fieldbyname('PRODISITTRIB').AsString;
                      Cst_Icms := FormatFloat('###000',strtoint(Cst_Icms));

                      if (Cst_Icms='040')  then
                        BaseII := BaseII + nVl_Item;
                      if (Cst_Icms='060')  then
                        BaseFF := BaseFF + nVl_Item;
                      if (zPesquisa1.fieldbyname('coitn2icmsaliq').Value = 7) and (Cst_Icms='000') then
                        begin
                          Base01  := Base01 + nVl_Item;
                          valor01 := valor01 + (nVl_item * (zPesquisa1.fieldbyname('coitn2icmsaliq').Value/100));
                        end;
                      if (zPesquisa1.fieldbyname('coitn2icmsaliq').Value = 12) and (Cst_Icms='000') then
                        begin
                          Base02  := Base02 + nVl_Item;
                          valor02 := valor02 + (nVl_item * (zPesquisa1.fieldbyname('coitn2icmsaliq').Value/100));
                        end;
                      if (zPesquisa1.fieldbyname('coitn2icmsaliq').Value = 17) and (Cst_Icms='000') then
                        begin
                          Base03  := Base03 + nVl_Item;
                          valor03 := valor03 + (nVl_item * (zPesquisa1.fieldbyname('coitn2icmsaliq').Value/100));
                        end;
                      if (zPesquisa1.fieldbyname('coitn2icmsaliq').Value = 25) and (Cst_Icms='000') then
                        begin
                          Base04  := Base04 + nVl_Item;
                          valor04 := valor04 + (nVl_item * (zPesquisa1.fieldbyname('coitn2icmsaliq').Value/100));
                        end;

                      zPesquisa1.next;
                    end;
                end;
              {pula cupons vendidos do terminal e data filtrados}
              zPesquisa.next;
            end;
        end;

      {salva alteracoes}
      sqltemplate.edit;
      sqltemplateREDUN3BASE1.Value := base01;
      SQLTemplateREDUN3BASE2.Value := base02;
      SQLTemplateREDUN3BASE3.Value := base03;
      SQLTemplateREDUN3BASE4.Value := base04;
      SQLTemplateREDUN3BASEI.Value := BaseII;
      SQLTemplateREDUN3BASEF.Value := BaseFF;

      sqltemplateREDUN3IMPO1.Value := valor01;
      SQLTemplateREDUN3IMPO2.Value := valor02;
      SQLTemplateREDUN3IMPO3.Value := valor03;
      SQLTemplateREDUN3IMPO4.Value := valor04;

      SQLTemplateREDUN3VENDALIQ.Value   := SQLTemplateVLRTOTBASEDIG.Value;
      SQLTemplateREDUN3VENDABRUTA.value := SQLTemplateREDUN3VENDALIQ.Value + SQLTemplateREDUN3VLRCANC.Value + SQLTemplateREDUN3VLRDESC.Value;
      sqltemplate.post;

      {pular reducoes z}
      sqltemplate.Next;
    end;
  SQLTemplate.AfterPost := SQLTemplateAfterPost;
  ShowMessage('Correção Concluida');
end;

end.
