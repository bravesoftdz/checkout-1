unit unPedidoVendaFiltro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls, Mask,
  ToolEdit, DBCtrls, IBSQL, Grids, DBGrids, RDprint;

type
  TFormPedidoVendasFiltro = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Dataini: TDateEdit;
    datafim: TDateEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibLocalCli: TIBQuery;
    dtsLocalcli: TDataSource;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    ibLocalProdutos: TIBQuery;
    dtsLocalProdutos: TDataSource;
    Label5: TLabel;
    DBLookupComboBoxProduto: TDBLookupComboBox;
    RDprint: TRDprint;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoVendasFiltro: TFormPedidoVendasFiltro;

implementation

uses unDataModule, UnFileDemo;

{$R *.DFM}

procedure TFormPedidoVendasFiltro.FormCreate(Sender: TObject);
begin
  if not Dm.ibTrans.InTransaction then
    Dm.ibTrans.StartTransaction;
  ibLocalProdutos.Open;
  ibLocalCli.Open;
  ibEmpresa.Open;
end;

procedure TFormPedidoVendasFiltro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibLocalProdutos.Close;
  ibEmpresa.Close;
  ibLocalCli.Close;
  dm.ibTrans.Commit;
end;

procedure TFormPedidoVendasFiltro.BitBtn1Click(Sender: TObject);
var xText, Frase , xStr: string;
    xTexto: TextFile;
    i,LIN,LINHA : Integer;
    xProdutos: Extended;
