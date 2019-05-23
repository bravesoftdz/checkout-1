unit TelaReajustePreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup,
  DB, DBTables, RxQuery, Buttons, jpeg, ExtCtrls, DBCtrls, VarSys, Grids,
  DBGrids, ComCtrls, UCrpe32;

type
  TFormTelaReajustePreco = class(TFormTelaGeralTEMPLATE)
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrade: TDataSource;
    SQLGrade: TRxQuery;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    BtnOk: TSpeedButton;
    SQLProduto: TRxQuery;
    QueryReajuste: TRxQuery;
    DSSQLCor: TDataSource;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    SQLTabelaPreco: TRxQuery;
    DSSQLTabelaPreco: TDataSource;
    SQLProdutoGrade: TRxQuery;
    QueryReajustePRODICOD: TIntegerField;
    UpdateSQLProduto: TUpdateSQL;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLTabelaPrecoTPRCICOD: TIntegerField;
    SQLTabelaPrecoTPRCA60DESCR: TStringField;
    SQLProdutoTabelaPreco: TRxQuery;
    UpdateSQLTabelaPrecoProduto: TUpdateSQL;
    SQLProdutoTabelaPrecoTPCPN3VLRVENDA: TBCDField;
    SQLProdutoTabelaPrecoTPCPN3MARGLUCR: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoReajuste: TRxQuery;
    SQLProdutoReajustePRODICOD: TIntegerField;
    SQLProdutoReajustePRRJICOD: TIntegerField;
    SQLProdutoReajustePRRJDREAJUSTE: TDateTimeField;
    SQLProdutoReajustePRRJN2VLRCOMPRA: TBCDField;
    SQLProdutoReajustePRRJN2MARGEM: TBCDField;
    SQLProdutoReajustePRRJVLRVENDA: TBCDField;
    DSSQLProdutoReajuste: TDataSource;
    SQLProdutoDescricao: TRxQuery;
    DSSQLProdutoDescricao: TDataSource;
    Timer: TTimer;
    SQLProdutoDescricaoPRODA60REFER: TStringField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    BtnVisualizar: TSpeedButton;
    DSQueryReajuste: TDataSource;
    QueryReajustePRODA60DESCR: TStringField;
    SQLProdutoGradePRODA60CODBAR: TStringField;
    SQLProdutoGradePRODA60REFER: TStringField;
    SQLProdutoGradePRODN3VLRVENDA: TBCDField;
    SQLProdutoGradePRODN3VLRCOMPRA: TBCDField;
    SQLProdutoGradePRODN3VLRCUSTO: TBCDField;
    SQLProdutoGradePRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoGradePRODN3PERCMARGLUCR: TBCDField;
    QueryReajustePRODA60CODBAR: TStringField;
    QueryReajustePRODA60REFER: TStringField;
    QueryReajustePRODN3VLRVENDA: TFloatField;
    QueryReajustePRODN3VLRCOMPRA: TFloatField;
    QueryReajustePRODN3VLRCUSTO: TFloatField;
    PagePrincipal: TPageControl;
    TabReajuste: TTabSheet;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    FiltroGrupo: TRxDBLookupCombo;
    FiltroSubGrupo: TRxDBLookupCombo;
    FiltroVariacao: TRxDBLookupCombo;
    FiltroMarca: TRxDBLookupCombo;
    FiltroGrade: TRxDBLookupCombo;
    FiltroUnidade: TRxDBLookupCombo;
    FiltroTabelaPreco: TRxDBLookupCombo;
    FiltroCor: TRxDBLookupCombo;
    GroupBoxTipoReajuste: TGroupBox;
    TipoReajuste: TComboBox;
    GroupBoxPercentual: TGroupBox;
    LTipo: TLabel;
    Percentual: TCurrencyEdit;
    RadioGroupMaisMenos: TRadioGroup;
    GroupGrade: TGroupBox;
    EditGrade: TEdit;
    EditDesc: TEdit;
    EditGradeCodigo: TEdit;
    GroupBoxPromocao: TGroupBox;
    Label3: TLabel;
    DtaInicio: TDateEdit;
    DtaFim: TDateEdit;
    GroupBox1: TGroupBox;
    ComboProdutoDescricao: TRxDBLookupCombo;
    TabItens: TTabSheet;
    PanelItens: TPanel;
    DBGridLista: TDBGrid;
    PanelCabItens: TPanel;
    BtnImprimir: TSpeedButton;
    BtnVoltar: TSpeedButton;
    Report: TCrpe;
    TblItens: TTable;
    TblItensPRODICOD: TIntegerField;
    TblItensPRODA60DESCR: TStringField;
    TblItensPRODA60CODBAR: TStringField;
    TblItensPRODA60REFER: TStringField;
    TblItensPRODN3VLRVENDA: TFloatField;
    TblItensPRODN3VLRCOMPRA: TFloatField;
    TblItensPRODN3VLRCUSTO: TFloatField;
    BatchMove: TBatchMove;
    Progress: TProgressBar;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoTabelaPrecoTPRCICOD: TIntegerField;
    SQLProdutoTabelaPrecoPRODICOD: TIntegerField;
    SQLProdutoTabelaPrecoTPCPN3VLRVENDAPROM: TBCDField;
    SQLProdutoTabelaPrecoTPCPDINIPROMO: TDateTimeField;
    SQLProdutoTabelaPrecoTPCPDFIMPROMO: TDateTimeField;
    SQLProdutoTabelaPrecoPENDENTE: TStringField;
    SQLProdutoTabelaPrecoREGISTRO: TDateTimeField;
    SQLProdutoTabelaPrecoPRODA60REFER: TStringField;
    SQLProdutoDescricaoPRODIAGRUPGRADE: TIntegerField;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    EditCdPrincipalAjustePrecos: TEdit;
    EditDescr2: TEdit;
    SQLProdutoPRODN3VLRVENDA2: TBCDField;
    SQLProdutoPRODN3PERCMARGLUC2: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure TipoReajusteChange(Sender: TObject);
    procedure FiltroGrupoClick(Sender: TObject);
    procedure FiltroSubGrupoClick(Sender: TObject);
    procedure EditGradeExit(Sender: TObject);
    procedure SQLProdutoTabelaPrecoAfterPost(DataSet: TDataSet);
    procedure ComboProdutoDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure SQLProdutoBeforePost(DataSet: TDataSet);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure ComboProdutoDescricaoExit(Sender: TObject);
    procedure EditCdPrincipalAjustePrecosExit(Sender: TObject);
  private
    { Private declarations }
    PrecoVendaAnterior,
    PrecoCompraAnterior,
    CustoAnterior,
    MargemAnterior: Integer;
  public
    { Public declarations }
  end;

