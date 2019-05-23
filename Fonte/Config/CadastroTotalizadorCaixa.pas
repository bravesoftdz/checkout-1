unit CadastroTotalizadorCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTotalizadorCaixa = class(TFormCadastroTEMPLATE)
    SQLTemplateTOTAICOD: TIntegerField;
    SQLTemplateTOTAA60DESCR: TStringField;
    SQLTemplateTOTACTRANSFSALDO: TStringField;
    SQLTemplateTOTACDEBITOCREDITO: TStringField;
    SQLTemplateTOTAIORDLIST: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    DBEdit3: TRxDBComboBox;
    Label4: TLabel;
    DBEditTipo: TRxDBComboBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLOperNumeTotalizam: TRxQuery;
    SQLOperNumeTotalizamCODIGO: TIntegerField;
    SQLOperNumeTotalizamTOTALIZADOR: TIntegerField;
    SQLOperNumeTotalizamDESCRICAO: TStringField;
    SQLOperNumeTotalizamSOMASUBTRAI: TStringField;
    TabSheetNumeOperTot: TTabSheet;
    DBGrid1: TDBGrid;
    DSSQLOperNumeTotalizam: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateTOTACDEBITOCREDITOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTotalizadorCaixa: TFormCadastroTotalizadorCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroTotalizadorCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TOTALIZADORCAIXA' ;
  SQLOperNumeTotalizam.Open ;
end;

procedure TFormCadastroTotalizadorCaixa.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      PagePrincipal.ActivePage := TabSheetNumeOperTot ;
    end ;

end;

procedure TFormCadastroTotalizadorCaixa.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLLocate('TOTALIZADORDIARIOCAIXA','TOTAICOD','TOTAICOD',SQLTemplateTOTAICOD.AsString) <> '' then
    begin
      Informa('Este totalizador já foi utilizado no caixa, você não poderá excluí-lo...' + #13 +
              'Se desejar desativar este totalizador digite -1 no campo "Ordem Listar".');
      Abort;
      Exit;
    end;
  inherited;
end;

procedure TFormCadastroTotalizadorCaixa.SQLTemplateTOTACDEBITOCREDITOChange(
  Sender: TField);
begin
  if SQLLocate('TOTALIZADORDIARIOCAIXA','TOTAICOD','TOTAICOD',SQLTemplateTOTAICOD.AsString) <> '' then
    begin
      Informa('Este totalizador já foi utilizado no caixa, você não poderá efetuar alterações neste campo...');
      Abort;
    end;
  inherited;
end;

end.
