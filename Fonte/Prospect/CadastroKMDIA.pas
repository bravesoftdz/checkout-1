unit CadastroKMDIA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, RxLookup, DBCtrls, DB, DBTables, DBActns,
  ActnList, ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl;

type
  TFormCadastroKMDIA = class(TFormCadastroTEMPLATE)
    SQLTemplateKMDIA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateKMDIICOD: TIntegerField;
    SQLTemplateKMDIDDATA: TDateTimeField;
    SQLTemplateKMDICSTATUS: TStringField;
    SQLTemplateKMDIIINICIAL: TIntegerField;
    SQLTemplateKMDIIFINAL: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label4: TLabel;
    SQLFunc: TRxQuery;
    SQLFuncFUNCA13ID: TStringField;
    SQLFuncEMPRICOD: TIntegerField;
    SQLFuncTERMICOD: TIntegerField;
    SQLFuncFUNCICOD: TIntegerField;
    SQLFuncFUNCA60NOME: TStringField;
    SQLFuncFUNCCAUTONOMO: TStringField;
    SQLFuncPENDENTE: TStringField;
    SQLFuncREGISTRO: TDateTimeField;
    SQLFuncFUNCA11CPF: TStringField;
    SQLFuncFUNCA14CNPJ: TStringField;
    SQLFuncFUNCA15INSS: TStringField;
    SQLFuncFUNCA60ENDRES: TStringField;
    SQLFuncFUNCN2PERCCOMISSAO: TBCDField;
    SQLFuncVEICA13ID: TStringField;
    DSSQLFunc: TDataSource;
    DBDateEdit1: TDBDateEdit;
    SQLTemplateFUNCA13ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroKMDIA: TFormCadastroKMDIA;

implementation

{$R *.dfm}

procedure TFormCadastroKMDIA.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'KMDIA';
  SQLFunc.Open;
end;

procedure TFormCadastroKMDIA.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateKMDIDDATA.AsString := FormatDateTime('dd/mm/yyyy',now);   
end;

end.