var
  FormTelaReajustePreco: TFormTelaReajustePreco;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaReajustePreco.FormCreate(Sender: TObject);
begin
  inherited;

  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLUnidade.Open;
  SQLProdutoDescricao.Open;  
  TipoReajusteChange(TipoReajuste);

end;

procedure TFormTelaReajustePreco.BtnOkClick(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := TabReajuste;
  if TipoReajuste.ItemIndex < 0 then
    begin
      ShowMessage('Por favor informe o tipo de reajuste que deseja utilizar!!');
      TipoReajuste.SetFocus;
      Exit;
    end;
  if (Percentual.Value=0) and (TipoReajuste.ItemIndex <> 12) then
    Begin
      ShowMessage('Por favor informe um valor para o reajuste!');
      Percentual.SetFocus;
      Exit;
    end;

  if FiltroTabelaPreco.Value <> '' then
    begin
      if Application.MessageBox('Voc� selecionou uma tabela de pre�o, portanto a atualiza��o s� ser� efetuada nos produtos que estiverem na tabela selecionada, Deseja continuar ?','Aten��o',MB_SYSTEMMODAL+MB_YesNo+MB_IconQuestion)<>IdYes then
        Exit;
    end;
  if Application.MessageBox('Voc� fez a sele��o corretamente?','Aten��o',MB_SYSTEMMODAL+MB_YesNo+MB_IconQuestion)<>IdYes then
    Exit;
  QueryReajuste.Close;
  QueryReajuste.SQL.Clear;
  QueryReajuste.SQL.Add('Select P.PRODICOD From PRODUTO P ');
  QueryReajuste.SQL.Add('Where ');
  QueryReajuste.SQL.Add('(%MGrupo) AND ');
  QueryReajuste.SQL.Add('(%MSubGrupo) AND ');
  QueryReajuste.SQL.Add('(%MVariacao) AND ');
  QueryReajuste.SQL.Add('(%MUnidade)  AND ');
  QueryReajuste.SQL.Add('(%MMarca)  AND ');
  QueryReajuste.SQL.Add('(%MCor) AND ');
  QueryReajuste.SQL.Add('(%MGrade) AND ');
  QueryReajuste.SQL.Add('(%MTamanho) AND');
  QueryReajuste.SQL.Add('(%MProduto) AND');
  QueryReajuste.SQL.Add('(%MCdPrincipalPrecos)');

  If (FiltroGrupo.Value   <>'') Then
    QueryReajuste.MacroByName('MGrupo').Value    :='P.GRUPICOD=' + FiltroGrupo.Value
  else
    QueryReajuste.MacroByName('MGrupo').Value    := '0=0';

  If (FiltroSubGrupo.Value<>'') Then
    QueryReajuste.MacroByName('MSubGrupo').Value :='P.SUBGICOD=' + FiltroSubGrupo.Value
  else
    QueryReajuste.MacroByName('MSubGrupo').Value := '0=0';

  If (FiltroVariacao.Value   <>'') Then
    QueryReajuste.MacroByName('MVariacao').Value :='P.VARIICOD=' + FiltroVariacao.Value
  else
    QueryReajuste.MacroByName('MVariacao').Value := '0=0';

  If (FiltroUnidade.Value <>'') Then
    QueryReajuste.MacroByName('MUnidade').Value  :='P.UNIDICOD=' + FiltroUnidade.Value
  else
    QueryReajuste.MacroByName('MUnidade').Value  := '0=0';

  If (FiltroMarca.Value   <>'') Then
    QueryReajuste.MacroByName('MMarca').Value    :='P.MARCICOD=' + FiltroMarca.Value
  else
    QueryReajuste.MacroByName('MMarca').Value    := '0=0';

  If (FiltroCor.Value     <>'') then
    QueryReajuste.MacroByName('MCor').Value     :='P.CORICOD  =' + FiltroCor.Value
  else
    QueryReajuste.MacroByName('MCor').Value     := '0=0';

  If (EditGrade.Text<>'') then
    QueryReajuste.MacroByName('MGrade').Value   :='P.PRODIAGRUPGRADE='+EditGradeCodigo.Text
  else
    QueryReajuste.MacroByName('MGrade').Value   := '0=0';

  If (ComboProdutoDescricao.Value<>'') then
    QueryReajuste.MacroByName('MProduto').Value   :='P.PRODA60REFER = ' + '"' + ComboProdutoDescricao.Value + '"'
  else
    QueryReajuste.MacroByName('MProduto').Value   := '0=0';

  If (EditCdPrincipalAjustePrecos.Text<>'') then
    QueryReajuste.MacroByName('MCdPrincipalPrecos').Value   :='P.PRODIPRINCIPAL='+EditCdPrincipalAjustePrecos.Text
  else
    QueryReajuste.MacroByName('MCdPrincipalPrecos').Value   := '0=0';

  Try
    Screen.Cursor:=crHourGlass;
    QueryReajuste.Open;
    QueryReajuste.First;
    While Not QueryReajuste.Eof Do
      Begin
        SQLProduto.Close;
        SQLProduto.ParamByName('PRODICOD').asInteger:=QueryReajustePRODICOD.asInteger;
        SQLProduto.Open;
        SQLProduto.Edit;
        If FiltroTabelaPreco.Value<>'' Then
          Begin
            SQLProdutoTabelaPreco.ParamByName('TPRCICOD').AsInteger := StrToInt(FiltroTabelaPreco.Value);
            SQLProdutoTabelaPreco.ParamByName('PRODICOD').AsInteger := QueryReajustePRODICOD.asInteger;
            SQLProdutoTabelaPreco.Open;
            SQLProdutoTabelaPreco.Edit;
          End;
        Case TipoReajuste.ItemIndex Of
          //Pre�os
          0:Begin
              If FiltroTabelaPreco.Value<>'' Then
                begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * (1+Percentual.Value/100)
                  else
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * (1-Percentual.Value/100);
                end
              Else
                Begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    begin
                      SQLProdutoPRODN3VLRCOMPRA.Value  := SQLProdutoPRODN3VLRCOMPRA.Value * (1+Percentual.Value/100);
                      SQLProdutoPRODN3VLRCUSTO.Value   := SQLProdutoPRODN3VLRCUSTO.Value  * (1+Percentual.Value/100);
                      SQLProdutoPRODN3VLRVENDA.Value   := SQLProdutoPRODN3VLRVENDA.Value  * (1+Percentual.Value/100);
                    end
                  else
                    begin
                      SQLProdutoPRODN3VLRCOMPRA.Value  := SQLProdutoPRODN3VLRCOMPRA.Value * (1-Percentual.Value/100);
                      SQLProdutoPRODN3VLRCUSTO.Value   := SQLProdutoPRODN3VLRCUSTO.Value  * (1-Percentual.Value/100);
                      SQLProdutoPRODN3VLRVENDA.Value   := SQLProdutoPRODN3VLRVENDA.Value  * (1-Percentual.Value/100);
                    end;
                End;
            End;
          //Margem de Lucro
          1:Begin
              SQLProdutoPRODN3PERCMARGLUCR.Value := Percentual.Value;
              If FiltroTabelaPreco.Value<>'' Then
                Begin
                  If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M' Then
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.asFloat :=
                    CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,Percentual.Value);
                  If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U' Then
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.asFloat :=
                    CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.AsFloat,Percentual.Value);
                End
              Else
                Begin
                  If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M' Then
                    SQLProdutoPRODN3VLRVENDA.asFloat :=
                    CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,Percentual.Value);
                  If DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U' Then
                    SQLProdutoPRODN3VLRVENDA.asFloat :=
                    CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,Percentual.Value)
                End;
            End;
          //Pre�o Compra $
          2:Begin
              SQLProdutoPRODN3VLRCOMPRA.Value    := Percentual.Value;
            End;
          //Pre�o Compra %
          3:Begin
              if RadioGroupMaisMenos.ItemIndex = 0 then
                SQLProdutoPRODN3VLRCOMPRA.Value := (SQLProdutoPRODN3VLRCOMPRA.Value) +
                  ((SQLProdutoPRODN3VLRCOMPRA.Value * Percentual.Value)/100)
              else
                SQLProdutoPRODN3VLRCOMPRA.Value := (SQLProdutoPRODN3VLRCOMPRA.Value) -
                  ((SQLProdutoPRODN3VLRCOMPRA.Value * Percentual.Value)/100);
            End;
          //Pre�o Custo $
          4:Begin
              SQLProdutoPRODN3VLRCUSTO.Value    := Percentual.Value;
              If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') Then
                SQLProdutoPRODN3VLRVENDA.asFloat :=
                CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoPRODN3PERCMARGLUCR.AsFloat);
            End;
          //Pre�o Custo %
          5:Begin
              if RadioGroupMaisMenos.ItemIndex = 0 then
                SQLProdutoPRODN3VLRCUSTO.Value := (SQLProdutoPRODN3VLRCUSTO.Value) +
                  ((SQLProdutoPRODN3VLRCUSTO.Value * Percentual.Value)/100)
              else
                SQLProdutoPRODN3VLRCUSTO.Value := (SQLProdutoPRODN3VLRCUSTO.Value) -
                  ((SQLProdutoPRODN3VLRCUSTO.Value * Percentual.Value)/100);

              If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                SQLProdutoPRODN3VLRVENDA.asFloat :=
                CalculaPrecoVenda(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoPRODN3PERCMARGLUCR.AsFloat);
            end;
          //Pre�o Venda $
          6:Begin
              If FiltroTabelaPreco.Value<>'' Then
                Begin
                  SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value     := Percentual.Value;
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoTabelaPrecoTPCPN3MARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoTabelaPrecoTPCPN3MARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                End
              Else
                Begin
                  SQLProdutoPRODN3VLRVENDA.Value     := Percentual.Value;
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoPRODN3VLRVENDA.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoPRODN3VLRVENDA.AsFloat);
                End;
            End;
          //Pre�o Venda %
          7:Begin
              If FiltroTabelaPreco.Value<> '' Then
                Begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := (SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value) +
                      ((SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * Percentual.Value)/100)
                  else
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := (SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value) -
                      ((SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * Percentual.Value)/100);

                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                End
              Else
                Begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    SQLProdutoPRODN3VLRVENDA.Value := (SQLProdutoPRODN3VLRVENDA.Value) +
                      ((SQLProdutoPRODN3VLRVENDA.Value * Percentual.Value)/100)
                  else
                    SQLProdutoPRODN3VLRVENDA.Value := (SQLProdutoPRODN3VLRVENDA.Value) -
                      ((SQLProdutoPRODN3VLRVENDA.Value * Percentual.Value)/100);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoPRODN3VLRVENDA.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoPRODN3VLRVENDA.AsFloat);
                End;
            End;
          //Apenas Compra
          8:SQLProdutoPRODN3VLRCOMPRA.Value    := Percentual.Value;
          //Apenas Custo
          9:SQLProdutoPRODN3VLRCUSTO.Value     := Percentual.Value;
          //Promo��o $
          10:begin
              SQLProdutoPRODN3VLRVENDAPROM.Value := Percentual.Value;
              SQLProdutoPRODDINIPROMO.AsString := DtaInicio.Text;
              SQLProdutoPRODDFIMPROMO.AsString := DtaFim.Text;
            end;
          //Promo��o %
          11:begin
              if RadioGroupMaisMenos.ItemIndex = 0 then
                SQLProdutoPRODN3VLRVENDAPROM.Value := (SQLProdutoPRODN3VLRVENDA.Value) +
                  ((SQLProdutoPRODN3VLRVENDA.Value * Percentual.Value)/100)
              else
                SQLProdutoPRODN3VLRVENDAPROM.Value := (SQLProdutoPRODN3VLRVENDA.Value) -
                  ((SQLProdutoPRODN3VLRVENDA.Value * Percentual.Value)/100);

              SQLProdutoPRODDINIPROMO.AsString := DtaInicio.Text;
              SQLProdutoPRODDFIMPROMO.AsString := DtaFim.Text;
            end;
          12:begin
               if Frac(SQLProdutoPRODN3VLRVENDA.AsFloat) > 0 then
                 SQLProdutoPRODN3VLRVENDA.AsFloat := ArredondaValor(SQLProdutoPRODN3VLRVENDA.AsFloat,Dm.SQLConfigVendaCFVEINROCASASDEC.AsInteger);
             end;
          // alterado pelo judi
          13:begin
              {If FiltroTabelaPreco.Value<> '' Then
                Begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := (SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value) +
                      ((SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * Percentual.Value)/100)
                  else
                    SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value := (SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value) -
                      ((SQLProdutoTabelaPrecoTPCPN3VLRVENDA.Value * Percentual.Value)/100);

                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUCR.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoTabelaPrecoTPCPN3VLRVENDA.AsFloat);
                End
              Else}
