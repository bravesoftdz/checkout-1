unit unCntReceberFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, DB, IBCustomDataSet, IBQuery,
  DBCtrls, ComCtrls, RDprint, IBSQL;

type
  TFormCntReceberFiltro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ibLocalCli: TIBQuery;
    dtsLocalcli: TDataSource;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Dataini: TDateEdit;
    datafim: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibCntReceber: TIBQuery;
    dtsCntReceber: TDataSource;
    ProgressBar1: TProgressBar;
    CheckBox1: TCheckBox;
    CheckFatura: TCheckBox;
    RDprint: TRDprint;
    Memo1: TMemo;
    Label5: TLabel;
    ComboCidade: TDBLookupComboBox;
    ibCidade: TIBQuery;
    dtsCidade: TDataSource;
    CheckJuros: TCheckBox;
    IBSQL1: TIBSQL;
    ibEmpresaEMPRICOD: TIntegerField;
    ibEmpresaEMPRA60RAZAOSOC: TIBStringField;
    ibEmpresaEMPRA60NOMEFANT: TIBStringField;
    ibEmpresaEMPRCMATRIZFILIAL: TIBStringField;
    ibEmpresaEMPRA20FONE: TIBStringField;
    ibEmpresaEMPRA20FAX: TIBStringField;
    ibEmpresaEMPRA60END: TIBStringField;
    ibEmpresaEMPRA60BAI: TIBStringField;
    ibEmpresaEMPRA60CID: TIBStringField;
    ibEmpresaEMPRA2UF: TIBStringField;
    ibEmpresaEMPRA8CEP: TIBStringField;
    ibEmpresaEMPRCFISJURID: TIBStringField;
    ibEmpresaEMPRA14CGC: TIBStringField;
    ibEmpresaEMPRA20IE: TIBStringField;
    ibEmpresaEMPRA11CPF: TIBStringField;
    ibEmpresaEMPRA10RG: TIBStringField;
    ibEmpresaEMPRA60EMAIL: TIBStringField;
    ibEmpresaEMPRA60URL: TIBStringField;
    ibEmpresaPENDENTE: TIBStringField;
    ibEmpresaREGISTRO: TDateTimeField;
    ibEmpresaEMPRA100INFSPC: TIBStringField;
    ibEmpresaEMPRBLOGOTIPO: TBlobField;
    ibEmpresaEMPRA15CODEAN: TIBStringField;
    ibEmpresaEMPRA60CONTATO: TIBStringField;
    ibEmpresaEMPRA20IMUNIC: TIBStringField;
    ibEmpresaEMPRCLUCROREAL: TIBStringField;
    ibEmpresaEMPRN2VLRFUNDOPROMO: TFloatField;
    ibEmpresaEMPRA15REGJUNTA: TIBStringField;
    ibEmpresaNOMETECNICOAGRIC: TIBStringField;
    ibEmpresaENDTECNICOAGRIC: TIBStringField;
    ibEmpresaCIDTECNICOAGRIC: TIBStringField;
    ibEmpresaCPFTECNICOAGRIC: TIBStringField;
    ibEmpresaCREATECNICOAGRIC: TIBStringField;
    ibEmpresaSERIE: TIBStringField;
    ibEmpresaARTIGO: TIBStringField;
    ibEmpresaNRORECEITATUAL: TIntegerField;
    ibEmpresaNRORECEITAULT: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    Function ImprimeCab(var i:Integer):Integer;
    Function CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr : double; DVenc, DPag, DVencOrig : TDateTime; Toler : integer; Tipo, Cupom, Parc : string) : Double;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCntReceberFiltro: TFormCntReceberFiltro;

implementation

uses unDataModule, UnFileDemo;

{$R *.dfm}

procedure TFormCntReceberFiltro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key:= #0;
    perform(cm_dialogkey,vk_tab,0);
  end;

end;

procedure TFormCntReceberFiltro.FormCreate(Sender: TObject);
begin
  if not Dm.ibTrans.InTransaction then
    Dm.ibTrans.StartTransaction;
  ibLocalCli.Open;
  ibEmpresa.Open;
  ibCidade.Open;
end;

