unit CadastroVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, RxLookup, ToolEdit, RXDBCtrl,
  RxDBComb, DB, DBTables, DBActns, ActnList, ImgList, RxQuery, Menus,
  StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons,
  jpeg;

type
  TFormCadastroVisita = class(TFormCadastroTEMPLATE)
    SQLTemplateVISIICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateVISIDDATAHORAINI: TDateTimeField;
    SQLTemplateVISIDDATAHORAFIM: TDateTimeField;
    SQLTemplateVISICSTATUS: TStringField;
    SQLTemplateMTNFICOD: TIntegerField;
    SQLTemplateVISIA100COMPLMOTIVO: TStringField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    Label4: TLabel;
    Combostatus: TRxDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    ComboRota: TRxDBLookupCombo;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    ComboVendedor: TRxDBLookupCombo;
    Label15: TLabel;
    DBEdit13: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    ComboMotNFechamento: TRxDBLookupCombo;
    DBEdit17: TDBEdit;
    DBEditCGCCPF: TDBEdit;
    DBEdit19: TDBEdit;
    Label6: TLabel;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
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
    SQLClienteCLIEN2VLRALUGUEL: TBCDField;
    SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    SQLClienteROTAICOD: TIntegerField;
    SQLTemplateClienteLookUp: TStringField;
    SQLTemplateClienteCGC: TStringField;
    SQLTemplateClienteCPF: TStringField;
    SQLTemplateClienteIE: TStringField;
    SQLTemplateClienteRG: TStringField;
    SQLTemplateClienteEnderecoLookUp: TStringField;
    SQLTemplateClienteEstadoLookUp: TStringField;
    SQLTemplateClienteBairroLookUp: TStringField;
    SQLTemplateClienteCEPLookUp: TStringField;
    SQLTemplateClienteCidadeLookUp: TStringField;
    SQLTemplateClienteFoneLookUp: TStringField;
    SQLTemplateClienteCodAntigo: TStringField;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDN2COMISV: TBCDField;
    SQLVendedorVENDN2COMISP: TBCDField;
    SQLVendedorVENDCTIPCOMIS: TStringField;
    SQLVendedorVENDCCOMISACRESC: TStringField;
    SQLVendedorPENDENTE: TStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA5FISJURID: TStringField;
    SQLVendedorVENDA14CGC: TStringField;
    SQLVendedorVENDA20IE: TStringField;
    SQLVendedorVENDA11CPF: TStringField;
    SQLVendedorVENDA10RG: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA15FONE2: TStringField;
    SQLVendedorVENDA15FAX: TStringField;
    SQLVendedorVENDA60END: TStringField;
    SQLVendedorVENDA60BAI: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA8CEP: TStringField;
    SQLVendedorBANCA5COD: TStringField;
    SQLVendedorVENDA5AGENCIA: TStringField;
    SQLVendedorVENDA10CONTA: TStringField;
    SQLVendedorVENDA60TITULAR: TStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TStringField;
    SQLVendedorVENDA30CORE: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TBCDField;
    SQLVendedorVENDN2PERCIRRF: TBCDField;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    SQLMotNfech: TRxQuery;
    DSSQLMotNfech: TDataSource;
    SQLMotNfechMTNFICOD: TIntegerField;
    SQLMotNfechMTNFA60DESCR: TStringField;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    RadioConsultaCodigo: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVisita: TFormCadastroVisita;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormCadastroVisita.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'VISITAS';
  SQLRota.Open;
  SQLVendedor.Open;
  SQLMotNfech.Open;
  SQLCliente.Open;
end;

procedure TFormCadastroVisita.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  try
    If SQLTemplateCLIEA13ID.AsVariant <> null then
      Begin
        If RadioConsultaCodigo.ItemIndex = 0 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
              begin
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;

                SQLTemplate.FieldByName('ClienteLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('ClienteCidadeLookUp').AsVariant   := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCGC').AsVariant            := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
              end;
          End
        Else
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA10CODANT'],[SQLTemplateCLIEA13ID.asString],1) Then
              begin
                SQLTemplate.FieldByName('CLIEA13ID').AsVariant   := DM.SQLTemplate.FindField('CLIEA13ID').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;

                SQLTemplate.FieldByName('ClienteLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('ClienteCidadeLookUp').AsVariant   := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
                SQLTemplate.FieldByName('ClienteCGC').AsVariant            := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
              end;
          End;
      End
    Else
      SQLTemplate.FieldByName('ClienteLookUp').AsVariant := NULL;
  except
    Application.ProcessMessages;
  end;
end;

end.
