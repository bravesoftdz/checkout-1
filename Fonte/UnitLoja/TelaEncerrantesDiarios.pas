unit TelaEncerrantesDiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, RxQuery, Mask, EDBNum, Grids, DBGrids, RXDBCtrl, RxLookup,
  ToolEdit, Placemnt;

type
  TFormTelaEncerranteDiario = class(TFormTelaGeralTEMPLATE)
    PainelBomba: TPanel;
    DBGrigEncerrantesDia: TRxDBGrid;
    Panel1: TPanel;
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
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    SQLPrestaContas: TRxQuery;
    SQLPrestaContasEMPRICOD: TIntegerField;
    SQLPrestaContasPRECODATA: TDateTimeField;
    SQLPrestaContasUSUAICOD: TIntegerField;
    SQLPrestaContasVLRMOEDA: TBCDField;
    SQLPrestaContasVLRCHPRAZO: TBCDField;
    SQLPrestaContasVLRNTPRAZO: TBCDField;
    SQLPrestaContasVLRNTAVULSO: TBCDField;
    SQLPrestaContasVLRCARCREDITO: TBCDField;
    SQLPrestaContasVLRVALES: TBCDField;
    SQLPrestaContasVLRORFRE: TBCDField;
    SQLPrestaContasVLROUTSAIDA: TBCDField;
    SQLPrestaContasREGISTRO: TDateTimeField;
    SQLPrestaContasPENDENTE: TStringField;
    SQLPrestaContasVLRCHVISTA: TBCDField;
    DSPrestaContas: TDataSource;
    dsEncerrante: TDataSource;
    SQLEncerranteDiario: TRxQuery;
    SQLEncerranteDiarioENDIA13ID: TStringField;
    SQLEncerranteDiarioEMPRICOD: TIntegerField;
    SQLEncerranteDiarioENDIICOD: TIntegerField;
    SQLEncerranteDiarioENDIDDATA: TDateTimeField;
    SQLEncerranteDiarioUSUAICOD: TIntegerField;
    SQLEncerranteDiarioBOMBICOD: TIntegerField;
    SQLEncerranteDiarioPRODICOD: TIntegerField;
    SQLEncerranteDiarioBombaDescricao: TStringField;
    SQLEncerranteDiarioResultado: TFloatField;
    SQLEncerranteDiarioENDIN2ENCERINI: TBCDField;
    SQLEncerranteDiarioENDIN2ENCERFIM: TBCDField;
    SQLEncerranteDiarioENDIN2AFERICAO: TBCDField;
    SQLBombaAux: TRxQuery;
    SQLBombaAuxEMPRICOD: TIntegerField;
    SQLBombaAuxBOMBICOD: TIntegerField;
    SQLBombaAuxTANQICOD: TIntegerField;
    SQLBombaAuxBOMBA30DESCR: TStringField;
    SQLBomba: TRxQuery;
    SQLBombaBOMBICOD: TIntegerField;
    SQLBombaBOMBA30DESCR: TStringField;
    SQLItensVendidos: TRxQuery;
    SQLItensVendidosPRODICOD: TIntegerField;
    SQLItensVendidosQTDE: TFloatField;
    SQLItensVendidosVLRTOTALITEM: TFloatField;
    SQLUltimoEncer: TRxQuery;
    SQLUltimoEncerENDIA13ID: TStringField;
    SQLUltimoEncerEMPRICOD: TIntegerField;
    SQLUltimoEncerENDIICOD: TIntegerField;
    SQLUltimoEncerENDIDDATA: TDateTimeField;
    SQLUltimoEncerUSUAICOD: TIntegerField;
    SQLUltimoEncerBOMBICOD: TIntegerField;
    SQLUltimoEncerPRODICOD: TIntegerField;
    SQLUltimoEncerENDIN2ENCERINI: TBCDField;
    SQLUltimoEncerENDIN2ENCERFIM: TBCDField;
    SQLUltimoEncerENDIN2AFERICAO: TBCDField;
    Data: TDateEdit;
    Label11: TLabel;
    ComboOperador: TRxDBLookupCombo;
    Label12: TLabel;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    BtnVisualizar: TSpeedButton;
    FormStorage1: TFormStorage;
    procedure SQLPrestaContasBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    Function RetornaVendaBomba(Bomba : Integer) : Real;
    procedure SQLEncerranteDiarioCalcFields(DataSet: TDataSet);
    procedure SQLEncerranteDiarioBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaEncerranteDiario: TFormTelaEncerranteDiario;

implementation

uses DataModulo;

{$R *.dfm}

Function TFormTelaEncerranteDiario.RetornaVendaBomba(Bomba : Integer) : Real;
begin
  SQLItensVendidos.Close;
  SQLItensVendidos.MacroByName('MDATA').Value := 'CUPODEMIS = "' + FormatDateTime('mm/dd/yyyy',data.Date) + '"';
  SQLItensVendidos.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
  SQLItensVendidos.MacroByName('MBomba').Value := 'BOMBICOD = ' + InttoStr(Bomba);
  SQLItensVendidos.Open;
  result := 0;
  while not SQLItensVendidos.Eof do
  begin
    result := result + SQLItensVendidosQTDE.Value;
    SQLItensVendidos.Next;
  end;
  SQLItensVendidos.Close;
