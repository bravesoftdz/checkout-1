unit TelaCalculaCustoMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, RXCtrls, Grids, DBGrids, DateUtils, ComCtrls;

type
  TFormTelaCalculaCustoMensal = class(TFormTelaGeralTEMPLATE)
    SQLProdutoSaldoMes: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    DSSQLNotaCompra: TDataSource;
    SQLNotaCompra: TRxQuery;
    RxSpeedButton1: TRxSpeedButton;
    DBGridLista: TDBGrid;
    LabelDiversos: TRxSpeedButton;
    SQLCustoMes: TRxQuery;
    Progress: TProgressBar;
    SQLCustoMesEMPRICOD: TIntegerField;
    SQLCustoMesPRODICOD: TIntegerField;
    SQLCustoMesPSMEA2MES: TStringField;
    SQLCustoMesPSMEA4ANO: TStringField;
    SQLCustoMesPSMEN3QTDE: TBCDField;
    SQLCustoMesPSMEN2CUSTO: TBCDField;
    SQLCustoMesPSMEN2CUSTOMED: TBCDField;
    SQLCustoMesPSMEN2CUSTOTOT: TBCDField;
    SQLCustoMesPSMEN2CUSTOMEDTOT: TBCDField;
    SQLCustoMesPENDENTE: TStringField;
    SQLCustoMesREGISTRO: TDateTimeField;
    SQLProdutoSaldoMesEMPRICOD: TIntegerField;
    SQLProdutoSaldoMesPRODICOD: TIntegerField;
    SQLProdutoSaldoMesPSMEA2MES: TStringField;
    SQLProdutoSaldoMesPSMEA4ANO: TStringField;
    SQLProdutoSaldoMesPSMEN3QTDE: TBCDField;
    SQLProdutoSaldoMesPSMEN2CUSTO: TBCDField;
    SQLProdutoSaldoMesPSMEN2CUSTOMED: TBCDField;
    SQLProdutoSaldoMesPSMEN2CUSTOTOT: TBCDField;
    SQLProdutoSaldoMesPSMEN2CUSTOMEDTOT: TBCDField;
    SQLProdutoSaldoMesPENDENTE: TStringField;
    SQLProdutoSaldoMesREGISTRO: TDateTimeField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoPSLDN3QTDE: TBCDField;
    SQLSaldo: TRxQuery;
    SQLSaldoSALDO: TFloatField;
    SQLSaldoPRODICOD: TIntegerField;
    SQLVerificaMes: TRxQuery;
    SQLProdutoSaldoMesPSMEN2COMPRA: TBCDField;
    SQLProdutoSaldoMesPSMEN2COMPRATOT: TBCDField;
    SQLProdutoSaldoMesPSMEN2COMPRAMED: TBCDField;
    SQLProdutoSaldoMesPSMEN2COMPRAMEDTOT: TBCDField;
    DataBase: TDateTimePicker;
    SQLMovimentoEstoque: TRxQuery;
    SQLMovimentoEstoqueSALDO: TFloatField;
    SQLNotaCompraVALORCOMPRA: TFloatField;
    SQLNotaCompraQTDE: TFloatField;
    SQLNotaCompraVALORUNITCOMPRA: TFloatField;
    SQLNotaCompraPRODICOD: TIntegerField;
    SQLNotaCompraMVESDMOV: TDateTimeField;
    SQLNotaCompraMVESICOD: TIntegerField;
    DSSQLProdutoSaldoMes: TDataSource;
    SQLProdutoSaldoMesPRODA60DESCR: TStringField;
    SQLMovEstoqueProd: TRxQuery;
    SQLMovEstoqueProdSALDO: TFloatField;
    SQLNotaCompraEMPRICOD: TIntegerField;
    SQLExclusao: TRxQuery;
    procedure LabelDiversosClick(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    UltimoCusto, EstoqueAtual, CustoAtual : Double;
  public
    { Public declarations }
  end;

var
  FormTelaCalculaCustoMensal: TFormTelaCalculaCustoMensal;
  
  RetornaMes: array [0..11] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
  
implementation

uses UnitLibrary, WaitWindow;

{$R *.dfm}

procedure TFormTelaCalculaCustoMensal.LabelDiversosClick(Sender: TObject);

begin
  inherited;
  SQLProduto.Open;
  SQLProdutoSaldoMes.Close;
  SQLProdutoSaldoMes.MacroByName('MFiltro').AsString := 'EMPRICOD = ' + EmpresaPadrao + ' AND PSMEA2MES = ' + FormatDateTime('mm',DataBase.Date);
 // GravaArqTexto(SQLProdutoSaldoMes.RealSQL.Text,'C:\Unit\SaldoMes.txt','NOVO');
  SQLProdutoSaldoMes.Open;
end;

procedure TFormTelaCalculaCustoMensal.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  // Limpa seleção anterior
  SQLProdutoSaldoMes.Close;
  SQLProdutoSaldoMes.MacroByName('MFiltro').AsString := '0=0';

  // Verifica Mes Anterior

  SQLCustoMes.Close;

  if FormatDateTime('mm',DataBase.Date) = '01' then
    SQLCustoMes.MacroByName('Mes').AsString := 'PSMEA2MES = "12" and PSMEA4ANO = "' +  IntToStr(StrToInt(FormatDateTime('yyyy',DataBase.Date)) -1) + '"'
  else
    SQLCustoMes.MacroByName('Mes').AsString := 'PSMEA2MES = "' + FormatFloat('00',StrToFloat(FormatDateTime('mm',DataBase.Date))-1) + '" and PSMEA4ANO = "' +  FormatDateTime('yyyy',DataBase.Date) + '"';

  SQLCustoMes.Open;

  if SQLCustoMes.IsEmpty then
    begin
      Informa('Não foi encontrado o custo do mês anterior, favor verificar!');
      Abort;
      Exit;
    end;

  // Verifica Mes em Questão
  SQLVerificaMes.Close;
  SQLVerificaMes.MacroByName('Mes').AsString := 'PSMEA2MES = "' + FormatDateTime('mm',DataBase.Date) + '" and PSMEA4ANO = "' +  FormatDateTime('yyyy',DataBase.Date) + '"';
  SQLVerificaMes.Open;

  if not SQLVerificaMes.IsEmpty then
    begin
      if Pergunta('NAO','O cálculo para este mês já foi efetuado. Deseja Recalcular ?') then
        begin
          SQLExclusao.Close;
          SQLExclusao.MacroByName('MFiltro').AsString := 'EMPRICOD  = '  + EmpresaPadrao + ' and ' +
                                                         'PSMEA2MES = "' + FormatDateTime('mm',DataBase.Date) + '" and ' +
                                                         'PSMEA4ANO = "' + FormatDateTime('yyyy',DataBase.Date) + '"';
          SQLExclusao.ExecSQL;
        end
      else
        Abort;
    end;

  MakeWindowMessage('Recalculando Custo Médio!');

  SQLProduto.Close;
  SQLProduto.MacroByName('MEmpresa').AsString := 'PRODUTOSALDO.EMPRICOD = ' + EmpresaPadrao;
  SQLProduto.Open;

  SQLSaldo.Close;
  SQLSaldo.MacroByName('MDataMov').AsString   := 'MOVIMENTOESTOQUE.MVESDMOV < "' + FormatDateTime('mm/dd/yyyy',DataBase.Date)+ '"';
  SQLSaldo.Open;
  
  SQLProdutoSaldoMes.Open;
  SQLProduto.First;

  SQLProdutoSaldoMes.DisableControls;                                               

  Progress.Position := 0;
  Progress.Min      := 0;
  Progress.Max      := SQLProduto.RecordCount;
  Progress.Update;

  SQLNotaCompra.Close;
  SQLNotaCompra.MacroByName('MDataRecebimento').AsString := 'Extract(Month From NOCPDRECEBIMENTO) = ' + FormatDateTime('mm',DataBase.Date);
  SQLNotaCompra.Open;

  SQLMovimentoEstoque.Open;
//  SQLProduto.Locate('PRODICOD','6772',[]);
  while not SQLProduto.Eof do
    begin
{
      if SQLProdutoPRODICOD.AsInteger > 6772 then
        Break;
}

      if FormatDateTime('mm',DataBase.Date) = '01' then
        if SQLCustoMes.Locate('EMPRICOD;PSMEA2MES;PSMEA4ANO;PRODICOD',VarArrayOf([EmpresaPadrao,'12',IntToStr(StrToInt(FormatDateTime('yyyy',DataBase.Date)) -1),SQLProdutoPRODICOD.AsString]),[]) then
          UltimoCusto  := SQLCustoMesPSMEN2CUSTOMED.AsFloat
        else
          UltimoCusto  := 0
      else
        if SQLCustoMes.Locate('EMPRICOD;PSMEA2MES;PSMEA4ANO;PRODICOD',VarArrayOf([EmpresaPadrao,FormatFloat('00',StrToFloat(FormatDateTime('mm',DataBase.Date))-1),IntToStr(StrToInt(FormatDateTime('yyyy',DataBase.Date)) -1),SQLProdutoPRODICOD.AsString]),[]) then
          UltimoCusto  := SQLCustoMesPSMEN2CUSTOMED.AsFloat
        else
          UltimoCusto  := 0;


      SQLNotaCompra.Close;
      SQLNotaCompra.ParamByName('PRODICOD').AsString := SQLProdutoPRODICOD.AsString; 
      SQLNotaCompra.Open;

      SQLNotaCompra.First;

//      if SQLProdutoPRODICOD.AsString = '756' then
//        ShowMessage('Aqui');

      if not SQLNotaCompra.IsEmpty then
        begin
          while not SQLNotaCompra.Eof do
            begin
              SQLMovimentoEstoque.Close;
              SQLMovimentoEstoque.Open;
              if (SQLMovimentoEstoqueSALDO.AsFloat > 0) and (SQLNotaCompraVALORCOMPRA.AsFloat > 0) and (UltimoCusto > 0) then
                begin
                  try
                    CustoAtual   :=  (SQLNotaCompraVALORCOMPRA.AsFloat +
                                      (UltimoCusto * SQLMovimentoEstoqueSALDO.AsFloat))
                                      /
                                      (SQLMovimentoEstoqueSALDO.AsFloat + SQLNotaCompraQTDE.AsFloat);
                  except
                    CustoAtual   := UltimoCusto;
                  end;
                end
              else
                CustoAtual     := SQLNotaCompraVALORUNITCOMPRA.AsFloat / SQLNotaCompraQTDE.AsFloat;

              SQLNotaCompra.Next;
              if SQLMovimentoEstoqueSALDO.AsFloat > 0 then
                EstoqueAtual := SQLMovimentoEstoqueSALDO.AsFloat
              else
                EstoqueAtual := 0;

              // Atualiza Custo Medio
              UltimoCusto := CustoAtual;
            end;

          SQLMovEstoqueProd.Close;
          SQLMovEstoqueProd.MacroByName('MFiltro').AsString  := ' MVESDMOV <= "' + FormatDateTime('mm/dd/yyyy',DataBase.Date) + '" and ' +
                                                                ' PRODICOD  = '  + SQLProdutoPRODICOD.AsString;
          SQLMovEstoqueProd.MacroByName('MEmpresa').AsString := ' EMPRICOD  = '  + EmpresaPadrao;
          SQLMovEstoqueProd.Open;

          if SQLMovEstoqueProdSALDO.AsFloat > 0 then
            EstoqueAtual := SQLMovEstoqueProdSALDO.AsFloat
          else
            EstoqueAtual := 0;

        end
      else
        begin
          if FormatDateTime('mm',DataBase.Date) = '01' then
            if SQLCustoMes.Locate('EMPRICOD;PSMEA2MES;PSMEA4ANO;PRODICOD',VarArrayOf([EmpresaPadrao,'12',IntToStr(StrToInt(FormatDateTime('yyyy',DataBase.Date)) -1),SQLProdutoPRODICOD.AsString]),[]) then
              CustoAtual  := SQLCustoMesPSMEN2CUSTOMED.AsFloat
            else
              CustoAtual  := 0
          else
           if SQLCustoMes.Locate('EMPRICOD;PSMEA2MES;PSMEA4ANO;PRODICOD',VarArrayOf([EmpresaPadrao,FormatFloat('00',StrToFloat(FormatDateTime('mm',DataBase.Date))-1),IntToStr(StrToInt(FormatDateTime('yyyy',DataBase.Date)) -1),SQLProdutoPRODICOD.AsString]),[]) then
              CustoAtual  := SQLCustoMesPSMEN2CUSTOMED.AsFloat
           else
             CustoAtual  := 0;

          SQLMovEstoqueProd.Close;
          SQLMovEstoqueProd.MacroByName('MFiltro').AsString  := ' MVESDMOV <= "' + FormatDateTime('mm/dd/yyyy',DataBase.Date) + '" and ' +
                                                                ' PRODICOD  = '  + SQLProdutoPRODICOD.AsString;
          SQLMovEstoqueProd.MacroByName('MEmpresa').AsString := ' EMPRICOD  = '  + EmpresaPadrao;
          SQLMovEstoqueProd.Open;

          if SQLMovEstoqueProdSALDO.AsFloat > 0 then
            EstoqueAtual := SQLMovEstoqueProdSALDO.AsFloat
          else
            EstoqueAtual := 0;
        end;

      SQLProdutoSaldoMes.Append;
      SQLProdutoSaldoMesEMPRICOD.AsString          := EmpresaPadrao;
      SQLProdutoSaldoMesPSMEA4ANO.AsString         := FormatDateTime('yyyy',DataBase.Date);
      SQLProdutoSaldoMesPSMEA2MES.AsString         := FormatDateTime('mm',DataBase.Date);
      SQLProdutoSaldoMesPRODICOD.AsString          := SQLProdutoPRODICOD.AsString;
      SQLProdutoSaldoMesPSMEN3QTDE.AsFloat         := EstoqueAtual;
      SQLProdutoSaldoMesPSMEN2CUSTO.AsFloat        := SQLProdutoPRODN3VLRCUSTO.AsFloat;
      SQLProdutoSaldoMesPSMEN2CUSTOTOT.AsFloat     := SQLProdutoSaldoMesPSMEN3QTDE.AsFloat * SQLProdutoPRODN3VLRCUSTO.AsFloat;
      SQLProdutoSaldoMesPSMEN2COMPRA.AsFloat       := SQLProdutoPRODN3VLRCOMPRA.AsFloat;
      SQLProdutoSaldoMesPSMEN2COMPRATOT.AsFloat    := SQLProdutoSaldoMesPSMEN3QTDE.AsFloat * SQLProdutoPRODN3VLRCOMPRA.AsFloat;
      SQLProdutoSaldoMesPSMEN2COMPRAMED.AsFloat    := SQLProdutoPRODN3VLRCOMPRAMED.AsFloat;
      SQLProdutoSaldoMesPSMEN2COMPRAMEDTOT.AsFloat := SQLProdutoSaldoMesPSMEN3QTDE.AsFloat * SQLProdutoPRODN3VLRCOMPRAMED.AsFloat;
      SQLProdutoSaldoMesPSMEN2CUSTOMED.AsFloat     := CustoAtual;
      SQLProdutoSaldoMesPSMEN2CUSTOMEDTOT.AsFloat  := EstoqueAtual * SQLProdutoSaldoMesPSMEN2CUSTOMED.AsFloat;
      SQLProdutoSaldoMesPENDENTE.AsString          := 'S';
      SQLProdutoSaldoMesREGISTRO.AsDateTime        := Now;
      SQLProdutoSaldoMes.Post;

      SQLProduto.Next;
      Progress.Position := Progress.Position + 1;
      Progress.Update;
      Application.ProcessMessages;
    end;
  DestroyWindow;
  Progress.Position := 0;
  SQLProduto.First;
  SQLProdutoSaldoMes.EnableControls;
  Informa('Rotina Finalizada Com Sucesso!');
end;

end.
