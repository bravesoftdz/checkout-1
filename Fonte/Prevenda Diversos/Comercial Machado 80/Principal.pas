unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, VarSys, ExtCtrls, ComCtrls, RDprint, Inifiles,
  ppDB, ppDBPipe, ppDBBDE, ppParameter, raCodMod, ppModule, daDataModule,
  ppStrtch, ppMemo, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppSubRpt, jpeg;

type
  TFormPrincipal = class(TForm)
    TblPreVendaItem: TTable;
    TblPreVendaItemCodigo: TIntegerField;
    TblPreVendaItemQuantidade: TFloatField;
    TblPreVendaItemValorUnitario: TFloatField;
    TblPreVendaItemValorTotal: TFloatField;
    TblPreVendaItemDesconto: TFloatField;
    TblPreVendaItemMarca: TStringField;
    TblPreVendaItemReferencia: TStringField;
    TblPreVendaCab: TTable;
    TblPreVendaCabTicketNumero: TStringField;
    TblPreVendaCabVendedor: TStringField;
    TblPreVendaCabPlano: TStringField;
    TblPreVendaCabCliente: TStringField;
    TblPreVendaCabFoneCliente: TStringField;
    TblPreVendaCabTotalNominal: TFloatField;
    TblPreVendaCabTaxaCrediario: TFloatField;
    TblPreVendaCabAcrescimo: TFloatField;
    TblPreVendaCabDesconto: TFloatField;
    TblPreVendaCabTotalGeral: TFloatField;
    TblPreVendaCabNroCreditCard: TStringField;
    TblPreVendaCabNumerarioPagto: TStringField;
    TblPreVendaCabMensagem: TStringField;
    TblPreVendaCabDataEntrega: TStringField;
    TblPreVendaCabTipoVenda: TStringField;
    TblPreVendaItemTroca: TStringField;
    TblPreVendaCabTroco: TFloatField;
    TblPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblPreVendaCabNomeClienteVenda: TStringField;
    TblPreVendaCabDocumentoClienteVenda: TStringField;
    TblPreVendaCabEnderecoClienteVenda: TStringField;
    TblPreVendaCabCidadeClienteVenda: TStringField;
    TblPreVendaCabOBSImpressaoCupom: TStringField;
    TblPreVendaCabFoneClienteVenda: TStringField;
    TblPreVendaCabUsuarioVendaSTR: TStringField;
    TblPreVendaCabPlacaVeiculo: TStringField;
    TblPreVendaCabVlrEntrada: TFloatField;
    TblPreVendaCabTERMICOD: TIntegerField;
    TblPreVendaCabPRVDICOD: TIntegerField;
    TblPreVendaCabBairroClienteVenda: TStringField;
    TblPreVendaCabKM: TStringField;
    TblPreVendaItemComplemento: TStringField;
    TblPreVendaCabClienteDependente: TStringField;
    TblPreVendaCabDataEmissao: TDateTimeField;
    TblPreVendaCabDisplayNumero: TIntegerField;
    TblPreVendaCabEmpresaEmit: TStringField;
    TblPreVendaCabEmpresaEmit_Ender: TStringField;
    TblPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblPreVendaCabEmpresaEmit_Fone: TStringField;
    Report: TppReport;
    ppParameterList1: TppParameterList;
    DSCab: TDataSource;
    DSItens: TDataSource;
    PipeCab: TppBDEPipeline;
    PipeItens: TppBDEPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppTitulo: TppLabel;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText21: TppDBText;
    ppLabel5: TppLabel;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    raCodeModule1: TraCodeModule;
    daDataModule2: TdaDataModule;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel40: TppLabel;
    ppDBText41: TppDBText;
    ppTitulo2: TppLabel;
    ppLabel42: TppLabel;
    ppDBText42: TppDBText;
    ppLabel46: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel47: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText49: TppDBText;
    ppShape13: TppShape;
    ppDBMemo3: TppDBMemo;
    ppShape14: TppShape;
    ppLabel55: TppLabel;
    ppDBText56: TppDBText;
    ppLabel56: TppLabel;
    ppDBText57: TppDBText;
    ppLabel57: TppLabel;
    ppDBText58: TppDBText;
    ppLabel58: TppLabel;
    ppDBText59: TppDBText;
    ppLabel59: TppLabel;
    ppDBText60: TppDBText;
    ppLabel60: TppLabel;
    ppDBText61: TppDBText;
    ppLabel61: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel62: TppLabel;
    ppDBText64: TppDBText;
    ppLabel63: TppLabel;
    ppDBText65: TppDBText;
    ppLine2: TppLine;
    TblPreVendaItemUnidade: TStringField;
    PipeItensppField11: TppField;
    ppLabel64: TppLabel;
    ppDBText5: TppDBText;
    ppImage1: TppImage;
    ppLabel8: TppLabel;
    TblPreVendaItemDescricao: TStringField;
    ppDBText8: TppDBText;
    ppLabel14: TppLabel;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText6: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel3: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppImage2: TppImage;
    ppLabel28: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation


