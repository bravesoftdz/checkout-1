unit CadastroHorario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroHorario = class(TFormCadastroTEMPLATE)
    SQLTemplateHORAICOD: TIntegerField;
    SQLTemplateHORAA60DESCR: TStringField;
    SQLTemplateHORADSEGMANENT: TDateTimeField;
    SQLTemplateHORADSEGMANSAI: TDateTimeField;
    SQLTemplateHORADSEGTARENT: TDateTimeField;
    SQLTemplateHORADSEGTARSAI: TDateTimeField;
    SQLTemplateHORADSEGNOIENT: TDateTimeField;
    SQLTemplateHORADSEGNOISAI: TDateTimeField;
    SQLTemplateHORADTERMANENT: TDateTimeField;
    SQLTemplateHORADTERMANSAI: TDateTimeField;
    SQLTemplateHORADTERTARENT: TDateTimeField;
    SQLTemplateHORADTERTARSAI: TDateTimeField;
    SQLTemplateHORADTERNOIENT: TDateTimeField;
    SQLTemplateHORADTERNOISAI: TDateTimeField;
    SQLTemplateHORADQUAMANENT: TDateTimeField;
    SQLTemplateHORADQUAMANSAI: TDateTimeField;
    SQLTemplateHORADQUATARENT: TDateTimeField;
    SQLTemplateHORADQUATARSAI: TDateTimeField;
    SQLTemplateHORADQUANOIENT: TDateTimeField;
    SQLTemplateHORADQUANOISAI: TDateTimeField;
    SQLTemplateHORADQUIMANENT: TDateTimeField;
    SQLTemplateHORADQUIMANSAI: TDateTimeField;
    SQLTemplateHORADQUITARENT: TDateTimeField;
    SQLTemplateHORADQUITARSAI: TDateTimeField;
    SQLTemplateHORADQUINOIENT: TDateTimeField;
    SQLTemplateHORADQUINOISAI: TDateTimeField;
    SQLTemplateHORADSEXMANENT: TDateTimeField;
    SQLTemplateHORADSEXMANSAI: TDateTimeField;
    SQLTemplateHORADSEXTARENT: TDateTimeField;
    SQLTemplateHORADSEXTARSAI: TDateTimeField;
    SQLTemplateHORADSEXNOIENT: TDateTimeField;
    SQLTemplateHORADSEXNOISAI: TDateTimeField;
    SQLTemplateHORADSABMANENT: TDateTimeField;
    SQLTemplateHORADSABMANSAI: TDateTimeField;
    SQLTemplateHORADSABTARENT: TDateTimeField;
    SQLTemplateHORADSABTARSAI: TDateTimeField;
    SQLTemplateHORADSABNOIENT: TDateTimeField;
    SQLTemplateHORADSABNOISAI: TDateTimeField;
    SQLTemplateHORADDOMMANENT: TDateTimeField;
    SQLTemplateHORADDOMMANSAI: TDateTimeField;
    SQLTemplateHORADDOMTARENT: TDateTimeField;
    SQLTemplateHORADDOMTARSAI: TDateTimeField;
    SQLTemplateHORADDOMNOIENT: TDateTimeField;
    SQLTemplateHORADDOMNOISAI: TDateTimeField;
    SQLTemplateHORADTOLEXTRA: TDateTimeField;
    SQLTemplateHORADTOLATRAZO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox8: TGroupBox;
    Label19: TLabel;
    Label26: TLabel;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Label33: TLabel;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    Label40: TLabel;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    Label47: TLabel;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
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
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroHorario: TFormCadastroHorario;

implementation

{$R *.dfm}

procedure TFormCadastroHorario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Horario';
end;

end.
