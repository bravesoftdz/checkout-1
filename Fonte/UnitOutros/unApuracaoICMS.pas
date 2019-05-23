unit unApuracaoICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, RXDBCtrl, DB,
  IBCustomDataSet, IBQuery, RDprint;

type
  TFrmApuracaoICMS = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibCupons: TIBQuery;
    ibNotas: TIBQuery;
    RDprint: TRDprint;
    ibCuponsCUPOA13ID: TIBStringField;
    ibCuponsEMPRICOD: TIntegerField;
    ibCuponsTERMICOD: TIntegerField;
    ibCuponsCUPOICOD: TIntegerField;
    ibCuponsCUPODEMIS: TDateTimeField;
    ibCuponsCLIEA13ID: TIBStringField;
    ibCuponsPLRCICOD: TIntegerField;
    ibCuponsVENDICOD: TIntegerField;
    ibCuponsCONVICOD: TIntegerField;
    ibCuponsCUPOCSTATUS: TIBStringField;
    ibCuponsCUPON2TOTITENS: TFloatField;
    ibCuponsCUPON2DESC: TFloatField;
    ibCuponsCUPON2ACRESC: TFloatField;
    ibCuponsCUPON2TOTITENSRET: TFloatField;
    ibCuponsCUPOINRO: TIntegerField;
    ibCuponsCUPOCTIPOPADRAO: TIBStringField;
    ibCuponsCUPON2CONVTAXA: TFloatField;
    ibCuponsCUPOINROORDCOMPRA: TIntegerField;
    ibCuponsCUPOA13IDTROCA: TIBStringField;
    ibCuponsCUPON2VLRCOMISSAO: TFloatField;
    ibCuponsCUPOA20CODANT: TIBStringField;
    ibCuponsCUPODCANC: TDateTimeField;
    ibCuponsCUPON2JUROATRAS: TFloatField;
    ibCuponsCUPON2MULTAATRAS: TFloatField;
    ibCuponsCUPODPAGTOCONSIG: TDateTimeField;
    ibCuponsCUPON3BONUSTROCA: TFloatField;
    ibCuponsCUPODENTREGA: TDateTimeField;
    ibCuponsTPVDICOD: TIntegerField;
    ibCuponsUSUAICODCANC: TIntegerField;
    ibCuponsPENDENTE: TIBStringField;
    ibCuponsREGISTRO: TDateTimeField;
    ibCuponsCUPON3CREDTAXA: TFloatField;
    ibCuponsCUPOCCONSIG: TIBStringField;
    ibCuponsCUPOV254OBS: TIBStringField;
    ibCuponsCUPOA30DATACARTAO: TIBStringField;
    ibCuponsCUPOA30HORACARTAO: TIBStringField;
    ibCuponsCUPOA30NSUPROVEDOR: TIBStringField;
    ibCuponsCUPOA30NSUINSTITUICAO: TIBStringField;
    ibCuponsCUPON2DESCITENS: TFloatField;
    ibCuponsCATCA13ID: TIBStringField;
    ibCuponsAVALA13ID: TIBStringField;
    ibCuponsCFOPA5COD: TIBStringField;
    ibCuponsCUPOA13IDCUPNEG: TIBStringField;
    ibCuponsCUPODQUITACAO: TDateTimeField;
    ibCuponsCUPON2BASEICMS: TFloatField;
    ibCuponsCUPON2VLRICMS: TFloatField;
    ibCuponsOPESICOD: TIntegerField;
    ibCuponsPLCTA15CODCRED: TIBStringField;
    ibCuponsPLCTA15CODDEB: TIBStringField;
    ibCuponsCLIENTENOME: TIBStringField;
    ibCuponsCLIENTECNPJ: TIBStringField;
    ibCuponsCLIENTEENDE: TIBStringField;
    ibCuponsCLIENTECIDA: TIBStringField;
    ibCuponsCLIEA60RAZAOSOC: TIBStringField;
    edtDataini: TDateEdit;
    edtDataFim: TDateEdit;
    CheckProd: TCheckBox;
    ibItens: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmApuracaoICMS: TFrmApuracaoICMS;

implementation

uses unDataModule;

{$R *.dfm}

procedure TFrmApuracaoICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmApuracaoICMS := nil;
  Action := caFree;
end;

