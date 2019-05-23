unit CadastroConfigBalancaLayOutArq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, DBLists, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConfigBalancaLayOutArq = class(TFormCadastroTEMPLATE)
    SQLTemplateCFBLICOD: TIntegerField;
    SQLTemplateCBLAIORDEM: TIntegerField;
    SQLTemplateCBLAA25CAMPO: TStringField;
    SQLTemplateCBLAIPOSICAO: TIntegerField;
    SQLTemplateCBLAITAMANHO: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    TblCampos: TTableItems;
    TblCamposNAME: TStringField;
    Label14: TLabel;
    ComboCampo: TRxDBLookupCombo;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DSTblCampos: TDataSource;
    GridLayOut: TDBGrid;
    MnGerarArquivoParaBalanca: TMenuItem;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
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
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoPRODN3PERCIPI: TFloatField;
    SQLProdutoPRODN3PERCMARGLUCR: TFloatField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TFloatField;
    SQLProdutoPRODN2COMISPRAZO: TFloatField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    ProgressBar: TProgressBar;
    SQLLayOut: TRxQuery;
    DSSQLLayOut: TDataSource;
    SQLLayOutCBLAA25CAMPO: TStringField;
    SQLLayOutCBLAIPOSICAO: TIntegerField;
    SQLLayOutCBLAITAMANHO: TIntegerField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    procedure MnGerarArquivoParaBalancaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConfigBalancaLayOutArq: TFormCadastroConfigBalancaLayOutArq;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroConfigBalancaLayOutArq.MnGerarArquivoParaBalancaClick(
  Sender: TObject);
Var
  I,TamRegistro:Integer;
  Registro,LinhaVazia,Separador, STR:String;
  Arquivo:TextFile;
begin
  inherited;
  If (not DSMasterTemplate.DataSet.IsEmpty) Then
    Begin
      AssignFile(Arquivo,DSMasterTemplate.DataSet.FieldByName('CFBLA254NOMEARQTXT').Value);
      Rewrite(Arquivo);
      TamRegistro:=0;
      SQLTemplate.First;
      While Not SQLTemplate.Eof Do
        Begin
          TamRegistro:=TamRegistro+SQLTemplateCBLAITAMANHO.Value;
          SQLTemplate.Next;
        End;
      LinhaVazia:='';
      For I:=1 To TamRegistro Do
        LinhaVazia:=LinhaVazia+' ';
      SQLProduto.Last;
      SQLProduto.First;
      ProgressBar.Min:=1;
      ProgressBar.Max:=100;
      ProgressBar.Visible:=True;
      ProgressBar.Update;
      ProgressBar.Position:=1;
      SQLTemplate.DisableControls;
//08300000062000000375PIMENTAO
      try
        While Not SQLProduto.Eof Do
          Begin
            If SQLProdutoPRODICODBALANCA.asInteger>0 Then
              Begin
                Registro:=LinhaVazia;
                SQLTemplate.First;
                While Not SQLTemplate.EOF Do
                  Begin
                    Case SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).DataType Of
                      FtInteger  :Begin
                                     Registro := Copy(Registro,1,SQLTemplateCBLAIPOSICAO.Value-1)+
                                     Preenche(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).AsString,'0',SQLTemplateCBLAITAMANHO.Value,0);

{                                    Registro:=Copy(Registro,1,SQLTemplateCBLAIPOSICAO.Value-1)+
                                              Format('%.'+IntToStr(SQLTemplateCBLAITAMANHO.Value)+'d',[SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).asInteger])+
                                              Copy(Registro,SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value,TamRegistro+1-(SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value));}
                                  End;
                      FtString   :Begin
                                    Registro := Copy(Registro,1,SQLTemplateCBLAIPOSICAO.Value-1)+
                                    Preenche(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).asString,'',SQLTemplateCBLAITAMANHO.Value,2) +
                                    Copy(Registro,SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value,TamRegistro-(SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value));
                                  End;
                      FtBCD,
                      FtFloat    :If DSMasterTemplate.DataSet.FieldByName('CFBLCUSASEPAR').Value='S' Then
                                    Begin
                                      Separador:=DSMasterTemplate.DataSet.FieldByName('CFBLA1TIPOSEPAR').Value;
                                      Registro :=Copy(Registro,1,SQLTemplateCBLAIPOSICAO.Value-1)+
                                                 Format('%.'+IntToStr(SQLTemplateCBLAITAMANHO.Value-1-DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').Value)+'d',[Round(Int(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).asFloat))])+Separador+
                                                 Copy(Format('%.'+IntToStr(DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').Value)+'f',[Frac(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.AsString).Value)]),3,DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').AsInteger)+
                                                 Copy(Registro,SQLTemplateCBLAIPOSICAO.Value+ SQLTemplateCBLAITAMANHO.Value,TamRegistro+1-(SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value));
                                    End
                                  Else
                                    Begin
                                      STR := FormatFloat('#,##0.00',SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).AsFloat);
                                      While Pos('.',STR) > 0 do
                                        Delete(STR,Pos('.',STR),1);
                                      While Pos(',',STR) > 0 do
                                        Delete(STR,Pos(',',STR),1);
                                      Registro :=Copy(Registro,1,SQLTemplateCBLAIPOSICAO.Value-1)+
                                      Preenche(STR,'0',SQLTemplateCBLAITAMANHO.Value,0);
                                                 {Format('%.'+IntToStr(SQLTemplateCBLAITAMANHO.Value-DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').Value)+'d',[Round(Int(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).asFloat))])+
                                                 Copy(Format('%.'+IntToStr(DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').Value)+'f',[Frac(SQLProduto.FieldByName(SQLTemplateCBLAA25CAMPO.Value).Value)]),3,DSMasterTemplate.DataSet.FieldByName('CFBLIDECIMAIS').AsInteger)+
                                                 Copy(Registro,SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value,TamRegistro+1-(SQLTemplateCBLAIPOSICAO.Value+SQLTemplateCBLAITAMANHO.Value));}
                                    End;
                    End;
                    SQLTemplate.Next;
                  End;
                WriteLn(Arquivo,Registro);
              End;
            SQLProduto.Next;
            ProgressBar.Position:=ProgressBar.Position+1;
            ProgressBar.UpDate;
          End;
        CloseFile(Arquivo);
      except
        Application.MessageBox('Problemas na geração do arquivo, verifique suas configurações !', PChar('Advanced Control Informa'), MB_SYSTEMMODAL + MB_Ok + MB_IconInformation);
        CloseFile(Arquivo);
        Abort;
      end;
      SQLTemplate.EnableControls;
      Application.MessageBox('Operação Concluida com Sucesso!', PChar('Advanced Control Informa'), MB_SYSTEMMODAL + MB_Ok + MB_IconInformation);
      ProgressBar.Visible:=False;
      ProgressBar.UpDate;
    End;
end;

procedure TFormCadastroConfigBalancaLayOutArq.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGBALANCALAYOUTARQ';
  SQLProduto.Open;
  TblCampos.Open;
end;

procedure TFormCadastroConfigBalancaLayOutArq.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.State <> DsInsert then DataSet.Insert; 
  SQLTemplateCFBLICOD.AsInteger := DsMasterTemplate.DataSet.FieldByName('CFBLICOD').AsInteger;
end;

procedure TFormCadastroConfigBalancaLayOutArq.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  SQLLayOut.Close;
  SQLLayOut.Open;
end;

end.
