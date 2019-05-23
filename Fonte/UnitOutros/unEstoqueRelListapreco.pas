unit unEstoqueRelListapreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, DBCtrls,
  RDprint, ExtCtrls, UCrpe32, RxQuery, DBTables, Placemnt, RxLookup, Mask,
  ToolEdit, jpeg, ComCtrls;

type
  TFormRelListaPreco = class(TForm)
    ibEstoque: TIBQuery;
    dtsEstoque: TDataSource;
    IBMovEstoque: TIBSQL;
    Panel1: TPanel;
    Progresso: TProgressBar;
    ScrollBox: TScrollBox;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    LblTituloTela: TPanel;
    BtnVisualizar: TSpeedButton;
    GroupFiltro: TGroupBox;
    Label6: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    AlteradosDE: TDateEdit;
    AlteradosATE: TDateEdit;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    ComboMarca: TRxDBLookupCombo;
    chkvarejo: TCheckBox;
    RadioGroup1: TRadioGroup;
    RDprint1: TRDprint;
    chkocultacusto: TCheckBox;
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckAtacado: TCheckBox;
    CheckQtd: TCheckBox;
    CheckTudo: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Cabecalho;
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure CheckAtacadoClick(Sender: TObject);
    procedure chkocultacustoClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure chkvarejoClick(Sender: TObject);
//    Procedure FiltraProdutos;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelListaPreco: TFormRelListaPreco;
  nPag: Integer;
implementation

uses unDataModule;

{$R *.dfm}

procedure TFormRelListaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ibEmpresa.Open;
  Dm.IBMarcas.Open;
  Dm.ibGrupos.Open;
  DM.ibTrans.CommitRetaining;
  action := caFree;
end;

procedure TFormRelListaPreco.FormCreate(Sender: TObject);
begin
  DM.ibEmpresa.Open;
  Dm.IBMarcas.Open;
  Dm.ibGrupos.Open;
end;


procedure TFormRelListaPreco.cabecalho;
begin
  RDprint1.Imp (2,1,'Mercadorias em Ordem Alfabética      '+'Pag: '+IntToStr(nPag)+ '   Data: '+DateToStr(Date));
  RDPrint1.Imp (3,1,'================================================================================');
  IF (chkvarejo.Checked) and ( not CheckAtacado.Checked) THEN
    RDprint1.Imp (4,1,'Cod.  Descricao do produto            un        R$ Custo Med      Qtd   R$ Venda')
  else if CheckTudo.Checked then
    RDprint1.Imp (4,1,'Cod.  Descricao do produto            un    Qtd    R$ Custo R$ Varejo R$ Atacado')
  else if CheckAtacado.Checked then
    RDprint1.Imp (4,1,'Cod.  Descricao do produto            un        R$ Atacado      Qtd    R$ Varejo')
  else
    RDprint1.Imp (4,1,'Cod.  Descricao do produto            un        Qtd       28D    28/35D 28/35/42');

  RDPrint1.Imp (5,1,'================================================================================');
end;

function TFormRelListaPreco.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
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


procedure TFormRelListaPreco.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRelListaPreco.BtnVisualizarClick(Sender: TObject);
var Text : String;
    ix:integer;