procedure TFrmApuracaoICMS.BitBtn1Click(Sender: TObject);
var tCbase, tCicms, tCtotal : extended;
    tNbase, tNicms, tNtotal : extended;
    Linha, Coluna: Integer;
begin
  BitBtn1.Enabled := False;
  if Dm.ibTrans.InTransaction then
    Dm.ibTrans.Commit;
  Dm.ibTrans.StartTransaction;
  ibCupons.Prepare;
  ibCupons.ParamByName('xDataIni').AsDate := edtDataIni.Date;
  ibCupons.ParamByName('xDataFim').AsDate := edtDataFim.Date;
  ibCupons.Open;

  tCBase := 0;
  tCicms := 0;
  tCtotal:= 0;
  tNBase := 0;
  tNicms := 0;
  tNtotal:= 0;
  ibItens.SQL.Text := 'Select c.*, p.PRODA30ADESCRREDUZ from cupomitem c left join produto p on p.prodicod = c.prodicod where CUPOA13ID = :xCup';
  RDprint.Abrir;
  Try
    IF (RadioGroup1.ItemIndex = 0) OR (RadioGroup1.ItemIndex = 2) Then
    begin
      while not ibcupons.Eof do
      begin
        linha := 1;
        RDprint.ImpF(linha,1,'Relatorio de Apuração de ICMS',[]); inc(linha);
        RDprint.ImpF(linha,1,'Periodo de: '+edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
        RDprint.ImpF(linha,1,'CUPONS FISCAIS',[]);inc(linha);
        RDprint.ImpF(linha,1,'N.Nota  Cliente                                   R$ Total    R$ Base    R$ ICMS',[]); inc(linha);
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
        while (not ibcupons.Eof) and (linha <= 64) do
        begin
          RDprint.Imp (Linha,1,StrTm(FormatFloat('######',ibcupons.Fieldbyname('cupoinro').value),6,' ',0));
          RDprint.ImpF(Linha,8,Copy(ibcupons.fieldbyname('cliea60razaosoc').AsString,0,40),[]);
          RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',ibcupons.Fieldbyname('cupon2totitens').value),10,' ',0));
          tCtotal := tCtotal + ibcupons.Fieldbyname('cupon2totitens').value;
          if not ibcupons.Fieldbyname('cupon2baseicms').IsNull then
          begin
            RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',ibcupons.Fieldbyname('cupon2baseicms').value),10,' ',0));
            tCbase := tCbase + ibcupons.Fieldbyname('cupon2baseicms').value;
          end;
          if not ibcupons.Fieldbyname('cupon2vlricms').isnull then
          begin
            RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',ibcupons.Fieldbyname('cupon2vlricms').value),10,' ',0));
            tCicms := tCicms + ibcupons.Fieldbyname('cupon2vlricms').value;
          end;
          inc(linha);
          if CheckProd.Checked then
          begin
            ibItens.Prepare;
            ibItens.ParamByName('xcup').asstring := ibCupons.Fieldbyname('cupoa13id').AsString;
            ibitens.Open;
            while (not ibItens.Eof) do
            begin
              RDprint.Imp (Linha,1,ibItens.Fieldbyname('PRODA30ADESCRREDUZ').asstring);
              RDprint.Imp (Linha,30,StrTm(FormatFloat('###,##0.00',ibitens.Fieldbyname('cpitn3qtd').value),10,' ',0));
              RDprint.Imp (Linha,40,StrTm(FormatFloat('###,##0.00',ibitens.Fieldbyname('CPITN3VLRUNIT').value),10,' ',0));
              RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',ibitens.Fieldbyname('cpitn3qtd').value*ibitens.Fieldbyname('CPITN3VLRUNIT').value),10,' ',0));
              RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',ibitens.Fieldbyname('CPITN2BASEICMS').value),10,' ',0));
              RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',ibitens.Fieldbyname('CPITN2VLRICMS').value),10,' ',0));
              inc(linha);
              if linha > 64 then
              begin
                RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
                RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',tCtotal),10,' ',0));
                RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',tCbase),10,' ',0));
                RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',tCicms),10,' ',0));
                RDprint.Novapagina;
                linha:= 1;
              end;
              ibitens.Next;
            end;
            inc(linha);
            ibitens.Close;
          end;
          ibCupons.Next;
        end;
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
        RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',tCtotal),10,' ',0));
        RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',tCbase),10,' ',0));
        RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',tCicms),10,' ',0));
        RDprint.Novapagina;
      end;
    end;
    // Imprime Notas
    if RadioGroup1.ItemIndex > 0 then
    begin
      ibNotas.Prepare;
      ibNotas.ParamByName('xDataIni').AsDate := edtDataIni.Date;
      ibNotas.ParamByName('xDataFim').AsDate := edtDataFim.Date;
      ibNotas.Open;

      while not ibNotas.Eof do
      begin
        linha := 1;
        RDprint.ImpF(linha,1,'Relatorio de Apuração de ICMS',[]); inc(linha);
        RDprint.ImpF(linha,1,'Periodo de: '+edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
        RDprint.ImpF(linha,1,'NOTAS FISCAIS',[]);inc(linha);
        RDprint.ImpF(linha,1,'N.Nota  Cliente                                   R$ Total    R$ Base    R$ ICMS',[]); inc(linha);
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);

        while (not ibnotas.Eof) and (linha <= 64) do
        begin
          RDprint.Imp (Linha,1,StrTm(FormatFloat('######',ibnotas.Fieldbyname('NOFIINUMERO').value),6,' ',0));
          RDprint.ImpF(Linha,8,Copy(ibnotas.fieldbyname('cliea60razaosoc').AsString,0,40),[]);
          RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',ibnotas.Fieldbyname('NOFIN2VLRNOTA').value),10,' ',0));
          tNtotal := tNtotal + ibnotas.Fieldbyname('NOFIN2VLRNOTA').value;
          if not ibnotas.Fieldbyname('NOFIN2BASCALCICMS').IsNull then
          begin
            RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',ibnotas.Fieldbyname('NOFIN2BASCALCICMS').value),10,' ',0));
            tNbase := tNbase + ibnotas.Fieldbyname('NOFIN2BASCALCICMS').value;
          end;
          if not ibnotas.Fieldbyname('NOFIN2VLRICMS').isnull then
          begin
            RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',ibnotas.Fieldbyname('NOFIN2VLRICMS').value),10,' ',0));
            tNicms := tNicms + ibnotas.Fieldbyname('NOFIN2VLRICMS').value;
          end;
          inc(linha);
          ibnotas.Next;
        end;
        RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
        RDprint.Imp (Linha,50,StrTm(FormatFloat('###,##0.00',tNtotal),10,' ',0));
        RDprint.Imp (Linha,60,StrTm(FormatFloat('###,##0.00',tNbase),10,' ',0));
        RDprint.Imp (Linha,70,StrTm(FormatFloat('###,##0.00',tNicms),10,' ',0));
        RDprint.Novapagina;
      end;
      linha := 1;
      RDprint.ImpF(linha,1,'Relatorio de Apuração de ICMS',[]); inc(linha);
      RDprint.ImpF(linha,1,'Periodo de: '+edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
      RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
      RDprint.ImpF(linha,1,'CUPONS FISCAIS  + NOTAS FISCAIS ',[]);inc(linha);
      RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha,3);
      RDprint.ImpF(linha,1,'RESUMO DE APURAÇÃO ICMS',[]);inc(linha,2);

      RDprint.Imp (Linha,1,'R$ TOTAL NOTAS + CUPONS:    '+StrTm(FormatFloat('###,##0.00',tNtotal+tCtotal),10,' ',0));INC(LINHA,2);
      RDprint.Imp (Linha,1,'R$ TOTAL BASE CALCULO ICMS: '+StrTm(FormatFloat('###,##0.00',tNbase+tNbase),10,' ',0));  INC(LINHA,2);
      RDprint.Imp (Linha,1,'R$ TOTAL ICMS CALCULADO:    '+StrTm(FormatFloat('###,##0.00',tNicms+tNicms),10,' ',0));               INC(LINHA,2);
    end;

    RDprint.Fechar;
  except on e:exception do
  begin
    MessageDlg('Falha ao Gerar o Relatório:'+#13+#10+e.message, mtError, [mbOK], 0);
    RDPrint.Fechar;
  end;
  end;
  BitBtn1.Enabled := TRUE;
end;

function TFrmApuracaoICMS.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
begin
  if Posicao = 0 then // antes do texto (a esquerda)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,0);

  end else if posicao = 1 then // depois do texto (a direita)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,Length(xStr));

  end;
  Result := xStr;
end;


procedure TFrmApuracaoICMS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_Dialogkey,VK_Tab,0);
  end;
end;

end.
