unit TelaConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls;

type
  TFormTelaConsultaCliente = class(TFormTelaConsultaTemplate)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCLIEA14CGC: TStringField;
    SQLTemplateCLIEA20IE: TStringField;
    SQLTemplateCLIEA11CPF: TStringField;
    SQLTemplateCLIEA10RG: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateCLIEA60NOMEFANT: TStringField;
    SQLTemplateCLIEA15FONE1: TStringField;
    SQLTemplateCLIEA15FONE2: TStringField;
    SQLTemplateCLIEA15FAX: TStringField;
    SQLTemplateCLIEDCAD: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaCliente: TFormTelaConsultaCliente;

implementation

{$R *.dfm}

end.
