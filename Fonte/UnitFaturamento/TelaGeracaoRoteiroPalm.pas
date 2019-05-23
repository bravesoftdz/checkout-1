unit TelaGeracaoRoteiroPalm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Grids,
  DBGrids, DB, DBTables, RxQuery, RxLookup, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGeracaoRoteiro = class(TFormTelaGeralTEMPLATE)
    BtnSelecionarDoc: TSpeedButton;
    BtnGeraNotas: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    ComboVendedor: TRxDBLookupCombo;
    RadioOrdem: TRadioGroup;
    Label2: TLabel;
    ComboRota: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSSQLVendedor: TDataSource;
    SQLRota: TRxQuery;
    DSSQLRota: TDataSource;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    EditNroSemana: TEdit;
    Label3: TLabel;
    EditDiaSemana: TEdit;
    Label4: TLabel;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    Label5: TLabel;
    DSTblCliente: TDataSource;
    TblCliente: TTable;
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
    SQLClienteCLIEA30LOCALIMOV1: TStringField;
    SQLClienteCLIEA30LOCALIMOV2: TStringField;
    SQLClienteCLIEA30MODVEICULO: TStringField;
    SQLClienteCLIEA30TIPOIMOV1: TStringField;
    SQLClienteCLIEA30TIPOIMOV2: TStringField;
    SQLClienteCLIEA4ANOVEICULO: TStringField;
    SQLClienteCLIEA60IMOB: TStringField;
    SQLClienteCLIEA8PLACAVEICULO: TStringField;
    SQLClienteCLIECSTATUSIMOV1: TStringField;
    SQLClienteCLIECSTATUSIMOV2: TStringField;
    SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteCLIEN2VLRALUGUEL: TBCDField;
    SQLClienteROTAICOD: TIntegerField;
    SQLRoteiro: TRxQuery;
    SQLRoteiroROTEICOD: TIntegerField;
    SQLRoteiroPALMICOD: TIntegerField;
    SQLRoteiroROTAICOD: TIntegerField;
    SQLRoteiroVENDICOD: TIntegerField;
    SQLRoteiroCLIEA13ID: TStringField;
    SQLRoteiroROTEINROSEMANA: TIntegerField;
    SQLRoteiroROTEINRODIASEMANA: TIntegerField;
    SQLRoteiroROTEISEQDIARIA: TIntegerField;
    SQLRoteiroREGISTRO: TDateTimeField;
    SQLRoteiroPENDENTE: TStringField;
    TblClientePALMICOD: TIntegerField;
    TblClienteROTAICOD: TIntegerField;
    TblClienteVENDICOD: TIntegerField;
    TblClienteCLIEA13ID: TStringField;
    TblClienteROTEINROSEMANA: TIntegerField;
    TblClienteROTEINRODIASEMANA: TIntegerField;
    TblClienteROTEISEQDIARIA: TIntegerField;
    Label7: TLabel;
    ComboPalm: TRxDBLookupCombo;
    SQLPalm: TRxQuery;
    DSSQLPalm: TDataSource;
    SQLPalmPALMICOD: TIntegerField;
    SQLPalmPALMA60DESCR: TStringField;
    DBGridLista: TDBGrid;
    Progress: TProgressBar;
    TblClienteNomeCliente: TStringField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnGeraNotasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeracaoRoteiro: TFormTelaGeracaoRoteiro;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaGeracaoRoteiro.BtnSelecionarDocClick(Sender: TObject);