//                Begin
                  if RadioGroupMaisMenos.ItemIndex = 0 then
                    SQLProdutoPRODN3VLRVENDA2.Value := (SQLProdutoPRODN3VLRVENDA2.Value) +
                      ((SQLProdutoPRODN3VLRVENDA2.Value * Percentual.Value)/100)
                  else
                    SQLProdutoPRODN3VLRVENDA2.Value := (SQLProdutoPRODN3VLRVENDA2.Value) -
                      ((SQLProdutoPRODN3VLRVENDA2.Value * Percentual.Value)/100);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='M') AND (SQLProdutoPRODN3VLRCUSTOMED.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUC2.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTOMED.asFloat,SQLProdutoPRODN3VLRVENDA2.AsFloat);
                  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') AND (SQLProdutoPRODN3VLRCUSTO.asFloat>0) Then
                    SQLProdutoPRODN3PERCMARGLUC2.asFloat :=
                    CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,SQLProdutoPRODN3VLRCUSTO.asFloat,SQLProdutoPRODN3VLRVENDA2.AsFloat);
          //      End;
            End;
        End;
        SQLProdutoPENDENTE.Value := 'S' ;
        SQLProdutoREGISTRO.Value := Now ;
        SQLProduto.Post;
        SQLProduto.Close;
        If FiltroTabelaPreco.Value<>'' Then
          Begin
            SQLProdutoTabelaPrecoPENDENTE.Value := 'S' ;
            SQLProdutoTabelaPrecoREGISTRO.Value := Now ;
            SQLProdutoTabelaPreco.Post;
            SQLProdutoTabelaPreco.Close;
          End;
        QueryReajuste.Next;
      End;
    Screen.Cursor:=crDefault;
    Application.MessageBox('Opera��o Completada com Sucesso!','Aten��o',MB_SYSTEMMODAL+MB_Ok+MB_IconInformation);
    Percentual.SetFocus;
  Except
    If DM.SQLProduto.State in dsEditModes Then DM.SQLProduto.Cancel;
      Screen.Cursor:=crDefault;
    Application.MessageBox('Dados Incompletos!','Aten��o',MB_SYSTEMMODAL+MB_Ok+MB_IconExclamation);
  End;
