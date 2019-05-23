unit unTotalizaReducoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RDprint, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls,
  Buttons, Mask, ToolEdit, RxMemDS;

type
  TFormTotalizaReducoes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtDataini: TDateEdit;
    edtDataFim: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    ibMapa: TIBQuery;
    ibMapaREDUDEMIS: TDateTimeField;
    ibMapaREDUN3ALIQ1: TFloatField;
    ibMapaREDUN3BASE1: TFloatField;
    ibMapaREDUN3IMPO1: TFloatField;
    ibMapaREDUN3ALIQ2: TFloatField;
    ibMapaREDUN3BASE2: TFloatField;
    ibMapaREDUN3IMPO2: TFloatField;
    ibMapaREDUN3ALIQ3: TFloatField;
    ibMapaREDUN3BASE3: TFloatField;
    ibMapaREDUN3IMPO3: TFloatField;
    ibMapaREDUN3ALIQ4: TFloatField;
    ibMapaREDUN3BASE4: TFloatField;
    ibMapaREDUN3IMPO4: TFloatField;
    ibMapaREDUN3ALIQ5: TFloatField;
    ibMapaREDUN3BASE5: TFloatField;
    ibMapaREDUN3IMPO5: TFloatField;
    ibMapaREDUN3ALIQ6: TFloatField;
    ibMapaREDUN3BASE6: TFloatField;
    ibMapaREDUN3IMPO6: TFloatField;
    ibMapaREDUN3VENDABRUTA: TFloatField;
    ibMapaREDUN3GRANDETOTAL: TFloatField;
    ibMapaREDUA13ID: TIBStringField;
    ibMapaEMPRICOD: TIntegerField;
    ibMapaREDUICOD: TIntegerField;
    ibMapaECFA13ID: TIBStringField;
    ibMapaREDUICONTINICIAL: TIntegerField;
    ibMapaREDUICONTFINAL: TIntegerField;
    ibMapaREDUICONTREDUZ: TIntegerField;
    ibMapaREDUICONTREINICIO: TIntegerField;
    ibMapaREDUN3ISSQN: TFloatField;
    ibMapaREDUN3SUBST: TFloatField;
    ibMapaREDUN3BASEISS: TFloatField;
    RDprint: TRDprint;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    RxMemoryData1: TRxMemoryData;
    CheckCabeca: TCheckBox;
    procedure Cabecalho;
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTotalizaReducoes: TFormTotalizaReducoes;
  Linha: Integer;
implementation

uses unDataModule;

{$R *.dfm}

procedure TFormTotalizaReducoes.Cabecalho;
begin
    RDprint.ImpF(linha,1,'Mapa Resumo - Digitação das Reduções Z -',[]); inc(linha);
    RDprint.ImpF(linha,1,'Periodo de: '+edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
    RDprint.ImpF(linha,1,'Empresa   : '+ DBLookupComboBox2.Text,[]);inc(linha);
    RDprint.ImpF(Linha,1,'CNPJ: '+ ibEmpresa.fieldbyname('EMPRA14CGC').asstring + '  -  IE: '+ibEmpresa.fieldbyname('EMPRA20IE').asstring,[]);inc(linha);
    RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
    RDprint.ImpF(linha,1,'Data               % Aliquota              R$ Base              R$ Imposto      ',[]); inc(linha);
    RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
end;

function TFormTotalizaReducoes.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
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



procedure TFormTotalizaReducoes.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_Dialogkey,VK_Tab,0);
  end;

end;

procedure TFormTotalizaReducoes.DBLookupComboBox2Enter(Sender: TObject);
begin
  if not ibEmpresa.Active then
    ibEmpresa.Open;
end;

procedure TFormTotalizaReducoes.FormCreate(Sender: TObject);
begin
  if Dm.ibTrans.InTransaction then
    Dm.ibTrans.Commit;
  Dm.ibTrans.StartTransaction;

end;

procedure TFormTotalizaReducoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Dm.ibTrans.InTransaction then
    Dm.ibTrans.Commit;
  Action := caFree;

end;