var i : integer;
begin
  inherited;
  if ComboPalm.Value = '' then
    begin
      ShowMessage('É necessário informar um Palm');
      abort;
    end;
  SQLCliente.Close;
  if ComboEmpresa.Value <> '' then
    SQLCliente.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.KeyValue
  else
    SQLCliente.MacroByName('MEmpresa').Value := '0=0';

  if ComboRota.Value <> '' then
    SQLCliente.MacroByName('MRota').Value  := 'RotaICOD = ' + ComboRota.KeyValue
  else
    SQLCliente.MacroByName('MRota').Value  := '0=0';

  if ComboVendedor.Value <> '' then
    SQLCliente.MacroByName('MVendedor').Value  := 'VENDICOD = '+ ComboVendedor.KeyValue
  else
    SQLCliente.MacroByName('MVendedor').Value  := '0=0';

  Case RadioOrdem.ItemIndex of
    0 : SQLCliente.MacroByName('MOrdem').Value  := 'ROTAICOD, CLIEA10CODANT';
    1 : SQLCliente.MacroByName('MOrdem').Value  := 'VENDICOD';
    2 : SQLCliente.MacroByName('MOrdem').Value  := 'CLIEA13ID';
  End;

  SQLCliente.Open;
  TblCliente.Close;
  try
    TblCliente.DeleteTable;
    TblCliente.CreateTable;
  except
    TblCliente.CreateTable;
  end;
  TblCliente.Open;
  TblCliente.DisableControls;
  Progress.Min := 0;
  Progress.Max := SQLCliente.RecordCount;
  Progress.Position := 0;
  SQLCliente.First;
  While not SQLCliente.Eof Do
    Begin
      TblCliente.Append;
      TblClientePALMICOD.AsString          := ComboPalm.Value;
      TblClienteROTAICOD.AsString          := SQLClienteROTAICOD.AsString;
      TblClienteVENDICOD.AsString          := SQLClienteVENDICOD.AsString;
      TblClienteCLIEA13ID.Value            := SQLClienteCLIEA13ID.Value;
      TblClienteNomeCliente.Value          := SQLClienteCLIEA60RAZAOSOC.Value;
      TblClienteROTEISEQDIARIA.AsString    := SQLClienteCLIEA10CODANT.Value;
      TblClienteROTEINROSEMANA.AsString    := EditNroSemana.text;
      TblClienteROTEINRODIASEMANA.AsString := EditDiaSemana.text;
      TblCliente.Post;
      SQLCliente.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
    End;
  Progress.Position := 0;
  Progress.Update;
  TblCliente.First;
  TblCliente.EnableControls;
  SQLCliente.Close;
end;

procedure TFormTelaGeracaoRoteiro.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
  SQLPalm.Open;
  SQLRota.Open;
  SQLVendedor.Open;
end;

procedure TFormTelaGeracaoRoteiro.BtnGeraNotasClick(Sender: TObject);
begin
  inherited;
  if not TblCliente.IsEmpty then
    begin
      SQLRoteiro.Open;
      TblCliente.First;
      while not TblCliente.eof do
        begin
          SQLRoteiro.Append;
          SQLRoteiro.FieldByName('ROTEICOD').AsInteger := DM.ProximoCodigoUnico('ROTEIRO',SQLRoteiro,nil,0);
          SQLRoteiroPALMICOD.Value          := TblClientePALMICOD.Value;
          SQLRoteiroROTAICOD.Value          := TblClienteROTAICOD.Value;
          SQLRoteiroVENDICOD.Value          := TblClienteVENDICOD.Value;
          SQLRoteiroROTEINROSEMANA.Value    := TblClienteROTEINROSEMANA.Value;
          SQLRoteiroROTEINRODIASEMANA.Value := TblClienteROTEINRODIASEMANA.Value;
          SQLRoteiroCLIEA13ID.Value         := TblClienteCLIEA13ID.Value;
          SQLRoteiroROTEISEQDIARIA.Value    := TblClienteROTEISEQDIARIA.Value;
          SQLRoteiroPENDENTE.Value          := 'S';
          SQLRoteiroREGISTRO.Value          := now;
          SQLRoteiro.Post;
          TblCliente.Next;
        end;
    end
  else
    ShowMessage('Não existem roteiros a serem criados, revise os filtros!');
end;

end.
