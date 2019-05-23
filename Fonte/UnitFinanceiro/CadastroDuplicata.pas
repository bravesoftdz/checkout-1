unit CadastroDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, VarSys, ToolEdit, RXDBCtrl,
  ppStrtch, ppRichTx, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppBarCod, Serial,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroDuplicata = class(TFormCadastroTEMPLATE)
    SQLTemplateDUPLA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateDUPLICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateDUPLDEMIS: TDateTimeField;
    SQLTemplateDUPLN3VLR: TBCDField;
    SQLTemplateDUPLDVENC: TDateTimeField;
    SQLTemplateDUPLA254DOCS: TStringField;
    SQLTemplateDUPLA254HIST: TStringField;
    SQLTemplateDUPLA60LOCALPAGTO: TStringField;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboCliente: TRxDBLookupCombo;
    Label2: TLabel;
    DSSQLCliente: TDataSource;
    ButtonCliente: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    MemoHist: TDBMemo;
    Label7: TLabel;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    PipeCabDuplicata: TppBDEPipeline;
    ppFaturaUnificada: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDBText10: TppDBText;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel1: TppLabel;
    ppLogo: TppImage;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine6: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    Pipe: TppBDEPipeline;
    PipeppField1: TppField;
    PipeppField2: TppField;
    PipeppField3: TppField;
    PipeppField4: TppField;
    PipeppField5: TppField;
    PipeppField6: TppField;
    PipeppField7: TppField;
    PipeppField8: TppField;
    PipeppField9: TppField;
    PipeppField10: TppField;
    PipeppField11: TppField;
    PipeppField12: TppField;
    PipeppField13: TppField;
    PipeppField14: TppField;
    PipeppField15: TppField;
    PipeppField16: TppField;
    PipeppField17: TppField;
    PipeppField18: TppField;
    PipeppField19: TppField;
    PipeppField20: TppField;
    PipeppField21: TppField;
    PipeppField22: TppField;
    PipeppField23: TppField;
    PipeppField24: TppField;
    PipeppField25: TppField;
    PipeppField26: TppField;
    PipeppField27: TppField;
    PipeppField28: TppField;
    PipeppField29: TppField;
    PipeppField30: TppField;
    PipeppField31: TppField;
    PipeppField32: TppField;
    PipeppField33: TppField;
    PipeppField34: TppField;
    PipeppField35: TppField;
    PipeppField36: TppField;
    PipeppField37: TppField;
    PipeppField38: TppField;
    PipeEmpresa: TppBDEPipeline;
    PipeEmpresappField1: TppField;
    PipeEmpresappField2: TppField;
    PipeEmpresappField3: TppField;
    PipeEmpresappField4: TppField;
    PipeEmpresappField5: TppField;
    PipeEmpresappField6: TppField;
    PipeEmpresappField7: TppField;
    PipeEmpresappField8: TppField;
    PipeEmpresappField9: TppField;
    PipeEmpresappField10: TppField;
    PipeEmpresappField11: TppField;
    PipeEmpresappField12: TppField;
    PipeEmpresappField13: TppField;
    PipeEmpresappField14: TppField;
    PipeEmpresappField15: TppField;
    PipeEmpresappField16: TppField;
    PipeEmpresappField17: TppField;
    PipeEmpresappField18: TppField;
    PipeEmpresappField19: TppField;
    PipeEmpresappField20: TppField;
    PipeEmpresappField21: TppField;
    PipeEmpresappField22: TppField;
    PipeEmpresappField23: TppField;
    dsSQLEmpresa: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TBCDField;
    SQLContasReceberVALORTOTAL: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TBCDField;
    SQLContasReceberCTRCN2TOTREC: TBCDField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCLIEA14CGC: TStringField;
    SQLContasReceberCLIEA20IE: TStringField;
    SQLContasReceberCLIEA11CPF: TStringField;
    SQLContasReceberCLIEA10RG: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCLIEA60NOMEFANT: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    SQLContasReceberCLIEA15FAX: TStringField;
    SQLContasReceberCLIEA60ENDRES: TStringField;
    SQLContasReceberCLIEA60BAIRES: TStringField;
    SQLContasReceberCLIEA60CIDRES: TStringField;
    SQLContasReceberCLIEA2UFRES: TStringField;
    SQLContasReceberCLIEA8CEPRES: TStringField;
    SQLContasReceberCLIEA60ENDCOB: TStringField;
    SQLContasReceberCLIEA60BAICOB: TStringField;
    SQLContasReceberCLIEA60CIDCOB: TStringField;
    SQLContasReceberCLIEA2UFCOB: TStringField;
    SQLContasReceberCLIEA8CEPCOB: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    DSSQLContasReceber: TDataSource;
    ImpressoReimpressodeFaturaUnificada1: TMenuItem;
    ppPropaganda: TppRichText;
    ppDBBarCode1: TppDBBarCode;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClienteClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImpressoReimpressodeFaturaUnificada1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDuplicata: TFormCadastroDuplicata;

implementation

uses FormResources, CadastroCliente;

{$R *.dfm}

procedure TFormCadastroDuplicata.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'DUPLICATA';
end;

procedure TFormCadastroDuplicata.ButtonClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,Caption);
end;

procedure TFormCadastroDuplicata.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
  if Key = VK_F2 then
    ButtonCliente.Click;
end;

procedure TFormCadastroDuplicata.ImpressoReimpressodeFaturaUnificada1Click(
  Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close;
  SQLContasReceber.MacroByName('MNota').Value := 'DUPLA13ID = '+ '"' + SQLTemplateDUPLA13ID.AsString + '"';
  SQLContasReceber.Open;
  ppFaturaUnificada.Print;
  SQLContasReceber.Close;
end;

procedure TFormCadastroDuplicata.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppLogo.Picture.LoadFromFile('Bmp\Logo PDV.jpg');
  ppPropaganda.LoadFromFile('Boleto Propaganda.txt');
end;

end.
