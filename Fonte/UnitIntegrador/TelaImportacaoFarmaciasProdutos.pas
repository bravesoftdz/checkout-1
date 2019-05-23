unit TelaImportacaoFarmaciasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, RxQuery, RxLookup, Gauges, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaImportacaoFarmaciaProduto = class(TFormTelaGeralTEMPLATE)
    Bevel1: TBevel;
    Label8: TLabel;
    Label3: TLabel;
    EditHoraInicio: TEdit;
    Label2: TLabel;
    EditHoraTermino: TEdit;
    GroupBox1: TGroupBox;
    CKPerfumaria: TCheckBox;
    CKFarmacia: TCheckBox;
    BtExecutar: TSpeedButton;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODA255DESCRTEC: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3PERCIPI: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TBCDField;
    SQLProdutoPRODN2COMISPRAZO: TBCDField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TBCDField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPRODN3DOLARCUSTO: TBCDField;
    SQLProdutoPRODN3DOLARCOMPRA: TBCDField;
    SQLProdutoPRODN3DOLARVENDA: TBCDField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODCTEMNROSERIE: TStringField;
    SQLProdutoPRODA03GARANTIA: TStringField;
    SQLProdutoPRODA254COMPQUIMICA: TStringField;
    SQLProdutoPRODCTIPO: TStringField;
    SQLProdutoPRODN2PERCFRETE: TBCDField;
    SQLProdutoPRODN2PERDA: TBCDField;
    SQLProdutoPRODN2PIS: TBCDField;
    SQLProdutoPRODN3ALTURA: TBCDField;
    SQLProdutoPRODN3COMPRIMENTO: TBCDField;
    SQLProdutoPRODN3DIMENTOTAL: TBCDField;
    SQLProdutoPRODN3LARGURA: TBCDField;
    SQLProdutoPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutoCOLEICOD: TIntegerField;
    SQLProdutoPRODN2PERCDESP: TBCDField;
    SQLProdutoPRODN2PERCSUBST: TBCDField;
    SQLProdutoPRODN2PERCDESC1: TBCDField;
    SQLProdutoPRODN2PERCDESC2: TBCDField;
    SQLProdutoPRODN2PERCDESC3: TBCDField;
    SQLProdutoPRODN2PERCDESC4: TBCDField;
    SQLProdutoPRODN2PERCDESC5: TBCDField;
    SQLProdutoPRODN2PERCAUME1: TBCDField;
    SQLProdutoPRODN2PERCAUME2: TBCDField;
    SQLProdutoPRODN2PERCAUME3: TBCDField;
    SQLProdutoPRODN2PERCAUME4: TBCDField;
    SQLProdutoPRODN2PERCAUME5: TBCDField;
    ProgressBar: TGauge;
    procedure BtExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImportacaoFarmaciaProduto: TFormTelaImportacaoFarmaciaProduto;

implementation

{$R *.dfm}

procedure TFormTelaImportacaoFarmaciaProduto.BtExecutarClick(
  Sender: TObject);
var  Texto : TextFile;
     Linha, CdProd, VlrCustoTxt, VlrVendaTXT : String;
     NroLinhas : integer;
