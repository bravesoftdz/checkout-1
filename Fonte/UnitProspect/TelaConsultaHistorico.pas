unit TelaConsultaHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, dbcgrids, DB, DBTables, RxQuery, Buttons,
  jpeg, ExtCtrls, StdCtrls, Mask, ToolEdit, RxLookup, DBCtrls, Grids,
  DBGrids, ConerBtn, RXCtrls;

type
  TFormTelaConsultaHistorico = class(TFormTelaGeralTEMPLATE)
    dsSQLNegocio: TDataSource;
    pnClient: TPanel;
    Panel2: TPanel;
    SQLVendedor: TRxQuery;
    dsSQLVendedor: TDataSource;
    GroupBox1: TGroupBox;
    SQLCliente: TRxQuery;
    dsSQLCliente: TDataSource;
    GroupBox2: TGroupBox;
    DBGridLista: TDBGrid;
    SQLClientePRCLA13ID: TStringField;
    SQLClientePRCLA60RAZAOSOC: TStringField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDICOD: TIntegerField;
    SQLCidade: TRxQuery;
    dsSQLCidade: TDataSource;
    dblCliente: TRxDBLookupCombo;
    dblVendedor: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    dblCidadeNeg: TRxDBLookupCombo;
    Label1: TLabel;
    SQLMotivoFecha: TRxQuery;
    DSSQLMotivoFecha: TDataSource;
    DSSQLFormaEnvio: TDataSource;
    SQLFormaEnvio: TRxQuery;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SQLStatus: TRxQuery;
    dsSQLStatus: TDataSource;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLStatusPRNSICOD: TIntegerField;
    SQLStatusPRNSA60DESCR: TStringField;
    SQLStatusPRNSCPEDEMOTIVO: TStringField;
    SQLCidadePRNEA2UF: TStringField;
    SQLCidadePRNEA60CIDADE: TStringField;
    btPesquisa: TRxSpeedButton;
    SQLClientePRCLA60ENDCOM: TStringField;
    SQLClientePRCLA60CIDCOM: TStringField;
    SQLClientePRCLA60BAICOM: TStringField;
    SQLClientePRCLA2UFCOM: TStringField;
    SQLClientePRCLA8CEPCOM: TStringField;
    SQLNegocio: TRxQuery;
    SQLNegocioPRNEA13ID: TStringField;
    SQLNegocioPRNEICOD: TIntegerField;
    SQLNegocioVENDICOD: TIntegerField;
    SQLNegocioPRCLA13ID: TStringField;
    SQLNegocioPRNEDEMISSAO: TDateTimeField;
    SQLNegocioPRNEA100DESCRICAO: TStringField;
    SQLNegocioPRNEA60CONTATO: TStringField;
    SQLNegocioPRNEA15CONTATOFONE1: TStringField;
    SQLNegocioPRNEA15CONTATOFONE2: TStringField;
    SQLNegocioPRNEN2VALOR: TBCDField;
    SQLNegocioPRNEA254OBS: TStringField;
    SQLNegocioPRNEA15VALIDADE: TStringField;
    SQLNegocioPLRCICOD: TIntegerField;
    SQLNegocioPNFEICOD: TIntegerField;
    SQLNegocioPRNECTIPOFRETE: TStringField;
    SQLNegocioPRNEA254MOTFECHA: TStringField;
    SQLNegocioPRCLA60ENDCOM: TStringField;
    SQLNegocioPRCLA60CIDCOM: TStringField;
    SQLNegocioPRCLA2UFCOM: TStringField;
    SQLNegocioPRCLA254EMAIL: TStringField;
    SQLNegocioPRNEA60END: TStringField;
    SQLNegocioPRNEA60CIDADE: TStringField;
    SQLNegocioPRNEA2UF: TStringField;
    SQLNegocioPRNEA8CEP: TStringField;
    SQLNegocioPRNEA60EMAIL: TStringField;
    SQLNegocioPRNSICOD: TIntegerField;
    SQLNegocioPRNSA60DESCR: TStringField;
    SQLNegocioPRCLA60RAZAOSOC: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClientePRCLICOD: TIntegerField;
    SQLClientePRCLA15FONE1: TStringField;
    SQLClientePRCLA15FONE2: TStringField;
    SQLClientePRCLA15FAX: TStringField;
    SQLClientePRCLA254EMAIL: TStringField;
    SQLClientePRCLA60URL: TStringField;
    SQLClientePRCLA14CNPJ: TStringField;
    SQLClientePRCLA11CPF: TStringField;
    SQLClientePRCLA30RG: TStringField;
    SQLClientePRCLA30IE: TStringField;
    SQLClientePRCLCFISJUR: TStringField;
    SQLClientePRCLDULTCONT: TDateTimeField;
    SQLClientePRCLDPROXCONT: TDateTimeField;
    SQLClientePRCLDDTCADASTRO: TDateTimeField;
    SQLClientePRCLCSTATUS: TStringField;
    SQLClientePRCLCTURNO: TStringField;
    SQLClientePRCLA60USUACAD: TStringField;
    SQLClientePRCLA254OBS: TStringField;
    SQLClienteREGISTRO: TDateTimeField;
    SQLClientePENDENTE: TStringField;
    SQLHistoricoAnterior: TRxQuery;
    SQLHistoricoAnteriorPCHTDCADASTRO: TDateTimeField;
    SQLHistoricoAnteriorPCHTTHISTORICO: TMemoField;
    SQLHistoricoAnteriorPCHTA60CONTATO: TStringField;
    dsSQLHistoricoAnterior: TDataSource;
    pnContatoAnterior: TPanel;
    dbcHitoricoAnterior: TDBCtrlGrid;
    DBMemo2: TDBMemo;
    pnCabHistAnterior: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    pnDBGrid: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    SQLNegocioTipoFrete: TStringField;
    Label6: TLabel;
    De: TDateEdit;
    Label7: TLabel;
    Ate: TDateEdit;
    rboDataPesq: TRadioGroup;
    chkPeriodo: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure dblVendedorChange(Sender: TObject);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure AtualizaHistoricoAnterior;
    procedure SQLNegocioAfterScroll(DataSet: TDataSet);
    procedure SQLNegocioCalcFields(DataSet: TDataSet);
    procedure chkPeriodoClick(Sender: TObject);
    procedure rboDataPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaHistorico: TFormTelaConsultaHistorico;
  TagTabela : array [1..2] of string = ('PRCLHISTORICO','PROSPECTNEGOCIO');