{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var CodCliente, CodEmpresa, TerminalNome, DataPedido : String;
var Linha, vCol : integer;
var TotDesc, TotConfissao : Double;
var Inifile: TInifile;
    EmpresaNome, EmpresaEndereco, EmpresaFone, NroViasImpVenda, Saltar, Obs_Venda, MostraDisplay: String;
begin
  try
    IniFile := TIniFile.Create ('C:\Easy2Solutions\Gestao\Parceiro.INI');
    EmpresaNome     := IniFile.ReadString('IB_Software','EmpresaNome','');
    EmpresaEndereco := IniFile.ReadString('IB_Software','EmpresaEndereco','');
    EmpresaFone     := IniFile.ReadString('IB_Software','EmpresaFone','');
    NroViasImpVenda := IniFile.ReadString('IB_Software','NroViasImpVenda','');
    Saltar          := IniFile.ReadString('IB_Software','Saltar','');
    Obs_Venda       := IniFile.ReadString('IB_Software','Obs_Venda','');
    MostraDisplay   := IniFile.ReadString('IB_Software','GravarDisplaySequencial','');
    IniFile.Free;

    TblPreVendaCab.Open;
    TblPreVendaItem.Open;

    CodEmpresa   := IntToStr(StrToInt(Copy(TblPreVendaCabTicketNumero.asString,1,3)));
    CodCliente   := Copy(TblPreVendaCabCliente.asString,1,13);

    Report.Print;

    if NroViasImpVenda = '2' then
      if Application.MessageBox(PChar('Imprimir Segunda Via?'), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
        Report.Print;

    TblPreVendaCab.Close;
    TblPreVendaItem.Close;

    try TblPreVendaCab.DeleteTable; except application.ProcessMessages end;
    try TblPreVendaitem.DeleteTable; except application.ProcessMessages end;

    Application.Terminate;
  except
    Application.Terminate;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree ;
end;

procedure TFormPrincipal.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  if TblPreVendaCabPEDIDOORCAMENTO.Value = 'ORCAMENTO' then
    begin
      ppTitulo.Caption  := 'COMPROVANTE DE ORÇAMENTO';
      ppTitulo2.Caption := 'COMPROVANTE DE ORÇAMENTO';
    end;
  if TblPreVendaCabPEDIDOORCAMENTO.Value = 'PRE-VENDA' then
    begin
      ppTitulo.Caption  := 'COMPROVANTE DE PEDIDO';
      ppTitulo2.Caption := 'COMPROVANTE DE PEDIDO';
    end;
  if TblPreVendaCabPEDIDOORCAMENTO.Value = 'PEDIDO' then
    begin
      ppTitulo.Caption  := 'COMPROVANTE DE PEDIDO';
      ppTitulo2.Caption := 'COMPROVANTE DE PEDIDO';
    end;
end;

procedure TFormPrincipal.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if TblPreVendaCabPEDIDOORCAMENTO.Value = 'ORCAMENTO' then
    ppSubReport1.Visible := False
end;

end.