end;

procedure TFormTelaReajustePreco.TipoReajusteChange(Sender: TObject);
begin
  inherited;
  case TipoReajuste.ItemIndex of
  // alterado pelo judi - incluir o numero 13
    0,1,3,5,7,11,13:LTipo.Caption:='Percentual';
    2,4,6,8,9,10:LTipo.Caption:='Valor';
  end;
  {
0 Pre�os
1 Margem de Lucro
2 Pre�o Compra $
3 Pre�o Compra %
4 Pre�o Custo $
5 Pre�o Custo %
6 Pre�o Venda $
7 Pre�o Venda %
8 Apenas Compra $
9 Apenas Custo $
10 Promo��o $
11 Promo��o %}

  RadioGroupMaisMenos.Visible := TipoReajuste.ItemIndex in [0,3,5,7,11,13];
  GroupBoxPromocao.Visible := TipoReajuste.ItemIndex in [10,11];
  FiltroTabelaPreco.Enabled := TipoReajuste.ItemIndex in [0,1,6,7];
end;

procedure TFormTelaReajustePreco.FiltroGrupoClick(Sender: TObject);
begin
  inherited;
  If (Sender as TRxDBLookUpCombo).Value<>'' Then
    FiltroSubGrupo.Enabled:=True
  Else
    FiltroSubGrupo.Enabled:=False;