implementation

uses DataModulo, FormResources, CadastroNegocioComposto;

{$R *.dfm}

procedure TFormTelaConsultaHistorico.AtualizaHistoricoAnterior;
begin
  inherited;
  if not SQLNegocioPRNEA13ID.IsNull then
     begin
        SQLHistoricoAnterior.Close;
        SQLHistoricoAnterior.MacroByName('MFiltro').AsString := '( PRCLA13ID = "' + SQLNegocioPRCLA13ID.AsString + '"' +
                                                                ' and PRNEA13ID = "' + SQLNegocioPRNEA13ID.AsString + '")';
        SQLHistoricoAnterior.Open;
     end;
end;

procedure TFormTelaConsultaHistorico.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLVendedor.Active    then SQLVendedor.Active     := True;
  if not SQLCliente.Active     then SQLCliente.Active      := True;
  if not SQLCidade.Active      then SQLCidade.Active       := True;
  if not SQLStatus.Active      then SQLStatus.Active       := True;
  if not SQLFormaEnvio.Active  then SQLFormaEnvio.Active   := True;
  De.Date := Now;
  Ate.Date := Now;

end;

procedure TFormTelaConsultaHistorico.btPesquisaClick(Sender: TObject);
Var SQL : String;
    I   : Integer;
begin
  inherited;
  SQL := '';

  if Self.Active then
     begin
        for I := 0 to ComponentCount - 1 do
           begin
              if Components[I].Tag > 0 then
                 begin
                    if Components[I].ClassName = 'TRxDBLookupCombo' then
                       begin
                          if ((Components[I] as TRxDBLookupCombo).KeyValue <> null) and (SQL <> '') then
                             SQL := SQL + ' and ' + TagTabela[Components[I].Tag] + '.' + (Components[I] as TRxDBLookupCombo).LookupField + ' = "' + (Components[I] as TRxDBLookupCombo).KeyValue + '"'
                          else
                             if ((Components[I] as TRxDBLookupCombo).KeyValue <> null) then
                                SQL := TagTabela[Components[I].Tag] + '.' + (Components[I] as TRxDBLookupCombo).LookupField + ' = "' + (Components[I] as TRxDBLookupCombo).KeyValue + '"'
                       end;
                 end;
           end;

        if chkPeriodo.Checked  then
           begin
             case rboDataPesq.ItemIndex of
                0: begin
                     if SQL = '' then
                        SQL := TagTabela[De.Tag] + '.PCHTDCADASTRO >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', De.Date) + '" as DATE) and '+ TagTabela[Ate.Tag] + '.PCHTDCADASTRO <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Ate.Date) + '" as DATE)'
                     else
                        SQL := SQL + ' and ' + TagTabela[De.Tag] + '.PCHTDCADASTRO >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', De.Date) + '" as DATE) and ' + TagTabela[Ate.Tag] + '.PCHTDCADASTRO <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Ate.Date) + '" as DATE)';
                   end;
                1: begin
                     if SQL = '' then
                        SQL := TagTabela[De.Tag] + '.PCHTDPROXCONT >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', De.Date) + '" as DATE) and '+ TagTabela[Ate.Tag] + '.PCHTDPROXCONT <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Ate.Date) + '" as DATE)'
                     else
                        SQL := SQL + ' and ' + TagTabela[De.Tag] + '.PCHTDPROXCONT >= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', De.Date) + '" as DATE) and ' + TagTabela[Ate.Tag] + '.PCHTDPROXCONT <= Cast("' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Ate.Date) + '" as DATE)';
                   end;
             end;
           end;

      //Abre consulta
        SQLNegocio.Close;
        if SQL <> '' then
           SQLNegocio.MacroByName('MFiltro').AsString := SQL
        else
           SQLNegocio.MacroByName('MFiltro').AsString := '0=0';
        ShowMessage(SQLNegocio.RealSQL.Text);
        SQLNegocio.Open;
     end;