begin

  if ComboMarca.text <> '' then
  begin
    if text = '' then
      Text := ' Where '
    else
      Text := Text + ' and ';
    Text := Text + ' p.marcicod = :xmarca ';
  end;

  if ComboGrupo.text <> '' then
  begin
    if text = '' then
      Text := ' Where '
    else
      Text := Text + ' and ';
    Text := Text + ' p.Grupicod = :xgrupo ';
  end;


  case RadioGroup1.ItemIndex of
  1:begin
      if text <> '' then
        Text := Text + ' and '
      else
        text := ' Where ';
      Text := Text + ' ps.psldn3qtde < 0';

    end ;
  2:begin
      if text <> '' then
        Text := Text + ' and '
      else
        text := ' Where ';
      Text := Text + ' ps.psldn3qtde > 0';
    end ;
  3:begin
      if text <> '' then
        Text := Text + ' and '
      else
        text := ' Where ';
      Text := Text + ' ps.psldn3qtde = 0';
    end ;
  end;

  if AlteradosDE.Text <> '  /  /    ' then
  begin
      if text <> '' then
        Text := Text + ' and '
      else
        text := ' Where ';
      Text := Text + ' p.PRODDULTALTER >= :xDatade';
  end ;

  if AlteradosAte.Text <> '  /  /    ' then
  begin
      if text <> '' then
        Text := Text + ' and '
      else
        text := ' Where ';
      Text := Text + ' p.PRODDULTALTER <= :xDataate';
  end ;


  ibEstoque.Sql.Text:= 'select p.prodicod, p.PRODN3VLRCUSTOMED, p.PRODA30ADESCRREDUZ, p.prodn3vlrcusto, p.PRODN3VLRVENDA, p.PRODN3VLRVENDA2,'+
  'p.PRODN3VLRVENDA2+(p.prodn3vlrvenda2*p.PRODN3DOLARCOMPRA/100)  AS VENDA2,   '+
  'p.PRODN3VLRVENDA2+(p.prodn3vlrvenda2*p.PRODN3DOLARCUSTO/100)  AS VENDA3,   '+
  'ps.psldn3qtde, un.unida5descr                                             '+
  'FROM PRODUTO p left join produtosaldo ps on ps.prodicod = p.prodicod and ps.empricod = :xempricod '+
  'left join unidade un on un.unidicod = p.unidicod                          '+
  Text +' order by p.proda60descr';
  ibEstoque.Prepare;

  IBEstoque.Parambyname('xempricod').value := Dm.ibEmpresa.Fieldbyname('empricod').value;


  if ComboMarca.text <> '' then
    IBEstoque.Parambyname('xmarca').asinteger := Dm.IBMarcas.Fieldbyname('marcicod').value;

  if ComboGrupo.text <> '' then
    IBEstoque.Parambyname('xGrupo').asinteger := Dm.ibGrupos.Fieldbyname('GrupIcod').value;

  if AlteradosDE.Text <> '  /  /    ' then
    IBEstoque.Parambyname('xDatade').text := AlteradosDE.Text;

  if AlteradosAte.Text <> '  /  /    ' then
    IBEstoque.Parambyname('xDataate').text := AlteradosATE.Text;

  ibEstoque.Open;

  RDprint1.Abrir;
  nPag:= 1;
  while not ibestoque.Eof do
  begin
    cabecalho;
    inc(npag);
    ix:= 6;
    while (ix < 65) and (not ibestoque.Eof) do
    begin
      Try
        RDprint1.Imp(ix,1,ibEstoque.fieldbyname('prodicod').asstring);
        RDprint1.Imp(ix,7,ibestoque.fieldbyname('PRODA30ADESCRREDUZ').asstring);
        RDprint1.Imp(ix,39,Copy(ibestoque.fieldbyname('unida5descr').AsString,0,2));
        if CheckTudo.Checked then
        begin
          if not CheckQtd.Checked then
              RDprint1.Imp(ix,41,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PSLDN3QTDE').value),10,' ',0));
          RDprint1.Imp(ix,51,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRCUSTO').value),9,' ',0));
          RDprint1.Imp(ix,61,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA').value),9,' ',0));
          RDprint1.Imp(ix,72,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA2').value),9,' ',0));
          inc(ix);
        end else
        begin
          IF chkvarejo.Checked THEN
          Begin
            IF NOT chkocultacusto.Checked THEN
              RDprint1.Imp(ix,49,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRCUSTOMED').value),9,' ',0));
            if CheckAtacado.Checked then
            begin
              try
                RDprint1.Imp(ix,49,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA2').value),9,' ',0));
              except
                RDprint1.Imp(ix,49,'0,00');
              end;
            end;
            if not CheckQtd.Checked then
              RDprint1.Imp(ix,59,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PSLDN3QTDE').value),10,' ',0));
            RDprint1.Imp(ix,71,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA').value),9,' ',0));
          end else
          begin
            if CheckAtacado.Checked then
            begin
              try
                RDprint1.Imp(ix,49,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA2').value),9,' ',0));
              except
                RDprint1.Imp(ix,49,'0,00');
              end;
              if not CheckQtd.Checked then
                RDprint1.Imp(ix,59,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PSLDN3QTDE').value),10,' ',0));
              RDprint1.Imp(ix,71,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA').value),9,' ',0));
            end else
            begin
              if not CheckQtd.Checked then
                RDprint1.Imp(ix,42,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PSLDN3QTDE').value),10,' ',0));
              RDprint1.Imp(ix,53,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('PRODN3VLRVENDA2').value),9,' ',0));
              RDprint1.Imp(ix,63,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('VENDA2').value),9,' ',0));
              RDprint1.Imp(ix,71,StrTm(FormatFloat('###,##0.00',IBESTOQUE.Fieldbyname('VENDA3').value),9,' ',0));
            end;
          end;
          inc(ix);
        end;
      except
        inc(ix);
      end;
      ibEstoque.next;
    end;
      if not IBEstoque.Eof then
        RDprint1.Novapagina;
  end;
  RDprint1.Fechar;


  Close;

end;
procedure TFormRelListaPreco.CheckAtacadoClick(Sender: TObject);
begin
  if CheckAtacado.Checked then
  begin
    chkocultacusto.Checked := true;
    CheckTudo.Checked      := False;
  end;
end;

procedure TFormRelListaPreco.chkocultacustoClick(Sender: TObject);
begin
  if not chkocultacusto.Checked then
    CheckAtacado.Checked := False;
  if chkocultacusto.Checked then
    CheckTudo.Checked := false;
end;

procedure TFormRelListaPreco.CheckBox1Click(Sender: TObject);
begin
  if CheckTudo.Checked then
  begin
    CheckAtacado.Checked    := False;
    chkvarejo.Checked       := False;
    chkocultacusto.Checked  := False;
  end;
end;

procedure TFormRelListaPreco.chkvarejoClick(Sender: TObject);
begin
  if chkvarejo.Checked then
        CheckTudo.Checked      := False;

end;

end.