end;

procedure TFormTelaReajustePreco.FiltroSubGrupoClick(Sender: TObject);
begin
  inherited;
  If (Sender as TRxDBLookUpCombo).Value<>'' Then
    FiltroVariacao.Enabled:=True
  Else
    FiltroVariacao.Enabled:=False;
end;

procedure TFormTelaReajustePreco.EditGradeExit(Sender: TObject);
begin
  inherited;
  if (EditGrade.Text<>'') then
    begin
      if not SQLProdutoGrade.Active then SQLProdutoGrade.Open;
      if EncontrouProduto(EditGrade.Text,SQLProdutoGrade) then
        Begin
          EditGradeCodigo.Text:=SQLProdutoGradePRODIAGRUPGRADE.asString;
          EditDesc.Text:= SQLProdutoGradePRODA60DESCR.AsString;
        End
      else
        begin
          Application.MessageBox('Grade n�o encontrada!', 'Aten��o', MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation);
          EditGrade.SetFocus;
          EditDesc.Text:= '';
        end;
    end;
end;

procedure TFormTelaReajustePreco.SQLProdutoTabelaPrecoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if FiltroTabelaPreco.Value = '' then
    begin
      if (PrecoVendaAnterior <> SQLProdutoPRODN3VLRVENDA.AsFloat) and (PrecoVendaAnterior > 0) then
        begin
          if not SQLProdutoReajuste.Active then SQLProdutoReajuste.Open;
          SQLProdutoReajuste.Append;
          SQLProdutoReajustePRODICOD.AsInteger       := SQLProdutoPRODICOD.AsInteger;

          Dm.SQLTemplate.Close;
          Dm.SQLTemplate.SQL.Clear;
          Dm.SQLTemplate.SQL.Add('Select MAX(PRRJICOD) from PRODUTOREAJUSTE where PRODICOD = ' + SQLProdutoPRODICOD.AsString + ' AND  PRRJDREAJUSTE = ' + '"' + FormatDateTime('mm/dd/yyyy',Now)+ '"');
          Dm.SQLTemplate.Open;

          if Dm.SQLTemplate.FieldByName('MAX').AsFloat > 0 then
            SQLProdutoReajustePRRJICOD.AsInteger       := Dm.SQLTemplate.FieldByName('MAX').AsInteger + 1
          else
            SQLProdutoReajustePRRJICOD.AsInteger       := 1;

          SQLProdutoReajustePRRJDREAJUSTE.AsDateTime := Now;
          SQLProdutoReajustePRRJVLRVENDA.AsFloat     := PrecoVendaAnterior;
          SQLProdutoReajustePRRJN2VLRCOMPRA.AsFloat  := PrecoCompraAnterior;
          SQLProdutoReajustePRRJN2MARGEM.AsFloat     := MargemAnterior;
          SQLProdutoReajuste.Post;
        end;
      end;