procedure TFormCntReceberFiltro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibEmpresa.Close;
  ibLocalCli.Close;
  dm.ibTrans.Commit;
end;

procedure TFormCntReceberFiltro.BitBtn1Click(Sender: TObject);
var xText, Frase , xStr: string;
    xTexto: TextFile;
    i, lin, linha: Integer;
    xcli, xnomecli:String;
    TotaldoCliente, TotalGeral, TotalJuros, JurosGeral: Extended;
begin
  ProgressBar1.Position :=0;
  ProgressBar1.Refresh;
  RDPrint.TamanhoQteLinhas := 66;
  if CheckFatura.Checked then
    CheckBox1.Checked := false;

  TotalGeral := 0;
  xNomecli := '';
  BitBtn1.Enabled :=False;
  if not Dm.ibTrans.InTransaction then
    Dm.ibTrans.StartTransaction;
  ibCntReceber.close;


  xtext := ' where ((R.CTRCCSTATUS <> '+#39+'C'+#39+') or (R.CTRCCSTATUS is null)) and '+
  '(R.CTRCA5TIPOPADRAO not in (' +#39+'CHQ'+#39+','+#39+'CHQV'+#39+','+#39+'CHQ'+#39+')) and '+
  '(R.CTRCN2TOTREC < R.CTRCN2VLR or R.CTRCN2TOTREC is null) ';

  xText := xText + 'and R.cliea13id = :cliea13id ';


  if (datafim.text <> '  /  /    ') OR (DATAINI.Text <> '  /  /    ') then
  begin
    if xText <> '' then
      xText := xText + ' and R.CTRCDVENC >= :xdataini and R.CTRCDVENC <= :xDatafim '
    else
      xText := ' Where CTRCDVENC >= :xdataini and CTRCDVENC <= :xDatafim ';
  end;

  xText := xText + ' and r.ctrcn2totrec < r.ctrcn2vlr ';

  ibCntReceber.Sql.Text := 'Select R.* from CONTASRECEBER R '+xText + ' order by  R.CTRCDVENC';
  ibCntReceber.Prepare;

  if (DBLookupComboBox1.Text <> '') or (ComboCidade.Text <> '') then
  begin
    xCli := DBLookupComboBox1.KeyValue;
    xNomecli:= DBLookupComboBox1.Text;
    ibLocalCli.close;
    iblocalcli.SQL.text := 'Select CLIEA13ID, CLIEA60RAZAOSOC, CLIEA15FONE1, CLIEA15FONE2, CLIEA60ENDRES, CLIEA60CIDRES, CLIEA60BAIRES  from cliente '+
    'where cliea13id =:xclie order by cliea60razaosoc';
    if ComboCidade.Text <> '' then
    Begin
      if (DBLookupComboBox1.Text <> '') then
        iblocalcli.SQL.text := 'Select CLIEA13ID, CLIEA60RAZAOSOC, CLIEA15FONE1, CLIEA15FONE2, CLIEA60ENDRES, CLIEA60CIDRES, CLIEA60BAIRES  from cliente '+
        'where cliea13id =:xclie  and CLIEA60CIDRES = :xCidade order by cliea60razaosoc'
      else
        iblocalcli.SQL.text := 'Select CLIEA13ID, CLIEA60RAZAOSOC,  CLIEA15FONE1, CLIEA15FONE2, CLIEA60ENDRES, CLIEA60CIDRES, CLIEA60BAIRES  from cliente '+
        'where CLIEA60CIDRES = :xCidade order by cliea60razaosoc'
    end;
    if ( xNomecli <> '') then
      iblocalcli.ParamByName('xclie').asstring := xcli;
    if ComboCidade.Text <> '' then
      iblocalcli.ParamByName('xcidade').asstring := ComboCidade.Text;

    iblocalcli.Prepare;
    iblocalcli.open;
  end;


  if dataini.text <> '  /  /    ' then
  begin
    ibCntReceber.ParamByName('xdataini').AsDateTime := Dataini.Date;
    ibCntReceber.ParamByName('xdatafim').AsDateTime := DataFim.Date;
  end;
  ibLocalCli.Last;
  ProgressBar1.Max := ibLocalCli.RecordCount;
  Progressbar1.Position := 0;
  ibLocalCli.First;
  ibCntReceber.Open;

  try
    if not CheckFatura.Checked then
    begin
      i:= 0;
      Self.Cursor :=  crAppStart;
      AssignFile(xTexto,UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\RELATORIO.txt');
      ReWrite(xTexto);
      TotaldoCliente := 0;
      WriteLn(xTexto,ibEmpresa.Fieldbyname('empra60razaosoc').asstring); inc(i);
      Writeln(xTexto,'Data: '+DateToStr(date)); inc(i);
      WriteLn(xTexto,'Relatório de Contas a Receber Vencidas');inc(i);
      if ComboCidade.Text <> '' then
        WriteLn(xTexto,'Clientes da Cidade de: '+combocidade.text);inc(i);

      WriteLn(xTexto,'Periodo de: '+Dataini.text + ' a '+datafim.text);inc(i);
      WriteLn(xTexto,'-----------------------------------------------------------------------------------------');inc(i);
      If not CheckBox1.Checked then
      begin
        WriteLn(xTexto,'Nome do Cliente  ');inc(i);
        WriteLn(xTexto,'     Vencimento    Emissao   Documento   R$ Valor  $ Recebido     R$ Juros     R$ Saldo');inc(i);
        WriteLn(xTexto,'---------------------------------------------------------------------------------------');inc(i);
      end;
      while not ibLocalCli.eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if not ibCntReceber.FieldByName('cliea13id').isnull then
        begin
          If  not CheckBox1.Checked then
          begin
            WriteLn(xTexto,Copy(iblocalcli.Fieldbyname('cliea60razaosoc').asstring+
            '                                                                                                         ',0,50)+
            Trim(IBLocalcli.fieldbyname('CLIEA15FONE1').asstring)+' - '+iblocalcli.Fieldbyname('CLIEA60CIDRES').asstring);
            if CheckFatura.Checked then
            begin
              RDprint.ImpF(i,62,iblocalcli.Fieldbyname('cliea15fone1').asstring,[normal]);inc(i);
              RDprint.ImpF(i,1,iblocalcli.Fieldbyname('cliea60enderes').asstring,[normal]);inc(i);
              RDprint.ImpF(i,1,Copy(iblocalcli.Fieldbyname('cliea60cidres').asstring,0,40)+' - '+
              Copy(iblocalcli.Fieldbyname('cliea60baires').asstring,0,35),[normal]);inc(i);
            end;
            inc(i);
          end;
          while (not ibCntReceber.Eof) do
          begin
            Frase := '     ' + ibCntReceber.fieldbyname('CTRCDVENC').asstring;
            Frase := Frase+'  '+ ibCntReceber.fieldbyname('CTRCDEMIS').asstring;
            Frase := Frase+'  '+ Copy(ibCntReceber.fieldbyname('CTRCA30NRODUPLICBANCO').asstring+'            ',0,10);
            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2VLR').value);
            While length(xStr) < 10 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr+ '  ';
            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2TOTREC').value);
            While length(xStr) < 10 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;


//---------------------------------------
          ibsql1.Close;
          IBSQL1.SQL.Text := 'select * from CONFIGCREDIARIO ';
          IBSQL1.Prepare;
          ibsql1.ExecQuery;

          if CheckJuros.Checked then
          begin
            IF ibCntReceber.FieldByname('CTRCDULTREC').ISNULL THEN
            Begin
              TotalJuros := CalculaJuroMultaDesc(ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value,
                                                                        ibCntReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                        ibCntReceber.FieldByname('CTRCDVENC').AsDateTime,
                                                                        Date,
                                                                        0,
                                                                        IBSQL1.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                        'Juro',
                                                                        ibCntReceber.FieldByName('CUPOA13ID').AsString,
                                                                        ibCntReceber.FieldByName('CTRCINROPARC').AsString);
            end else
              TotalJuros := CalculaJuroMultaDesc(ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value,
                                                                        ibCntReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                        ibCntReceber.FieldByname('CTRCDULTREC').AsDateTime,
                                                                        Date,
                                                                        0,
                                                                        IBSQL1.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                        'Juro',
                                                                        ibCntReceber.FieldByName('CUPOA13ID').AsString,
                                                                        ibCntReceber.FieldByName('CTRCINROPARC').AsString);

            ibsql1.Close;
          end else
            TotalJuros := 0;
//---------------------------------------


            xStr:=  FormatFloat(',0.00',TotalJuros);
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;

            JurosGeral:= JurosGeral + TotalJuros;

            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value + TotalJuros);
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;
            If not CheckBox1.Checked then
            begin
              WriteLn(xTexto,Frase);inc(i);
            end;
            TotaldoCliente := TotaldoCliente + ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value+ TotalJuros;
            ibCntReceber.Next;
            if i >= 63 then
            begin
              WriteLn(xTexto,'');
              WriteLn(xTexto,'');
              WriteLn(xTexto,'');
              WriteLn(xTexto,'');
              i:= 0;
            end;
          end;
          if ibCntReceber.Eof then
          begin
            If not CheckBox1.Checked then
            begin
              WriteLn(xTexto,'                                                                        ---------------');
              inc(i);
            end;
            xStr:= FormatFloat(',0.00',TotaldoCliente);
            TotalGeral := TotalGeral+TotaldoCliente;
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            If CheckBox1.Checked then
              WriteLn(xTexto,iblocalcli.Fieldbyname('cliea60razaosoc').asstring + '  '+xStr)
            else
              WriteLn(xTexto,'                                                                          '+xStr);
            inc(i);
            ibLocalCli.Next;
            TotaldoCliente := 0;
          end;
          if i >= 63 then
          begin
            WriteLn(xTexto,'');
            WriteLn(xTexto,'');
            WriteLn(xTexto,'');
            WriteLn(xTexto,'');
            i:= 0;
          end;

        end else
          ibLocalCli.Next;
      end;
      xStr:= FormatFloat(',0.00',TotalGeral );
      While length(xStr) < 13 do
         Insert(' ',xStr,0);
      WriteLn(xTexto,' ');
      WriteLn(xTexto,'Total Geral  ------------------------------------------>  R$ '+xStr);
      xStr:= FormatFloat(',0.00',JurosGeral );
      While length(xStr) < 13 do
         Insert(' ',xStr,0);
      WriteLn(xTexto,'Total Juros  ------------------------------------------>  R$ '+xStr);

      CloseFile(xTexto);

      try
        if FileExists(UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\RELATORIO.txt') then
        begin
          Memo1.Lines.LoadFromFile(UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\RELATORIO.txt');

          RDPrint.Abrir;
           lin:= 1;
           for linha := 0 to memo1.Lines.Count - 1 do
           begin
              rdprint.ImpF(lin,1,memo1.lines[linha],[COMP17]);
              inc(lin);
              if Lin >= 61 then
              begin
                lin:= 1;
                rdPrint.Novapagina;
              end;
           end;
           rdprint.fechar;
        end else
          ShowMessage('Arquivo RELATORIO.TXT não Existe');
      except on E:Exception do
        begin
         MessageDlg('Falha ao Imprimir Relatorio...'+#13+#10+E.Message, mtWarning, [mbOK], 0);
         RDPrint.Fechar;
        end;
      end;


    end else
    begin
      i:= 1;
      TotaldoCliente := 0;
      RDPrint.TamanhoQteLinhas := 33;
      RDPrint.abrir;

      while not ibLocalCli.eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if not ibCntReceber.FieldByName('cliea13id').isnull then
        begin
          ImprimeCab(i);

          If  not CheckBox1.Checked then
          begin
            RDprint.ImpF(i,1,iblocalcli.Fieldbyname('cliea60razaosoc').asstring,[normal]);
            RDprint.ImpF(i,62,iblocalcli.Fieldbyname('cliea15fone1').asstring,[normal]);inc(i);
            RDprint.ImpF(i,1,iblocalcli.Fieldbyname('cliea60endres').asstring,[normal]);inc(i);
            RDprint.ImpF(i,1,Copy(iblocalcli.Fieldbyname('cliea60cidres').asstring,0,40)+' - '+
            Copy(iblocalcli.Fieldbyname('cliea60baires').asstring,0,35),[normal]);inc(i);

//            CLIEA15FONE1, CLIEA15FONE2, CLIEA60ENDRES, CLIEA60CIDRES, CLIEA60BAIRES

            RDprint.ImpF(i,1,'------------------------------------------------------------------------------',[normal]);inc(i);
            RDprint.ImpF(i,1,'          Vencimento    Emissao  R$ Valor  $ Recebido    R$ Juros     R$ Saldo',[normal]);inc(i);

            inc(i);
          end;
          while (not ibCntReceber.Eof) do
          begin
            Frase := Copy(ibCntReceber.Fieldbyname('CTRCA254HIST').asstring+'         ',0,17)+
                     ibCntReceber.fieldbyname('CTRCDVENC').asstring;
            Frase := Frase+'  '+ ibCntReceber.fieldbyname('CTRCDEMIS').asstring;
          //  Frase := Frase+'  '+ Copy(ibCntReceber.fieldbyname('CTRCA30NRODUPLICBANCO').asstring,0,10);
            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2VLR').value);
            While length(xStr) < 10 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr+ '  ';
            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2TOTREC').value);
            While length(xStr) < 10 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;


//---------------------------------------
          ibsql1.Close;
          IBSQL1.SQL.Text := 'select * from CONFIGCREDIARIO ';
          if DBLookupComboBox2.Text <> '' then
          begin
            IBSQL1.SQL.Text := 'select * from CONFIGCREDIARIO where EMPRICOD = :XEMPR';
            ibsql1.ParamBYNAME('XEMPR').VALUE := ibEmpresa.Fieldbyname('EMPRICOD').VALUE;
          end;
          IBSQL1.Prepare;
          ibsql1.ExecQuery;

          if CheckJuros.Checked then
          begin
            IF ibCntReceber.FieldByname('CTRCDULTREC').ISNULL THEN
            Begin
              TotalJuros := CalculaJuroMultaDesc(ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value,
                                                                        ibCntReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                        ibCntReceber.FieldByname('CTRCDVENC').AsDateTime,
                                                                        Date,
                                                                        0,
                                                                        IBSQL1.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                        'Juro',
                                                                        ibCntReceber.FieldByName('CUPOA13ID').AsString,
                                                                        ibCntReceber.FieldByName('CTRCINROPARC').AsString);
            end else
              TotalJuros := CalculaJuroMultaDesc(ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value,
                                                                        ibCntReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                        ibCntReceber.FieldByname('CTRCDULTREC').AsDateTime,
                                                                        Date,
                                                                        0,
                                                                        IBSQL1.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                        'Juro',
                                                                        ibCntReceber.FieldByName('CUPOA13ID').AsString,
                                                                        ibCntReceber.FieldByName('CTRCINROPARC').AsString);

            ibsql1.Close;
          end else
            TotalJuros := 0;
//---------------------------------------

            // incluir juros
            xStr:=  FormatFloat(',0.00',TotalJuros);
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;

            xStr:=  FormatFloat(',0.00',ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value+TotalJuros);
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            Frase := Frase + xStr;
            If not CheckBox1.Checked then
            begin
              RDprint.ImpF(i,1,Frase,[normal]);inc(i);
              if i >= 32 then
              begin
                RdPrint.ImpF(i,33,'Continua...',[comp17]);
                RDprint.Novapagina;
                i:=1;
              end;
            end;
            TotaldoCliente := TotaldoCliente + ibCntReceber.fieldbyname('CTRCN2VLR').value-ibCntReceber.fieldbyname('CTRCN2TOTREC').value+TotalJuros;
            ibCntReceber.Next;
          end;
          if ibCntReceber.Eof then
          begin
            If not CheckBox1.Checked then
            begin
              RDprint.ImpF(i,1,'                                                                ---------------',[normal]);
              inc(i);
            end;
            xStr:= FormatFloat(',0.00',TotaldoCliente);
            TotalGeral := TotalGeral+TotaldoCliente;
            While length(xStr) < 13 do
               Insert(' ',xStr,0);
            If CheckBox1.Checked then
              RDprint.ImpF(i,1,iblocalcli.Fieldbyname('cliea60razaosoc').asstring + '  '+xStr,[normal])
            else
              RDprint.ImpF(i,1,'                                                                  '+xStr,[normal]);
            inc(i);

            if i >= 29 then
            begin
              RDprint.Novapagina;
              i:= 1;
            end;

            ibLocalCli.Next;
            if (CheckFatura.Checked) and (DBLookupComboBox1.Text = '') then
            begin
              RDPrint.ImpF(i,1,'  Reconhecemos com exatidao esta duplicata de venda mercantil, na importancia,',[normal]); inc(i);
              RDPrint.ImpF(i,1,'a empresa acima nominada ou a sua ordem, na praca e vencimento abaixo indicado',[normal]);inc(i);
              RDPrint.ImpF(i,1,'Data do Vencimento: ____/____/________   Data do Aceite: ____/____/________',[normal]); inc(i,2);
              RDPrint.ImpF(i,1,'                                                 Ass: _____________________',[normal]);inc(i);
              RDprint.Novapagina;
              i:=1;
            end;
            TotaldoCliente := 0;
          end;

        end else
          ibLocalCli.Next;
      end;
      if (CheckFatura.Checked) and (DBLookupComboBox1.Text <> '') then
      begin
        RDPrint.ImpF(i,1,'Reconhecemos com exatidao esta duplicata de venda mercantil, na importancia,',[normal]); inc(i);
        RDPrint.ImpF(i,1,'a empresa acima ou a sua ordem, na praca e vencimento abaixo indicado',[normal]);inc(i);
        RDPrint.ImpF(i,1,'Data do Vencimento: ____/____/________   Data do Aceite: ____/____/________',[normal]); inc(i,2);
        RDPrint.ImpF(i,1,'                                                 Ass: _____________________',[normal]);inc(i);
      end  ;
      RDprint.Fechar;
      ProgressBar1.Position := 0;

    end;
  except on E:Exception do
    begin
      MessageDlg('Falha ao Gerar Relatorio:'+#13+#10+E.Message, mtWarning, [mbOK], 0);
    end;
  end;
  BitBtn1.Enabled :=True;
  ibLocalCli.close;
  iblocalcli.sql.text := 'Select CLIEA13ID, CLIEA60RAZAOSOC from cliente order by cliea60razaosoc';
  iblocalcli.Open;

end;

Function TFormCntReceberFiltro.ImprimeCab(var i:Integer):Integer;
begin
  RDprint.ImpF(1,1,ibEmpresa.Fieldbyname('empra60razaosoc').asstring,[normal]); inc(i);
  RDprint.ImpF(2,1,'Data: '+DateToStr(date),[normal]); inc(i);
  RDprint.ImpF(3,1,'Relatório de Contas a Receber Vencidas',[normal]);inc(i);
  RDprint.ImpF(4,1,'Periodo de: '+Dataini.text + ' a '+datafim.text,[normal]);inc(i);
  RDprint.ImpF(5,1,'--------------------------------------------------------------------------',[normal]);inc(i);

end;



Function TFormCntReceberFiltro.CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr : double; DVenc, DPag, DVencOrig : TDateTime; Toler : integer; Tipo, Cupom, Parc : string) : Double;
var
  PerDia     : double ;
  DiasAdiant : integer ;
begin
  CalculaJuroMultaDesc := 0 ;
  if UpperCase(Tipo) = UpperCase('Juro') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
        begin
          PerDia               := (TxJuroMultaDescCobr/30)/100 ;
          PerDia               := PerDia * (DPag - DVenc) ;
          CalculaJuroMultaDesc := VlrVenc * PerDia ;
        end ;
    end ;
  if UpperCase(Tipo) = UpperCase('Multa') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
        CalculaJuroMultaDesc := VlrVenc * (TxJuroMultaDescCobr/100) ;
    end ;
  if UpperCase(Tipo) = UpperCase('Desconto') then
    begin
      if (DPag - DVenc) >= 0 then
        exit ;

      DiasAdiant           := StrToInt(FormatFloat('#', DPag - DVenc)) ;
      DiasAdiant           := StrToInt(Copy(IntToStr(DiasAdiant), 2, 20)) ;
      PerDia               := (TxJuroMultaDescCobr/30)/100 ;
      PerDia               := PerDia * DiasAdiant ;
      if DiasAdiant >= Toler then
        begin
          CalculaJuroMultaDesc := VlrVenc * PerDia ;
        end ;
    end ;
end;



end.
