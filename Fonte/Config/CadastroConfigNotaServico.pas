unit CadastroConfigNotaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, VarSYS,FormResources,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls,
  RxLookup, RxDBComb;

type
  TFormCadastroNotaServico = class(TFormCadastroTEMPLATE)
    SQLTemplateID: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateID_TRIBUTACAO: TIntegerField;
    SQLTemplateLOCAL_TRIBUTACAO: TIntegerField;
    Label6: TLabel;
    DBEditEmpresa: TDBEdit;
    RetornaEmpresa: TSpeedButton;
    DBEdit6: TDBEdit;
    TblEmpresa: TTable;
    TblEmpresaEMPRICOD: TIntegerField;
    TblEmpresaEMPRA60RAZAOSOC: TStringField;
    TblEmpresaEMPRA60NOMEFANT: TStringField;
    SQLTemplateEmpresaLOOKUP: TStringField;
    Label7: TLabel;
    Label3: TLabel;
    ComboSerie: TRxDBLookupCombo;
    AcessaSeries: TSpeedButton;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSerieSERIINRONF: TIntegerField;
    DSSQLSerie: TDataSource;
    SQLTributacaoNFSE: TRxQuery;
    DSSQLTributacaoNFSE: TDataSource;
    SQLTributacaoNFSEID: TIntegerField;
    SQLTributacaoNFSECODIGO_TRIBUTACAO: TStringField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcessaSeriesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNotaServico: TFormCadastroNotaServico;

implementation

uses CadastroEmpresa, CadastroSerie;

{$R *.dfm}

procedure TFormCadastroNotaServico.RetornaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD' ;
  CriaFormulario(TFormCadastroEmpresa,'FormCadastroEmpresa',False,True,True,'');
end;

procedure TFormCadastroNotaServico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIG_SERVICO';
  SQLSerie.Open;
  SQLTributacaoNFSE.Open;
end;

procedure TFormCadastroNotaServico.AcessaSeriesClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('SERIA5COD');
  FieldOrigem := 'SERIA5COD';
  DataSetLookup :=  SQLSerie;
  CriaFormulario(TFormCadastroSerie,'FormCadastroSerie',False,True,True,'');
end;

end.
