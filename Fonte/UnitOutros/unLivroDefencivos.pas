unit unLivroDefencivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls,
  RDprint, DB, IBCustomDataSet, IBQuery, IBSQL;

type
  TFrmLivroDefencivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnLIst: TBitBtn;
    BitBtn3: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    ProgressBar1: TProgressBar;
    ibEmpresa: TIBQuery;
    RDprint: TRDprint;
    IBProd: TIBQuery;
    IBComp: TIBQuery;
    dtsProd: TDataSource;
    IBVnd: TIBQuery;
    IBQtds: TIBQuery;
    dtsVnd: TDataSource;
    IBSQL1: TIBSQL;
    ibStLivro: TIBSQL;
    IBLVR: TIBQuery;
    DataSource2: TDataSource;
    procedure btnLIstClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GeraTexto;
    Function Calcula: Boolean;
    function CalculaQtd(codigo:integer):Extended;
    function SaldoAnterior(codigo:integer):Extended;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLivroDefencivos: TFrmLivroDefencivos;

implementation

uses unDataModule;

{$R *.dfm}


procedure TFrmLivroDefencivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    key := #0;
    Perform(cm_dialogkey,vk_tab,0);
  end;
end;

Function TFrmLivroDefencivos.Calcula:Boolean;
begin
   Try
      // limpa o arquivo
      IBSQL1.Sql.Text := 'Delete from LIVRODEFENSIVO';
      IBSQL1.Prepare;
      IBSQL1.ExecQuery;
      IBSQL1.Close;
      // inicia o processamento
      IBProd.Last;
      ProgressBar1.Max := IBProd.RecordCount;
      IBProd.First;
      while not IBProd.Eof do
      begin
         // transfere compras para o temporario
         ProgressBar1.Position := IBProd.RecNo;
         While not IBComp.Eof do
         begin
            IbStLivro.prepare;
            ibStLivro.Parambyname('codigo').value     := IBProd.FieldByName('PRODICOD').value;
            ibStLivro.Parambyname('Descricao').value  := IBProd.FieldByName('PRODA60DESCR').value;
            ibStLivro.Parambyname('principio').value  := IBProd.FieldByName('PRODA30PRINCATV').value;
            ibStLivro.Parambyname('QTdEstoque').value := IBProd.FieldByName('PSLDN3QTDE').value;
            ibStLivro.Parambyname('N_nota').value     := IBCOMP.FieldByName('NOCPA30NRO').value;
            ibStLivro.Parambyname('Comprador').asstring:= IBCOMP.FieldByName('FORNA60RAZAOSOC').asstring;
            ibStLivro.Parambyname('Receita').ASSTRING := '-';
            ibStLivro.Parambyname('Data').value       := IBCOMP.FieldByName('NOCPDEMISSAO').value;
            ibStLivro.Parambyname('Quantidade').value := IBcomp.FieldByName('NOCIN3QTDEMBAL').value;
            ibStLivro.Parambyname('Natureza').value   := IBcomp.FieldByName('OPESA60DESCR').ASSTRING;
            IBSTLIVRO.ExecQuery;
            IBSTLIVRO.CLOSE;
            IBComp.Next;
         End ;

         // passa os arquivos das vendas
         While not IBvnd.eof do
         begin
            If not (ibvnd.FieldByName('NOFIDCANCEL').AsDateTime > StrToDate('01/01/1900')) then
            begin
              IbStLivro.prepare;
              ibStLivro.Parambyname('codigo').value     := IBProd.FieldByName('PRODICOD').value;
              ibStLivro.Parambyname('Descricao').value  := IBProd.FieldByName('PRODA60DESCR').value;
              ibStLivro.Parambyname('principio').value  := IBProd.FieldByName('PRODA30PRINCATV').value;
              ibStLivro.Parambyname('QTdEstoque').value := IBProd.FieldByName('PSLDN3QTDE').value;
              ibStLivro.Parambyname('N_nota').value     := IBvnd.FieldByName('NOFIINUMERO').value;
              ibStLivro.Parambyname('Comprador').asstring:= IBvnd.FieldByName('CLIEA60RAZAOSOC').asstring;
              ibStLivro.Parambyname('Receita').ASSTRING := IBvnd.FieldByName('RECEITA').asstring;
              ibStLivro.Parambyname('Data').value       := IBvnd.FieldByName('NOFIDEMIS').value;
              ibStLivro.Parambyname('Quantidade').value := -CalculaQtd(IBProd.FieldByName('PRODICOD').value);
              ibStLivro.Parambyname('Natureza').value   := ibvnd.FieldByName('OPESA60DESCR').value;
              IBSTLIVRO.ExecQuery;
              IBSTLIVRO.CLOSE;
            end;
            IBvnd.Next;
         End;
         IBProd.Next;
      end;
   except


   end;
  ProgressBar1.Position := 0;
  ProgressBar1.Refresh;

end;