procedure TFormTotalizaReducoes.BitBtn1Click(Sender: TObject);
var tCbase1, tCicms1, tCbase2, tCicms2, tCbase3, tCicms3, tCbase4, tCicms4, tCbase5, tCicms5, tCbase6, tCicms6: extended;
    baseiss,ttbaseiss, ttbase, tticms, DBase, DIcms : Extended;
    diaBaseII,diaValorII,DiaBase1,DiaIcms1,DiaBase2,DiaIcms2,DiaBase3,DiaIcms3,DiaBase4,DiaIcms4,DiaBase5,DiaIcms5,DiaBase6,DiaIcms6,diavndbruta:Extended;
    base1, base2, base3, base4, base5, base6, xText : String;
    vData : TDateTime;
begin
  ibMapa.Close;
  ibmapa.ParamByName('xDataIni').AsDate := edtDataIni.Date;
  ibmapa.ParamByName('xDataFim').AsDate := edtDataFim.Date;
  ibMapa.Open;
  RDprint.Abrir;
  tCBase1:= 0;
  tCicms1:= 0;
  tCBase2:= 0;
  tCicms2:= 0;
  tCBase3:= 0;
  tCicms3:= 0;
  tCBase4:= 0;
  tCicms4:= 0;
  tCBase5:= 0;
  tCicms5:= 0;
  tCBase6:= 0;
  tCicms6:= 0;
  ttbase := 0;
  tticms := 0;
  ttBaseIss:= 0;
  BaseIss:= 0;
  Base1  := '';
  Base2  := '';
  Base3  := '';
  Base4  := '';
  Base5  := '';
  Base6  := '';
  linha  := 0;
  diaBaseII   := 0;
  diaValorII  := 0;
  DiaBase1    := 0;
  DiaIcms1    := 0;
  DiaBase2    := 0;
  DiaIcms2    := 0;
  DiaBase3    := 0;
  DiaIcms3    := 0;
  DiaBase4    := 0;
  DiaIcms4    := 0;
  DiaBase5    := 0;
  DiaIcms5    := 0;
  DiaBase6    := 0;
  DiaIcms6    := 0;

  while not ibmapa.Eof do
  begin
    linha := 1;
    cabecalho;
    while (not ibmAPA.Eof) and (linha <= 64) do
    begin
      xText:= '       ';
      vData := ibMapa.Fieldbyname('REDUDEMIS').AsDateTime;

      while (not ibMapa.Eof) and (ibMapa.Fieldbyname('REDUDEMIS').AsDateTime = vdata ) do
      begin
        if ibMapa.Fieldbyname('REDUN3BASEISS').VALUE > 0 THEN
        Begin
          ttBaseiss := ttBaseiss+ IBMAPA.fieldbyname('REDUN3baseiss').value;
          baseiss   := baseiss  + IBMAPA.fieldbyname('REDUN3issqn').value;
          diaBaseII := diaBaseII  + IBMAPA.fieldbyname('REDUN3baseiss').value;
          diavalorII:= diavalorII + IBMAPA.fieldbyname('REDUN3issqn').value;
        End;

        if IBMAPA.fieldbyname('REDUN3ALIQ1').asstring <> '' then
        begin
          if (Base1 <> '') and (base1 <> IBMAPA.fieldbyname('REDUN3ALIQ1').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 01 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base1 := IBMAPA.fieldbyname('REDUN3ALIQ1').asstring;
          tCBase1:= tCBase1 + IBMAPA.fieldbyname('REDUN3base1').value;
          tCicms1:= tCicms1 + IBMAPA.fieldbyname('REDUN3impo1').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base1').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo1').value;
          DiaBase1:= DiaBase1 +IBMAPA.fieldbyname('REDUN3base1').value;
          DiaIcms1:= DiaICMS1 +IBMAPA.fieldbyname('REDUN3impo1').value;
        end;
        if IBMAPA.fieldbyname('REDUN3ALIQ2').asstring <> '' then
        begin
          if (Base2 <> '') and (base2 <> IBMAPA.fieldbyname('REDUN3ALIQ2').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 02 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base2 := IBMAPA.fieldbyname('REDUN3ALIQ2').asstring;
          tCBase2:= tCBase2 + IBMAPA.fieldbyname('REDUN3base2').value;
          tCicms2:= tCicms2 + IBMAPA.fieldbyname('REDUN3impo2').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base2').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo2').value;
          DiaBase2:= DiaBase2 +IBMAPA.fieldbyname('REDUN3base2').value;
          DiaIcms2:= DiaICMS2 +IBMAPA.fieldbyname('REDUN3impo2').value;
        end;
        if IBMAPA.fieldbyname('REDUN3ALIQ3').asstring <> '' then
        begin
          if (Base3 <> '') and (base3 <> IBMAPA.fieldbyname('REDUN3ALIQ3').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 03 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base3 := IBMAPA.fieldbyname('REDUN3ALIQ3').asstring;
          tCBase3:= tCBase3 + IBMAPA.fieldbyname('REDUN3base3').value;
          tCicms3:= tCicms3 + IBMAPA.fieldbyname('REDUN3impo3').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base3').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo3').value;
          DiaBase3:= DiaBase3 + IBMAPA.fieldbyname('REDUN3base3').value;
          DiaIcms3:= DiaICMS3 + IBMAPA.fieldbyname('REDUN3impo3').value;
        end;
        if IBMAPA.fieldbyname('REDUN3ALIQ4').asstring <> '' then
        begin
          if (Base4 <> '') and (base4 <> IBMAPA.fieldbyname('REDUN3ALIQ4').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 04 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base4 := IBMAPA.fieldbyname('REDUN3ALIQ4').asstring;
          tCBase4:= tCBase4 + IBMAPA.fieldbyname('REDUN3base4').value;
          tCicms4:= tCicms4 + IBMAPA.fieldbyname('REDUN3impo4').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base4').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo4').value;
          DiaBase4:= DiaBase4 + IBMAPA.fieldbyname('REDUN3base4').value;
          DiaIcms4:= DiaICMS4 + IBMAPA.fieldbyname('REDUN3impo4').value;
        end;

        if IBMAPA.fieldbyname('REDUN3ALIQ5').asstring <> '' then
        begin
          if (Base5 <> '') and (base5 <> IBMAPA.fieldbyname('REDUN3ALIQ5').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 05 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base5 := IBMAPA.fieldbyname('REDUN3ALIQ5').asstring;
          tCBase5:= tCBase5 + IBMAPA.fieldbyname('REDUN3base5').value;
          tCicms5:= tCicms5 + IBMAPA.fieldbyname('REDUN3impo5').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base5').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo5').value;
          DiaBase5:= DiaBase5 + IBMAPA.fieldbyname('REDUN3base5').value;
          DiaIcms5:= DiaICMS5 + IBMAPA.fieldbyname('REDUN3impo5').value;
        end;
        if IBMAPA.fieldbyname('REDUN3ALIQ6').asstring <> '' then
        begin
          if (Base6 <> '') and (base6 <> IBMAPA.fieldbyname('REDUN3ALIQ6').asstring) then
          begin
            ShowMessage('Atenção...  Aliquota 06 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
            ' Difere da Aliquota Inicial');
            RDprint.Abortar;
            Exit;
          end;
          base6 := IBMAPA.fieldbyname('REDUN3ALIQ6').asstring;
          tCBase6:= tCBase6 + IBMAPA.fieldbyname('REDUN3base6').value;
          tCicms6:= tCicms6 + IBMAPA.fieldbyname('REDUN3impo6').value;
          ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base6').value;
          ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo6').value;
          DiaBase6:= DiaBase6 + IBMAPA.fieldbyname('REDUN3base6').value;
          DiaIcms6:= DiaICMS6 + IBMAPA.fieldbyname('REDUN3impo6').value;
        end;
        diavndbruta := diavndbruta + ibMapa.Fieldbyname('REDUN3VENDABRUTA').value;
        ibMapa.Next;
      end;

      RDprint.Imp(Linha,1,DateToStr(vdata));

      if diaBaseII > 0 then
      begin
          RDprint.Imp(Linha,28,'ISSQN');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBaseII),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaValorII),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;

      if diaBase1 > 0 then
      begin
          RDprint.Imp(Linha,28,Base1+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase1),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms1),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      if diaBase2 > 0 then
      begin
          RDprint.Imp(Linha,28,Base2+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase2),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms2),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      if diaBase3 > 0 then
      begin
          RDprint.Imp(Linha,28,Base3+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase3),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms3),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      if diaBase4 > 0 then
      begin
          RDprint.Imp(Linha,28,Base4+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase4),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms4),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      if diaBase5 > 0 then
      begin
          RDprint.Imp(Linha,28,Base5+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase5),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms5),10,' ',0));
          inc(linha);
      end;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      if diaBase6 > 0 then
      begin
          RDprint.Imp(Linha,28,Base6+'%');
          RDprint.Imp(Linha,38,StrTm(FormatFloat('###,##0.00',DiaBase6),10,' ',0));
          RDprint.Imp(Linha,58,StrTm(FormatFloat('###,##0.00',DiaIcms6),10,' ',0));
          inc(linha);
      end;
      RDprint.Imp(Linha,48,'Total Venda Bruta: '+StrTm(FormatFloat('###,##0.00',diavndbruta),10,' ',0));
      inc(linha);

      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
      end;


      vData := ibMapa.Fieldbyname('REDUDEMIS').AsDateTime;
      diaBaseII   := 0;
      diaValorII  := 0;
      DiaBase1    := 0;
      DiaIcms1    := 0;
      DiaBase2    := 0;
      DiaIcms2    := 0;
      DiaBase3    := 0;
      DiaIcms3    := 0;
      DiaBase4    := 0;
      DiaIcms4    := 0;
      DiaBase5    := 0;
      DiaIcms5    := 0;
      DiaBase6    := 0;
      DiaIcms6    := 0;
      diavndbruta := 0;

    End;
  End;

    RDprint.Novapagina;
  linha := 1;
  RDprint.ImpF(linha,1,'Mapa Resumo - Digitação das Reduções Z -',[]); inc(linha);
  RDprint.ImpF(linha,1,'Periodo de: '+ edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
  RDprint.ImpF(linha,1,'Empresa   : '+ DBLookupComboBox2.Text,[]);inc(linha);
  RDprint.ImpF(Linha,1,'CNPJ: '+ ibEmpresa.fieldbyname('EMPRA14CGC').asstring + '  -  IE: '+ibEmpresa.fieldbyname('EMPRA20IE').asstring,[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  RDprint.ImpF(Linha,1,'                  R E S U M O    G E R A L   D O   P E R I O D O                ',[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  RDprint.ImpF(linha,1,'Data     ',[]); inc(linha);
  RDprint.ImpF(linha,1,'          Aliq.    R$ Base   R$ Icms',[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  ttbase:= 0;
  tticms:= 0;

  if baseiss > 0 then
  begin
    RDprint.Imp(Linha,10,'ISSQN');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',ttBaseiss),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',baseiss),10,' ',0)); inc(linha,2);
  end;

  if base1 <> '' then
  begin
    RDprint.Imp(Linha,10,base1+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase1),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS1),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase1;
    tticms := tticms + tcicms1;
  end;
  if base2 <> '' then
  begin
    RDprint.Imp(Linha,10,base2+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase2),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS2),10,' ',0));inc(linha);
    ttbase := ttbase + tcBase2;
    tticms := tticms + tcicms2;
  end;
  if base3 <> '' then
  begin
    RDprint.Imp(Linha,10,base3+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase3),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS3),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase3;
    tticms := tticms + tcicms3;
  end;
  if base4 <> '' then
  begin
    RDprint.Imp(Linha,10,base4+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase4),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS4),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase4;
    tticms := tticms + tcicms4;
  end;
  if base5 <> '' then
  begin
    RDprint.Imp(Linha,10,base5+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase5),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS5),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase5;
    tticms := tticms + tcicms5;
  end;
  if base6 <> '' then
  begin
    RDprint.Imp(Linha,10,Base6+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase6),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS6),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase6;
    tticms := tticms + tcicms6;
  end;
//  RDprint.Imp(Linha,16,'----------');
//  RDprint.Imp(Linha,28,'----------'); inc(linha);
//  RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',ttBase),10,' ',0));
//  RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',ttICMS),10,' ',0)); inc(linha);

  RDprint.Fechar;

end;

end.
