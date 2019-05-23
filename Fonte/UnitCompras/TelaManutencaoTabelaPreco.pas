unit TelaManutencaoTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxLookup, Mask, ToolEdit, CurrEdit, DB, DBTables, RxQuery, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaManutencaoTabelaPreco = class(TFormTelaGeralTEMPLATE)
    PanelAssistente: TPanel;
    GroupOperacao: TRadioGroup;
    GroupForma: TRadioGroup;
    GroupValor: TGroupBox;
    EditValor: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ProgressBar: TProgressBar;
    SQLAssistente: TRxQuery;
    SQLGrupo: TRxQuery;
    SQLSubGrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLMarca: TRxQuery;
    SQLAssistentePRODICOD: TIntegerField;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    DSSQLMarca: TDataSource;
    GroupExistente: TRadioGroup;
    SQLAssistenteCount: TRxQuery;
    SQLAssistenteCountNRO: TIntegerField;
    SQLIncluir: TRxQuery;
    SQLAssistentePRODN3VLRVENDA: TBCDField;
    SQLAssistentePRODN3VLRCOMPRA: TBCDField;
    SQLTabelaPrecoProduto: TRxQuery;
    UpdateSQLTabelaPrecoProduto: TUpdateSQL;
    SQLTabelaPrecoProdutoTPRCICOD: TIntegerField;
    SQLTabelaPrecoProdutoPRODICOD: TIntegerField;
    SQLTabelaPrecoProdutoTPCPN3VLRVENDA: TBCDField;
    SQLTabelaPrecoProdutoTPCPN3MARGLUCR: TBCDField;
    SQLTabelaPrecoProdutoTPCPN3VLRVENDAPROM: TBCDField;
    SQLTabelaPrecoProdutoTPCPDINIPROMO: TDateTimeField;
    SQLTabelaPrecoProdutoTPCPDFIMPROMO: TDateTimeField;
    SQLTabelaPrecoProdutoPENDENTE: TStringField;
    SQLTabelaPrecoProdutoREGISTRO: TDateTimeField;
    SQLAssistentePRODA60REFER: TStringField;
    SQLAssistentePRODN3VLRCUSTO: TFloatField;
    BtnOk: TSpeedButton;
    procedure GroupOperacaoClick(Sender: TObject);
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SQLTabelaPrecoProdutoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaManutencaoTabelaPreco: TFormTelaManutencaoTabelaPreco;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaManutencaoTabelaPreco.GroupOperacaoClick(
  Sender: TObject);
begin
  inherited;
  GroupForma.Enabled     := (GroupOperacao.ItemIndex=0);
  GroupValor.Enabled     := (GroupOperacao.ItemIndex=0);
  GroupExistente.Enabled := (GroupOperacao.ItemIndex=0);
end;

procedure TFormTelaManutencaoTabelaPreco.ComboGrupoChange(
  Sender: TObject);
begin
  inherited;
  If (Sender as TRXDBLookUpCombo).Value<>'' Then
    ComboSubGrupo.Enabled:=True
  Else
    ComboSubGrupo.Value:='';
end;

procedure TFormTelaManutencaoTabelaPreco.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  If (Sender as TRXDBLookUpCombo).Value<>'' Then
    ComboVariacao.Enabled:=True
  Else
    ComboVariacao.Value:='';
end;

procedure TFormTelaManutencaoTabelaPreco.BtnOkClick(Sender: TObject);
Var
  Valor:Double;
  Campo,MargemText,ValorText:String;