procedure TFrmLivroDefencivos.btnListClick(Sender: TObject);
var nli, ipag : integer;
begin
  TRY
    btnLIst.Enabled := FALSE;
    if not DM.ibTrans.InTransaction then
      Dm.ibTrans.StartTransaction;

   ibEmpresa.Open;
   IBProd.Open;
   IBComp.Prepare;
   IBComp.ParambyName('xdataini').AsDate := DateEdit1.Date;
   IBComp.ParambyName('xdatafim').AsDate := Date;
   IBcomp.open;
   IBvnd.Prepare;
   IBvnd.ParambyName('xdataini').AsDate := DateEdit1.Date;
   IBvnd.ParambyName('xdatafim').AsDate := Date;
   IBvnd.open;

   IBQtds.Open;

   Calcula;

   IBLVr.Sql.Clear;
   IBlvr.Sql.Text  := 'Select * from LIVRODEFENSIVO lv where data <= :xdata order by codigo';
   iblvr.prepare;
   iblvr.ParamByName('xdata').asdate := DateEdit2.date;
   IBLVR.Open;

   GeraTexto;

   Close;

  EXCEPT ON e:exception do
    begin
    ShowMessage('Falha ao Gerar Livro: '+e.message);
    DM.ibTrans.Commit;
    btnLIst.Enabled := FALSE;
    CLOSE;
    end;
  END;
  btnLIst.Enabled := FALSE;

end;

Function TFrmLivroDefencivos.SaldoAnterior(codigo:integer):Extended;
var nSaldoPos:Extended;
begin
   nSaldoPos := 0;
   IBSQL1.Close;
   IBSQL1.Sql.Text := 'Select sum(lv.quantidade) as vendas from LIVRODEFENSIVO lv where codigo = :xcodigo and data > :xdata';
   IBSQL1.Prepare;
   IBSQL1.ParamByName('xcodigo').value := codigo;
   IBSQL1.ParambyName('xData').AsDate  := DateEdit2.Date;
   IBSQL1.ExecQuery;
   if not ibsql1.fieldbyname('vendas').isnull then
      nSaldoPos := IBSQL1.FieldByName('vendas').value;
   IBSQL1.Close;
   IBSQL1.Sql.Text := 'Select sum(lv.quantidade) as vendas from LIVRODEFENSIVO lv where codigo = :xcodigo';
   IBSQL1.Prepare;
   IBSQL1.ParamByName('xcodigo').value := codigo;
   IBSQL1.ExecQuery;
   IBPROD.Locate('PRODICOD',codigo,[]);
   if not IBSQL1.FieldByName('Vendas').isnull then
      Result := IBProd.fieldByName('PSLDN3QTDE').value - ibsql1.Fieldbyname('vendas').value
   else
      Result := IBProd.fieldByName('PSLDN3QTDE').value;
   IBSQL1.Close;
end;


Function TFrmLivroDefencivos.CalculaQtd(codigo:integer):Extended;
var soma:Extended;
begin
   soma := 0;
   while not ibqtds.eof do
   begin
      if ibqtds.fieldbyname('PRODICOD').value = codigo then
      begin
         if ibqtds.fieldbyname('NFITN3QUANT').value > 0 then
         begin
            Soma := soma + ibqtds.fieldbyname('NFITN3QUANT').value;
            ibqtds.next;
         end else
         begin
            IBqtds.next;
            while (ibqtds.FieldByName('PRODICOD').value = 1) and (not ibqtds.eof) do
            begin
               if ibqtds.fieldbyname('NFITN3QUANT').value > 0 then
                  Soma:= Soma + ibqtds.fieldbyname('NFITN3QUANT').value;
               ibqtds.next;
            end;
         end;
      end else
         IBQtds.Next;
   end;
   Result := Soma;
end;

procedure TFrmLivroDefencivos.GeraTexto;
var Arquivo: String;
    xTexto : TextFile;
    xqtd,xtot,Empresa,endereco1,endereco2,cnpj,inscricao, item:String ;
    nli, iPag, Ln, i:Integer;
    xSaldo:Extended;

