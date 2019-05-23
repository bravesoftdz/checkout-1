unit CadastroPrevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, EDBNum, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroPrevenda = class(TFormCadastroTEMPLATE)
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplatePRVDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCONVICOD: TIntegerField;
    SQLTemplatePRVDN2TOTITENS: TBCDField;
    SQLTemplatePRVDN2DESC: TBCDField;
    SQLTemplatePRVDN2ACRESC: TBCDField;
    SQLTemplatePRVDN2TOTITENSRET: TBCDField;
    SQLTemplatePRVDCTIPOPADRAO: TStringField;
    SQLTemplatePRVDN2CONVTAXA: TBCDField;
    SQLTemplatePRVDINROORDCOMPRA: TIntegerField;
    SQLTemplatePRVDCIMPORT: TStringField;
    SQLTemplatePRVDCMARCADO: TStringField;
    SQLTemplateCLIENTENOME: TStringField;
    SQLTemplateCLIENTECNPJ: TStringField;
    SQLTemplateCLIENTEENDE: TStringField;
    SQLTemplateCLIENTECIDA: TStringField;
    SQLTemplateCLIENTEOBS: TStringField;
    SQLTemplatePDVDDHVENDA: TDateTimeField;
    SQLTemplateCLIENTEFONE: TStringField;
    SQLTemplatePDVCPRECONCLU: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TEvDBNumEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPrevenda: TFormCadastroPrevenda;

implementation

{$R *.dfm}

procedure TFormCadastroPrevenda.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PREVENDA';
end;

end.
