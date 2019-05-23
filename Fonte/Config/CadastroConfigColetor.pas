unit CadastroConfigColetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConfigColetor = class(TFormCadastroTEMPLATE)
    SQLTemplateCFCOA13ID: TStringField;
    SQLTemplateCFCOICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCFCOA60DESCR: TStringField;
    SQLTemplateCFCOTPATHFILE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    OpenDialog: TOpenDialog;
    ButtonPathFile: TSpeedButton;
    SQLTemplateCFCOIPOSPRODICOD: TIntegerField;
    SQLTemplateCFCOITAMPRODICOD: TIntegerField;
    SQLTemplateCFCOIPOSPRODN3QTDE: TIntegerField;
    SQLTemplateCFCOITAMPRODN3QTDE: TIntegerField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateCFCOIPOSEMPRICOD: TIntegerField;
    SQLTemplateCFCOITAMEMPRICOD: TIntegerField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonPathFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConfigColetor: TFormCadastroConfigColetor;

implementation

{$R *.dfm}

procedure TFormCadastroConfigColetor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGCOLETOR';
end;

procedure TFormCadastroConfigColetor.ButtonPathFileClick(
  Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.State in dsEditModes then
    begin
      OpenDialog.Execute;
      DSTemplate.DataSet.FieldByName('CFCOTPATHFILE').AsString := OpenDialog.FileName;
    end;
end;

end.