begin
   Try
      IBLvr.Sql.Text := 'Select * from LIVRODEFENSIVO where data <= :xdate  order by descricao, data, natureza'; // where data <= :xdate order by descricao, data';
      iblvr.Prepare;
      iblvr.ParambyName('xdate').asdate := DateEdit2.date;
      IBLVR.Open;
      ProgressBar1.Max := IBlvr.RecordCount;
      Progressbar1.Position := 0;
      ProgressBar1.Refresh;
      IBlvr.first;
      Self.Cursor :=  crAppStart;
      iPag:= 1;
      RDprint.Abrir;
      while not Iblvr.Eof do
      Begin
         item:= iblvr.fieldbyname('descricao').asstring;
         xSaldo:= SaldoAnterior(iblvr.fieldbyname('codigo').asinteger);
         while (not iblvr.eof) and (iblvr.fieldbyname('descricao').asstring = item) do
         begin
            ProgressBar1.Position := iblvr.RecNo;
            nli   := 1;
            // Inicia o cabeçalho de pagina
            RDPrint.IMPF(nli,1,'                                                  REGISTRO DE VENDA DE AGROTÓXICOS FITOSANITÁRIOS',[COMP17]); inc(nli);
            RDPrint.IMPF(nli,1,'-----------------------------------------------------------------------------------------------------------------------------------------',[COMP17]); inc(nli);
            RDPrint.IMPF(nli,1,Copy('Empresa: '+ibEmpresa.fieldbyname('EMPRA60RAZAOSOC').ASSTRING+'                                                ',0,53)+
            '    CNPJ: '+ibEmpresa.fieldbyname('EMPRA14CGC').ASSTRING+ '  Inscricao Estadual: '+ibEmpresa.fieldbyname('EMPRA20IE').ASSTRING + '  Data: '+DateToStr(Date),[COMP17]);INC(NLI);
            RDPrint.IMPF(nli,1,Copy('Endereco: '+tRIM(ibEmpresa.fieldbyname('EMPRA60END').ASSTRING) +'  ' + TRIM(ibEmpresa.fieldbyname('EMPRA60BAI').ASSTRING) + '  '+
            TRIM(ibEmpresa.fieldbyname('EMPRA60CID').ASSTRING)+ '  '+ TRIM(ibEmpresa.fieldbyname('EMPRA8CEP').ASSTRING)+ '  ' + TRIM(ibEmpresa.fieldbyname('EMPRA2UF').ASSTRING)+
            '                                                                                                                                  ',0,118)+
            'Pagina: '+IntToStr(ipag),[COMP17]);inc(nli);
            RDPrint.IMPF(nli,1,'-----------------------------------------------------------------------------------------------------------------------------------------',[COMP17]);inc(nli);
            RDPrint.IMPF(nli,1,Copy('Nome Comercial do Produto: '+ IBProd.FieldByName('PRODA60DESCR').asstring + '                                                                                                    ',0,107)+ '  Periodo Inicial: '+DateEdit1.Text ,[COMP17]);INC(NLI);
            RDPrint.IMPF(nli,1,copy('Nome do Principio Ativo..: '+ IBProd.FieldByName('PRODA30PRINCATV').asstring + '                                                                                                    ',0,107)+ '  Periodo Final..: '+DateEdit2.Text ,[COMP17]);INC(NLI);
            RDPrint.IMPF(nli,1,'-----------------------------------------------------------------------------------------------------------------------------------------',[COMP17]);inc(nli);
            RDPrint.IMPF(nli,1,'N_Nota     Comprador/Vendedor                     Receita    Data          Quantidade           Estoque Natureza Operação    ',[COMP17]);INC(NLI);
            RDPrint.IMPF(nli,1,'-----------------------------------------------------------------------------------------------------------------------------------------',[COMP17]);inc(nli);

            xqtd := FormatFloat(',0.00;-,0.00',xSaldo);
            while length(xqtd) < 15 do
               Insert(' ',xqtd,0);
            RDPrint.IMPF(nli,1,'Saldo anterior ......................................................................   ' + xqtd ,[COMP17]);INC(NLI);
            ln := 14;
            While ((Not IBlvr.Eof) and (iblvr.fieldbyname('descricao').asstring = item)) and (ln < 63) do
            begin
               xqtd := FormatFloat(',0.00;-,0.00',iblvr.fieldbyname('quantidade').value);
               while length(xqtd) < 15 do
                  Insert(' ',xqtd,0);

               xtot := FormatFloat(',0.00;-,0.00',xSaldo + iblvr.fieldbyname('quantidade').value);
               while length(xtot) < 15 do
                  Insert(' ',xtot,0);

               RDPrint.IMPF(nli,1,
               Copy(iblvr.fieldbyname('n_nota').asstring +'         ',0,10)+
               Copy(iblvr.fieldbyname('comprador').asstring + '                                    ',0,40)+
               Copy(iblvr.fieldbyname('receita').asstring + '                                      ',0,10)+
               Copy(iblvr.fieldbyname('data').asstring + '                ',0,10)+
               xqtd+ '   '+
               xtot + ' '+
               Copy(iblvr.fieldbyname('Natureza').asstring,0,33),[COMP17]);INC(NLI);
               xSaldo := xSaldo + iblvr.fieldbyname('quantidade').value;
               iblvr.next;
               inc(ln);
            end;
            xqtd := FormatFloat(',0.00;-,0.00',xSaldo);
            while length(xqtd) < 15 do
               Insert(' ',xqtd,0);
            RDPrint.IMPF(nli,1,'Saldo atual .........................................................................   '+xqtd,[COMP17]);INC(NLI);
            RDPRINT.Novapagina;
            Inc(ipag);
         End;
      End;
      RDPRINT.Fechar;
   except
      ShowMessage('Falha na Geração do Arquivo');
   end;
end;

end.
