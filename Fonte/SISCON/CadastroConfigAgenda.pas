unit CadastroConfigAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBActns, ActnList, ImgList, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, RXDBCtrl, RxLookup,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConfigAgendaProf = class(TFormCadastroTEMPLATE)
    SQLTemplateCFAGICOD: TIntegerField;
    SQLTemplatePROFICOD: TIntegerField;
    SQLTemplateCFAGIINTERVALO: TIntegerField;
    SQLTemplateCFAGCDOMINGO: TStringField;
    SQLTemplateCFAGCSEGUNDA: TStringField;
    SQLTemplateCFAGCTERCA: TStringField;
    SQLTemplateCFAGCQUARTA: TStringField;
    SQLTemplateCFAGCQUINTA: TStringField;
    SQLTemplateCFAGCSEXTA: TStringField;
    SQLTemplateCFAGCSABADO: TStringField;
    TblProfissional: TTable;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    SQLTemplateCFAGDFERIAINI: TDateTimeField;
    SQLTemplateCFAGDFERIAFIM: TDateTimeField;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    SQLTemplateCFAGDDOMINI: TDateTimeField;
    SQLTemplateCFAGDDOMFIM: TDateTimeField;
    SQLTemplateCFAGDSEGINI: TDateTimeField;
    SQLTemplateCFAGDSEGFIM: TDateTimeField;
    SQLTemplateCFAGDTERINI: TDateTimeField;
    SQLTemplateCFAGDTERFIM: TDateTimeField;
    SQLTemplateCFAGDQUAINI: TDateTimeField;
    SQLTemplateCFAGDQUAFIM: TDateTimeField;
    SQLTemplateCFAGDQUIINI: TDateTimeField;
    SQLTemplateCFAGDQUIFIM: TDateTimeField;
    SQLTemplateCFAGDSEXINI: TDateTimeField;
    SQLTemplateCFAGDSEXFIM: TDateTimeField;
    SQLTemplateCFAGDSABINI: TDateTimeField;
    SQLTemplateCFAGDSABFIM: TDateTimeField;
    SQLTemplateUSUAICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    TblProfissionalVENDICOD: TIntegerField;
    TblProfissionalVENDA60NOME: TStringField;
    TblProfissionalESPEICOD: TIntegerField;
    DSTblProf: TDataSource;
    ComboProfissional: TRxDBLookupCombo;
    SQLTemplateNomeProfissional: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConfigAgendaProf: TFormCadastroConfigAgendaProf;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormCadastroConfigAgendaProf.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONFIGAGENDAPROF' ;
  TblProfissional.Open;
end;

procedure TFormCadastroConfigAgendaProf.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateNomeProfissional.Value := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',SQLTemplatePROFICOD.AsString);
end;

end.