begin

  if not Dm.ibTrans.InTransaction then
    Dm.ibTrans.StartTransaction;
  Dm.ibPedidoVenda.close;
  dm.ibPedidoVendaItens.Close;

  xtext := '';
  if DBLookupComboBox1.Text <> '' then
    xText := ' where cliea13id = :xcliea13id ';

  if DBLookupComboBoxProduto.Text <> '' then
  begin
    dm.ibPedidoVendaItens.Close;
    dm.ibPedidoVendaItens.Sql.Text :=  'Select pv.*, p.PRODA30ADESCRREDUZ  from pedidovendaitem pv '+
    'left join produto p on p.prodicod = pv.prodicod where  pv.PVITN3QUANTVEND > 0 and '+
    'pv.PDVDA13ID = :PDVDA13ID and pv.prodicod = :xprodicod ';
    dm.ibPedidoVendaItens.Prepare;
    dm.ibPedidoVendaItens.ParamByName('xprodicod').value := DBLookupComboBoxProduto.KeyValue;
  end;
  if dataini.text <> '  /  /    ' then
  begin
    if xText <> '' then
      xText := xText + ' and pdvddemissao >= :xdataini and pdvddemissao <= :xDatafim '
    else
      xText := ' Where pdvddemissao >= :xdataini and pdvddemissao <= :xDatafim ';
  end;

  if xText <> '' then
  begin
    if RadioGroup1.ItemIndex <> 2 then
      xText := xText + ' and pdvdcstatus = :xStatus '
    else
      xText := xText + ' and ( pdvdcstatus = :xStatus1 or  pdvdcstatus = :xStatus2) ';
  end else
  begin
    if RadioGroup1.ItemIndex <> 2 then
      xText := ' Where pdvdcstatus = :xStatus '
    else
      xText := ' Where ( pdvdcstatus = :xStatus1 or  pdvdcstatus = :xStatus2) ';
  end;

  Dm.ibPedidoVenda.Sql.Text := 'Select p.*, c.cliea60razaosoc from pedidovenda p left join '+
  'cliente c on c.cliea13id = p.cliea13id '+xText + ' order by c.cliea60razaosoc';
  Dm.ibPedidoVenda.Prepare;

  if DBLookupComboBox1.Text <> '' then
    Dm.ibPedidoVenda.ParamByName('xcliea13id').value := DBLookupComboBox1.KeyValue;


  if dataini.text <> '  /  /    ' then
  begin
    Dm.ibPedidoVenda.ParamByName('xdataini').AsDateTime := Dataini.Date;
    Dm.ibPedidoVenda.ParamByName('xdatafim').AsDateTime := DataFim.Date;
  end;

  Case RadioGroup1.ItemIndex of
  0: Dm.ibPedidoVenda.ParamByName('xStatus').asstring := 'A';
  1: Dm.ibPedidoVenda.ParamByName('xStatus').asstring := 'P';
  2: begin
     Dm.ibPedidoVenda.ParamByName('xStatus1').asstring := 'P';
     Dm.ibPedidoVenda.ParamByName('xStatus2').asstring := 'A';
     end;
  end;
  Dm.ibPedidoVenda.Open;
  Dm.ibPedidoVendaItens.Open;

  try
    Self.Cursor :=  crAppStart;
    AssignFile(xTexto,UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\Aentregar.txt');
    ReWrite(xTexto);

    i:= 0;
    xProdutos := 0;
    WriteLn(xTexto,ibEmpresa.Fieldbyname('empra60razaosoc').asstring); inc(i);
    Writeln(xTexto,'Data: '+DateToStr(date)); inc(i);
    WriteLn(xTexto,'Relatório de Pedidos a Entregar');inc(i);
    WriteLn(xTexto,'--------------------------------------------------------------------------');inc(i);
    WriteLn(xTexto,'Nome do Cliente                                      No Pedido  DT Emissão');inc(i);
    WriteLn(xTexto,'     Descrição do Produto          Qtd Pedido   Qtd Entregue    A Entregar');inc(i);
    WriteLn(xTexto,'--------------------------------------------------------------------------');inc(i);
    while not DM.ibPedidoVenda.eof do
    begin
      if not Dm.ibPedidoVendaItens.FieldByName('pdvda13id').isnull then
      begin

        Frase := Copy(DM.ibPedidoVenda.Fieldbyname('cliea60razaosoc').asstring,0,46) +
        '   '+ dm.ibPedidoVenda.fieldByname('PDVDINROTALAO').asstring +
        '  '+ dm.ibPedidoVenda.fieldByname('PDVDDEMISSAO').asstring;

        WriteLn(xTexto,Frase); inc(i);

        while (not dm.ibPedidoVendaItens.Eof) do
        begin
          Frase := '     ';
          Frase := Frase + dm.ibPedidoVendaItens.fieldbyname('PRODA30ADESCRREDUZ').asstring;
          xStr := dm.ibPedidoVendaItens.fieldbyname('Pvitn3quant').asstring;
          While length(xStr) < 10 do
             Insert(' ',xStr,0);
          Frase := Frase +  xStr;

          if dm.ibPedidoVendaItens.fieldbyname('Pvitn3quant').value  -  dm.ibPedidoVendaItens.fieldbyname('Pvitn3quantvend').value = 0 then
            xStr := '0'
          else
            xStr := FloatToStr(dm.ibPedidoVendaItens.fieldbyname('Pvitn3quant').value  -  dm.ibPedidoVendaItens.fieldbyname('Pvitn3quantvend').value);
          While length(xStr) < 15 do
             Insert(' ',xStr,0);
          Frase := Frase + xStr;

          xStr := dm.ibPedidoVendaItens.fieldbyname('Pvitn3quantvend').asstring;
          While length(xStr) < 14 do
             Insert(' ',xStr,0);
          Frase := Frase + xStr;

          WriteLn(xTexto,Frase);inc(i);

          xProdutos := xProdutos + dm.ibPedidoVendaItens.fieldbyname('Pvitn3quantvend').value;

          DM.ibPedidoVendaItens.Next;
         { if i >= 66 then
          begin
            WriteLn(xTexto,'');
            i:= 0;
          end;}
        end;
        WriteLn(xTexto,'');
      {  if i >= 66 then
        begin
          WriteLn(xTexto,'');
          i:= 0;
        end;}
      end;
      dm.ibPedidoVenda.Next;
    end;
    if DBLookupComboBoxProduto.Text <> '' then
    begin
      WriteLn(xTexto,'--------------------------------------------------------------------------');inc(i);
      xStr :=  FloattoStr(xProdutos);
      While length(xStr) < 14 do
        Insert(' ',xStr,0);
      WriteLn(xTexto,'Total de Produto a Entregar      ->                         '+ xstr);
    end;
    CloseFile(xTexto);
    try
      if FileExists(UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\RELATORIO.txt') then
      begin
        Memo1.Lines.LoadFromFile(UpperCase(ExtractFilePath(Application.ExeName))+'TxtFile\aentregar.txt');

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
        ShowMessage('Arquivo AENTREGAR.TXT não Existe');
    except on E:Exception do
      begin
       MessageDlg('Falha ao Imprimir Relatorio...'+#13+#10+E.Message, mtWarning, [mbOK], 0);
       RDPrint.Fechar;
      end;
    end;
    Close;

  except
    Showmessage('Falha ao gerar relatório');
  end;
end;

procedure TFormPedidoVendasFiltro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key:= #0;
    perform(cm_dialogkey,vk_tab,0);
  end;
end;

end.