end;

procedure TFormTelaReajustePreco.ComboProdutoDescricaoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormTelaReajustePreco.TimerTimer(Sender: TObject);
begin
  inherited;
  GroupFiltro.Enabled := ComboProdutoDescricao.Value = '';
  GroupGrade.Enabled  := ComboProdutoDescricao.Value = '';
end;

procedure TFormTelaReajustePreco.SQLProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  LancaReajustePreco(DataSet.FieldByName('PRODN3VLRVENDA').AsFloat,
  DataSet.FieldByName('PRODN3VLRCOMPRA').AsFloat,
  DataSet.FieldByName('PRODN3VLRCOMPRAMED').AsFloat,
  DataSet.FieldByName('PRODN3VLRCUSTO').AsFloat,
  DataSet.FieldByName('PRODN3VLRCUSTOMED').AsFloat,
  DataSet.FieldByName('PRODN3PERCMARGLUCR').AsFloat,
  QueryReajustePRODICOD.AsInteger);
end;

procedure TFormTelaReajustePreco.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  if TipoReajuste.ItemIndex < 0 then
    begin
      ShowMessage('Por favor informe o tipo de reajuste que deseja utilizar!!');
      TipoReajuste.SetFocus;
      Exit;
    end;
  if Percentual.Value=0 then
    Begin
      ShowMessage('Por favor informe um valor para o reajuste!');
      Percentual.SetFocus;
      Exit;
    end;
  if FiltroTabelaPreco.Value <> '' then
    begin
      if Application.MessageBox('Voc� selecionou uma tabela de pre�o, portanto a atualiza��o s� ser� efetuada nos produtos que estiverem na tabela selecionada, Deseja continuar ?','Aten��o',MB_SYSTEMMODAL+MB_YesNo+MB_IconQuestion)<>IdYes then
        Exit;
    end;
  QueryReajuste.Close;
  QueryReajuste.SQL.Clear;
  QueryReajuste.SQL.Add('Select P.PRODICOD From PRODUTO P ');
  QueryReajuste.SQL.Add('Where ');
  QueryReajuste.SQL.Add('(%MGrupo) AND ');
  QueryReajuste.SQL.Add('(%MSubGrupo) AND ');
  QueryReajuste.SQL.Add('(%MVariacao) AND ');
  QueryReajuste.SQL.Add('(%MUnidade)  AND ');
  QueryReajuste.SQL.Add('(%MMarca)  AND ');
  QueryReajuste.SQL.Add('(%MCor) AND ');
  QueryReajuste.SQL.Add('(%MReferencia) AND');
  QueryReajuste.SQL.Add('(%MGrade) AND ');
  QueryReajuste.SQL.Add('(%MTamanho) AND');
  QueryReajuste.SQL.Add('(%MProduto) AND');
  QueryReajuste.SQL.Add('(%MCdPrincipalPrecos)');

  If (FiltroGrupo.Value   <>'') Then
    QueryReajuste.MacroByName('MGrupo').Value   :='P.GRUPICOD=' + FiltroGrupo.Value
  else
    QueryReajuste.MacroByName('MGrupo').Value   := '0=0';

  If (FiltroSubGrupo.Value<>'') Then
    QueryReajuste.MacroByName('MSubGrupo').Value :='P.SUBGICOD=' + FiltroSubGrupo.Value
  else
    QueryReajuste.MacroByName('MSubGrupo').Value := '0=0';

  If (FiltroVariacao.Value   <>'') Then
    QueryReajuste.MacroByName('MVariacao').Value :='P.VARIICOD=' + FiltroVariacao.Value
  else
    QueryReajuste.MacroByName('MVariacao').Value := '0=0';

  If (FiltroUnidade.Value <>'') Then
    QueryReajuste.MacroByName('MUnidade').Value :='P.UNIDICOD=' + FiltroUnidade.Value
  else
    QueryReajuste.MacroByName('MUnidade').Value := '0=0';

  If (FiltroMarca.Value   <>'') Then
    QueryReajuste.MacroByName('MMarca').Value   :='P.MARCICOD=' + FiltroMarca.Value
  else
    QueryReajuste.MacroByName('MMarca').Value   := '0=0';

  If (FiltroCor.Value     <>'') then
    QueryReajuste.MacroByName('MCor').Value     :='P.CORICOD  =' + FiltroCor.Value
  else
    QueryReajuste.MacroByName('MCor').Value     := '0=0';

  If (EditGrade.Text<>'') then
    QueryReajuste.MacroByName('MGrade').Value   :='P.PRODIAGRUPGRADE='+EditGradeCodigo.Text
  else
    QueryReajuste.MacroByName('MGrade').Value   := '0=0';

  If (ComboProdutoDescricao.Value<>'') then
    QueryReajuste.MacroByName('MProduto').Value :='P.PRODA60REFER = ' + '"' + ComboProdutoDescricao.Value + '"'
  else
    QueryReajuste.MacroByName('MProduto').Value := '0=0';

  If (EditCdPrincipalAjustePrecos.Text<>'') then
    QueryReajuste.MacroByName('MCdPrincipalPrecos').Value   :='P.PRODIPRINCIPAL='+EditCdPrincipalAjustePrecos.Text
  else
    QueryReajuste.MacroByName('MCdPrincipalPrecos').Value   := '0=0';

  Screen.Cursor:=crHourGlass;
  QueryReajuste.Open;
  QueryReajuste.First;
  PagePrincipal.ActivePage := TabItens;