end;

procedure TFormTelaConsultaHistorico.dblVendedorChange(Sender: TObject);
begin
  inherited;
  btPesquisa.Click;
end;

procedure TFormTelaConsultaHistorico.DBGridListaDblClick(Sender: TObject);
begin
  inherited;
  if SQLNegocioPRNEA13ID.AsString <> '' then
     begin
       DM.TipoHistorico := SQLNegocioPRNEA13ID.AsString;
       CriaFormulario(TFormCadastroNegocioComposto,'FormCadastroNegocioComposto',False,False,'Resultado da Pesquisa');
     end;
end;

procedure TFormTelaConsultaHistorico.SQLNegocioAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  AtualizaHistoricoAnterior;
end;

procedure TFormTelaConsultaHistorico.SQLNegocioCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLNegocioPRNECTIPOFRETE.AsString = 'C' then
     SQLNegocioTipoFrete.AsString := 'CIF - Pago';
  if SQLNegocioPRNECTIPOFRETE.AsString = 'F' then
     SQLNegocioTipoFrete.AsString := 'FOB - Pagar';
end;

procedure TFormTelaConsultaHistorico.chkPeriodoClick(Sender: TObject);
begin
  inherited;
  btPesquisa.Click;
end;

procedure TFormTelaConsultaHistorico.rboDataPesqClick(Sender: TObject);
begin
  inherited;
  btPesquisa.Click;
end;

end.
