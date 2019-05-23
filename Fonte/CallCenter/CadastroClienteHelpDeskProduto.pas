unit CadastroClienteHelpDeskProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls, Placemnt, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteHelpDeskProduto = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLPOCTEMHELP: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLProduto: TRxQuery;
    SQLCliente: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ComboProduto: TRxDBLookupCombo;
    DSSQLProduto: TDataSource;
    BtnProduto: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteHelpDeskProduto: TFormCadastroClienteHelpDeskProduto;

implementation

uses DataModulo, UnitLibrary, TelaConsultaProduto, VarSYS, FormResources;

{$R *.dfm}

procedure TFormCadastroClienteHelpDeskProduto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEHELPDESKPRODUTO';
end;

procedure TFormCadastroClienteHelpDeskProduto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplate.FieldByName('CLIEA13ID').AsString := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
end;

procedure TFormCadastroClienteHelpDeskProduto.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if ComboProduto.Value <> '' then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('SELECT * FROM CLIENTEHELPDESKPRODUTO WHERE CLIEA13ID =  "' + SQLTemplateCLIEA13ID.AsString + '" ');
      DM.SQLTemplate.SQL.Add('AND PRODICOD = ' + SQLTemplatePRODICOD.AsString);
      DM.SQLTemplate.Open;
      if not DM.SQLTemplate.IsEmpty then
        begin
          Informa('Este produto já foi informado para o cliente selecionado!');
          ComboProduto.SetFocus;
          Abort;
        end;
    end
  else
    begin
      Informa('Você deve selecionar um produto antes de continuar!');
      ComboProduto.SetFocus;
      Abort;
    end;
end;

procedure TFormCadastroClienteHelpDeskProduto.BtnProdutoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,False,'');

end;

procedure TFormCadastroClienteHelpDeskProduto.ComboProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     BtnProduto.Click;
end;

end.