end;

procedure TFormTelaReajustePreco.BtnVoltarClick(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := TabReajuste;
end;

procedure TFormTelaReajustePreco.BtnImprimirClick(Sender: TObject);
var
  I,P : Integer;

begin
  inherited;
  if not QueryReajuste.IsEmpty then
    begin
      try
        TblItens.Close;
        TblItens.DeleteTable;
        TblItens.CreateTable;
      except
        TblItens.CreateTable
      end;
      TblItens.Open;
      QueryReajuste.First;
      Progress.Visible := True;
      Progress.Max := QueryReajuste.RecordCount;
      Progress.Min := 0;
      Progress.Position := 0;
      QueryReajuste.DisableControls;
      while not QueryReajuste.Eof do
        begin
          TblItens.Append;
          for I:=0 to QueryReajuste.FieldCount -1 do
            begin
              if TblItens.FindField(QueryReajuste.Fields[i].FieldName) <> nil then
                TblItens.FieldByName(QueryReajuste.Fields[i].FieldName).AsVariant := QueryReajuste.Fields[i].AsVariant;
            end;
          TblItens.Post;
          QueryReajuste.Next;
          Progress.Position := Progress.Position + 1;
          Progress.Update;
        end;
      QueryReajuste.First;  
      QueryReajuste.EnableControls;
      Progress.Position := 0;
      Progress.Visible := False;

      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Itens Reajuste Precos.rpt';
      Report.ReportTitle       := 'Listagem de Itens do Reajuste de Pre�os';
      Report.WindowStyle.Title := 'Listagem de Itens do Reajuste de Pre�os';
      Report.Execute;
    end
  else
    begin
      Informa('Nenhum produto foi selecionado, opera��o cancelada!');
      Exit;
    end;
end;

procedure TFormTelaReajustePreco.ComboProdutoDescricaoExit(
  Sender: TObject);
begin
  inherited;
  if ComboProdutoDescricao.Value <> '' then
    begin
      EditGrade.Text := SQLProdutoDescricaoPRODIAGRUPGRADE.AsString;
      if not SQLProdutoGrade.Active then SQLProdutoGrade.Open;
      if EncontrouProduto(EditGrade.Text,SQLProdutoGrade) then
        Begin
          EditGradeCodigo.Text:=SQLProdutoGradePRODIAGRUPGRADE.asString;
          EditDesc.Text:= SQLProdutoGradePRODA60DESCR.AsString;
        End
      else
        begin
          Application.MessageBox('Grade n�o encontrada!', 'Aten��o', MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation);
          EditGrade.SetFocus;
          EditDesc.Text:= '';
        end;
    end;
end;

procedure TFormTelaReajustePreco.EditCdPrincipalAjustePrecosExit(
  Sender: TObject);
begin
  inherited;
  if (EditCdPrincipalAjustePrecos.Text <> '') then
    begin
      if EncontrouProduto(EditCdPrincipalAjustePrecos.Text,SQLProdutoGrade) then
        EditDescr2.Text := SQLProdutoGradePRODA60DESCR.AsString
      else
        begin
          Application.MessageBox('Produto n�o encontrado!', 'Aten��o', MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation);
          EditCdPrincipalAjustePrecos.SetFocus;
          EditDescr2.Text:= '';
        end;
    end;
end;

end.