end;

procedure TFormTelaEncerranteDiario.SQLPrestaContasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLPrestaContasEMPRICOD.Value     := DM.SQLTerminalAtivoEMPRICOD.Value;
  SQLPrestaContasPRECODATA.Asstring := FormatDateTime('dd/mm/yyyy',Data.Date);
  SQLPrestaContasUSUAICOD.AsString  := ComboOperador.Value;
  SQLPrestaContasPENDENTE.AsString  := 'S';
  SQLPrestaContasREGISTRO.Value     := Now;
end;

procedure TFormTelaEncerranteDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dsPrestaContas.State in DSEditModes then
    SQLPrestaContas.Post;
  if dsEncerrante.State in DSEditModes then
    SQLEncerranteDiario.Post;

end;

procedure TFormTelaEncerranteDiario.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperador.Open;
end;

procedure TFormTelaEncerranteDiario.BtnVisualizarClick(Sender: TObject);
  function RetornaUltimoEncer(Bomba : Integer) : Real;
    begin
      SQLUltimoEncer.Close;
      SQLUltimoEncer.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
      SQLUltimoEncer.MacroByName('MBomba').Value := 'BOMBICOD = ' + InttoStr(Bomba);
      SQLUltimoEncer.Open;
      SQLUltimoEncer.Last;
      result := SQLUltimoEncerENDIN2ENCERFIM.Value;
      SQLUltimoEncer.Close;
    end;
begin
  inherited;
  if ComboOperador.Value = '' then
    begin
      ShowMessage('É obrigatorio informar o Operador!');
      Abort;
    end;
  SQLEncerranteDiario.Close;
  SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
  SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',Data.Date) + '"';
  SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' + ComboOperador.Value;
  SQLEncerranteDiario.Open;
  if SQLEncerranteDiario.IsEmpty then
  begin
    SQLBombaAux.Close;
    SQLBombaAux.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
    SQLBombaAux.Open;
    if not SQLBombaAux.IsEmpty then
    begin
      SQLBombaAux.First;
      while not SQLBombaAux.eof do
      begin
        SQLEncerranteDiario.Append;
        SQLEncerranteDiarioEMPRICOD.Value        := SQLBombaAuxEMPRICOD.Value;
        SQLEncerranteDiarioUSUAICOD.Value        := ComboOperador.KeyValue;
        SQLEncerranteDiarioENDIDDATA.AsString    := FormatDateTime('dd/mm/yyyy',data.date);
        SQLEncerranteDiarioBOMBICOD.Value        := SQLBombaAuxBOMBICOD.Value;
        SQLEncerranteDiarioBombaDescricao.Value  := SQLBombaAuxBOMBA30DESCR.Value;
        SQLEncerranteDiarioENDIN2ENCERINI.Value  := RetornaUltimoEncer(SQLBombaAuxBOMBICOD.Value);
        // SQLEncerranteDiarioENDIN2ENCERFIM.Value  := RetornaVendaBomba(SQLBombaAuxBOMBICOD.Value) + SQLEncerranteDiarioENDIN2ENCERINI.Value;
        SQLEncerranteDiarioENDIN2AFERICAO.Value  := 0;
        SQLEncerranteDiario.Post;
        SQLBombaAux.Next;
      end;
      SQLEncerranteDiario.Close;
      SQLEncerranteDiario.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
      SQLEncerranteDiario.MacroByName('MData').Value    := 'ENDIDDATA = "' + FormatDateTime('mm/dd/yyyy',data.Date) + '"';
      SQLEncerranteDiario.MacroByName('MUsuario').Value := 'USUAICOD  = ' +ComboOperador.Value;
      SQLEncerranteDiario.Open;
    end;
  end;
  SQLPrestaContas.Close;
  SQLPrestaContas.MacroByName('MEmpresa').Value := 'EMPRICOD  = ' + dm.SQLTerminalAtivoEMPRICOD.AsString;
  SQLPrestaContas.MacroByName('MData').Value    := 'PRECODATA = "' + FormatDateTime('mm/dd/yyyy',data.Date) + '"';
  SQLPrestaContas.MacroByName('MUsuario').Value := 'USUAICOD  = ' + ComboOperador.Value;
  SQLPrestaContas.Open;
end;

procedure TFormTelaEncerranteDiario.SQLEncerranteDiarioCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLEncerranteDiarioResultado.Value :=  SQLEncerranteDiarioENDIN2ENCERFIM.Value -
                                         SQLEncerranteDiarioENDIN2ENCERINI.Value -
                                         SQLEncerranteDiarioENDIN2AFERICAO.Value;
end;

procedure TFormTelaEncerranteDiario.SQLEncerranteDiarioBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Case DataSet.State Of
    DsInsert: dm.CodigoAutomatico('ENCERRANTEDIARIO', dsEncerrante, DataSet, 2, 0);
  end ;
end;

end.