begin
  inherited;
  EditHoraInicio.Text := FormatDateTime('hh:mm:ss',Now);
  EditHoraInicio.Update;
  if CKFarmacia.Checked then
    begin
      try
        if not FileExists('Farmacia\Clean.txt') then
          begin
            ShowMessage('Não foi possível completar a importação! Possíveis cauas!'+ chr(13)+
                        'O arquivo Clean.txt não está na pasta C:\Unit\Gestao\Farmacia'+ chr(13)+
                        'O arquivo Clean.txt pode estar vazio!'+ chr(13)+
                        'Outro usuário executando a mesma operação em outro computador');
            exit;
          end;
        NroLinhas := 0;
        AssignFile(Texto,'C:\Unit\Gestao\Farmacia\Clean.txt');
        Reset(Texto);
        while not EOF(Texto) do
          begin
            Readln(Texto,Linha);
            NroLinhas := NroLinhas + 1;
          end;

        CloseFile(Texto);
        ProgressBar.Progress := 0;
        ProgressBar.MaxValue := NroLinhas;

        AssignFile(Texto,'C:\Unit\Gestao\Farmacia\Clean.txt');
        Reset(Texto);
        while not EOF(Texto) do
          begin
            try
              Readln(Texto,Linha);
              ProgressBar.Progress := ProgressBar.Progress + 1;
              CdProd      := Copy(Linha, 7,13);
              VlrCustoTxt := Copy(Linha,52,9)+','+Copy(Linha,61,2);
              VlrVendaTXT := Copy(Linha,63,9)+','+Copy(Linha,72,2);
              SQLProduto.Close;
              SQLProduto.macrobyname('Mfiltro').value := 'PRODA60CODBAR = "' + CdProd +'"';
              SQLProduto.Open;
              if not SQLProduto.IsEmpty then
                begin
                  SQLProduto.Edit;
                  SQLProdutoPRODN3VLRCOMPRA.AsString := VlrCustoTxt;
                  SQLProdutoPRODN3VLRCUSTO.AsString  := VlrCustoTxt;
                  SQLProdutoPRODN3VLRVENDA.AsString  := VlrVendaTXT;
                  SQLProduto.Post;
                end;
            except
              Application.ProcessMessages;
            end;
          end;
      except
         Application.ProcessMessages;
      end;
      CloseFile(Texto);
    end;

  if CKPerfumaria.Checked then
    begin
      try
        if not FileExists('C:\Unit\Gestao\Farmacia\Clepean.txt') then
          begin
            ShowMessage('Não foi possível completar a importação! Possíveis cauas!'+ chr(13)+
                        'O arquivo Clepean.txt não está na pasta C:\Unit\Gestao\Farmacia'+ chr(13)+
                        'O arquivo Clepean.txt pode estar vazio!'+ chr(13)+
                        'Outro usuário executando a mesma operação em outro computador');
            exit;
          end;
        NroLinhas := 0;
        AssignFile(Texto,'C:\Unit\Gestao\Farmacia\Clepean.txt');
        Reset(Texto);
        while not EOF(Texto) do
          begin
            Readln(Texto,Linha);
            NroLinhas := NroLinhas + 1;
          end;

        CloseFile(Texto);
        ProgressBar.Progress := 0;
        ProgressBar.MaxValue := NroLinhas;

        AssignFile(Texto,'C:\Unit\Gestao\Farmacia\Clepean.txt');
        Reset(Texto);
        while not EOF(Texto) do
          begin
            try
              Readln(Texto,Linha);
              ProgressBar.Progress := ProgressBar.Progress + 1;
              CdProd      := Copy(Linha, 7,13);
              VlrCustoTxt := Copy(Linha,52,9)+','+Copy(Linha,61,2);
              VlrVendaTXT := Copy(Linha,63,9)+','+Copy(Linha,72,2);
              SQLProduto.Close;
              SQLProduto.macrobyname('Mfiltro').value := 'PRODA60CODBAR = "' + CdProd +'"';
              SQLProduto.Open;
              if not SQLProduto.IsEmpty then
                begin
                  SQLProduto.Edit;
                  SQLProdutoPRODN3VLRCOMPRA.AsString := VlrCustoTxt;
                  SQLProdutoPRODN3VLRCUSTO.AsString  := VlrCustoTxt;
                  SQLProdutoPRODN3VLRVENDA.AsString  := VlrVendaTXT;
                  SQLProduto.Post;
                end;
            except
              Application.ProcessMessages;
            end;
          end;
      except
         Application.ProcessMessages;
      end;
      CloseFile(Texto);
    end;

  EditHoraTermino.Text    := FormatDateTime('hh:nn:ss',Now);
  EditHoraTermino.Update;
  ShowMessage('Concluido com sucesso!');
  SQLProduto.Close;
end;

end.