begin
  inherited;
  If ComboGrupo.Value<>'' Then
    Begin
      SQLAssistente.MacroByName('MGrupo').Value      := 'GRUPICOD = '+ ComboGrupo.Value;
      SQLAssistenteCount.MacroByName('MGrupo').Value := 'GRUPICOD = '+ ComboGrupo.Value;
    End
  Else
    Begin
      SQLAssistente.MacroByName('MGrupo').Value      := '0=0';
      SQLAssistenteCount.MacroByName('MGrupo').Value := '0=0';
    End;
  If ComboSubGrupo.Value<>'' Then
    Begin
      SQLAssistente.MacroByName('MSubGrupo').Value      := 'SUBGICOD = '+ ComboSubGrupo.Value;
      SQLAssistenteCount.MacroByName('MSubGrupo').Value := 'SUBGICOD = '+ ComboSubGrupo.Value;
    End
  Else
    Begin
      SQLAssistente.MacroByName('MSubGrupo').Value      := '0=0';
      SQLAssistenteCount.MacroByName('MSubGrupo').Value := '0=0';
    End;
  If ComboVariacao.Value<>'' Then
    Begin
      SQLAssistente.MacroByName('MVariacao').Value      := 'VARIICOD = '+ ComboVariacao.Value;
      SQLAssistenteCount.MacroByName('MVariacao').Value := 'VARIICOD = '+ ComboVariacao.Value;
    End
  Else
    Begin
      SQLAssistente.MacroByName('MVariacao').Value      := '0=0';
      SQLAssistenteCount.MacroByName('MVariacao').Value := '0=0';
    End;
  If ComboMarca.Value<>'' Then
    Begin
      SQLAssistente.MacroByName('MMarca').Value      := 'MARCICOD = '+ ComboVariacao.Value;
      SQLAssistenteCount.MacroByName('MMarca').Value := 'MARCICOD = '+ ComboVariacao.Value;
    End
  Else
    Begin
      SQLAssistente.MacroByName('MMarca').Value      := '0=0';
      SQLAssistenteCount.MacroByName('MMarca').Value := '0=0';
    End;
  SQLAssistente.Open;
  SQLAssistenteCount.Open;
  ProgressBar.Max:=SQLAssistenteCountNRO.Value;
  SQLAssistenteCount.Close;
  ProgressBar.Position := 0 ;
  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='O') Then
    Campo := 'PRODN3VLRCOMPRA';
  If (DM.SQLConfigCompraCFCOCTOTPRCVENPROD.Value='U') Then
    Campo := 'PRODN3VLRCUSTO';
  SQLAssistente.First ;
  While Not SQLAssistente.Eof Do
    Begin
      Valor := SQLAssistentePRODN3VLRVENDA.Value;
      Case GroupForma.ItemIndex Of
        //Amentar Preço Normal por Percentual
        0:Valor := Valor + (Valor * (EditValor.Value / 100));
        //Diminuir Preço Normal por Percentual
        1:Valor := Valor - (Valor * (EditValor.Value / 100));
        //Somar Valor Fixo ao Preço Normal
        2:Valor := Valor + EditValor.Value;
        //Subtrair Valor Fixo do Preço Normal
        3:Valor := Valor - EditValor.Value;
        //Trocar Preço Normal por Valor Fixo
        4:Valor := EditValor.Value;
      End;
      SQLTabelaPrecoProduto.ParamByName('TPRCICOD').asString  := DM.TabelaPrecoAssistente;
      SQLTabelaPrecoProduto.ParamByName('PRODICOD').asInteger := SQLAssistentePRODICOD.asInteger;
      SQLTabelaPrecoProduto.Open;
      If Not SQLTabelaPrecoProduto.Eof Then
        Case GroupOperacao.ItemIndex Of
          0:If GroupExistente.ItemIndex=0 Then
              Begin
                ValorText := FormatFloat('#,##0.000',Valor);
                If Pos(',',ValorText)<>0 Then
                  ValorText[Pos(',',ValorText)]:='.';
                If Valor > SQLAssistente.FindField(Campo).asFloat Then
                  Begin
                    if SQLAssistente.FindField(Campo).asFloat > 0 then
                      MargemText := FormatFloat('#,##0.000',((Valor / SQLAssistente.FindField(Campo).asFloat)-1)*100)
                    else
                      MargemText := '0' ;

                    If Pos(',',MargemText)<>0 Then
                      MargemText[Pos(',',MargemText)]:='.';
                  End
                Else
                  MargemText := '0';
                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Text := 'UPDATE TABELAPRECOPRODUTO SET '+
                                           'TPCPN3VLRVENDA = '+ValorText+','+
                                           'TPCPN3MARGLUCR = '+MargemText+','+
                                           'REGISTRO = "'    + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+'",'+
                                           'PENDENTE = "S" ' +
                                           'WHERE TPRCICOD='+DM.TabelaPrecoAssistente+' AND PRODICOD='+SQLAssistentePRODICOD.asString;
                DM.SQLTemplate.ExecSQL;
              End;
          1:SQLTabelaPrecoProduto.Delete;
        End
      else
        if GroupOperacao.ItemIndex = 0 then
          begin
            SQLIncluir.ParamByName('TPRCICOD').Value         := StrToInt(DM.TabelaPrecoAssistente);
            SQLIncluir.ParamByName('PRODICOD').Value         := SQLAssistentePRODICOD.asInteger;
            SQLIncluir.ParamByName('PRODA60REFER').asString  := SQLAssistentePRODA60REFER.asString;
            SQLIncluir.ParamByName('TPCPN3VLRVENDA').Value   := Valor;
            if (Valor > SQLAssistente.FindField(Campo).asFloat) and (SQLAssistente.FindField(Campo).asFloat > 0) then
              SQLIncluir.ParamByName('TPCPN3MARGLUCR').Value := ((Valor / SQLAssistente.FindField(Campo).asFloat)-1)*100
            else
              SQLIncluir.ParamByName('TPCPN3MARGLUCR').Value := 0 ;
            SQLIncluir.ParamByName('REGISTRO').Value         := Now;
            SQLIncluir.ExecSQL;
          end;
      SQLTabelaPrecoProduto.Close;
      SQLAssistente.Next;
      ProgressBar.Position:=ProgressBar.Position+1;
    End;
  SQLAssistente.Close;
end;

procedure TFormTelaManutencaoTabelaPreco.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  PanelAssistente.Left := ((Sender as TForm).Width - PanelAssistente.Width) Div 2 ;
  PanelAssistente.Top  := (((Sender as TForm).Height - PanelAssistente.Height) Div 2)-100 ;
end;

procedure TFormTelaManutencaoTabelaPreco.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open ;
  SQLSubGrupo.Open ;
  SQLVariacao.Open ;
  SQLMarca.Open ;
end;

procedure TFormTelaManutencaoTabelaPreco.SQLTabelaPrecoProdutoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('TABELAPRECOPRODUTO',SQLTabelaPrecoProduto);
end;

end.
