unit CadastroTabelaFreteFaixaPeso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxLookup, DBCtrls;

type
  TFormCadastroTabelaFreteFaixaPeso = class(TFormCadastroTEMPLATE)
    SQLTemplateTBFTICOD: TIntegerField;
    SQLTemplateTFFVICOD: TIntegerField;
    SQLTemplateTFFVN2PESOMIN: TBCDField;
    SQLTemplateTFFVN2PESOMAX: TBCDField;
    GroupBox1: TGroupBox;
    lblDe: TLabel;
    DBEdit2: TDBEdit;
    lblAte: TLabel;
    edAte: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateTFFVN2PESOVLR: TBCDField;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    chkEntrega: TDBCheckBox;
    chkColeta: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplateTBFCICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEdit2Enter(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateTFFVN2PESOMINChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaFreteFaixaPeso: TFormCadastroTabelaFreteFaixaPeso;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTabelaFreteFaixaPeso.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TABELAFRETEFAIXAVLR';
end;

procedure TFormCadastroTabelaFreteFaixaPeso.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTBFTICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('TBFTICOD').AsInteger;
  SQLTemplateTBFCICOD.AsInteger := DSMasterTemplate.DataSet.FieldByName('TBFCICOD').AsInteger;
  SQLTemplateTFFVN2PESOMIN.AsFloat := 0;
  SQLTemplateTFFVN2PESOMAX.AsFloat := 0;
  SQLTemplateTFFVN2PESOVLR.AsFloat := 0;
end;

procedure TFormCadastroTabelaFreteFaixaPeso.DBEdit2Enter(Sender: TObject);
begin
  inherited;
  (Sender AS TDBEdit).SelectAll;
end;

procedure TFormCadastroTabelaFreteFaixaPeso.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [dsInsert] then
     begin
        SQLCount.Close;
        SQLCount.SQL.Text := 'Select Max(TFFVN2PESOMAX) MaxPeso From TABELAFRETEFAIXAVLR where ' +
                             'TBFTICOD = ' + IntToStr(SQLTemplateTBFTICOD.AsInteger) + ' and ' +
                             'TBFCICOD = ' + IntToStr(SQLTemplateTBFCICOD.AsInteger);
        SQLCount.Open;

        if SQLTemplateTFFVN2PESOMIN.AsFloat <= SQLCount.FieldByName('MaxPeso').AsFloat then
           begin
              Informa('O peso Minimo deve ser Maior que ' + FormatFloat('#,##0.00',SQLCount.FieldByName('MaxPeso').AsFloat));
              Abort;
           end;

        if (DSMasterTemplate.DataSet.FieldByName('TBFCCCALCULOPESO').AsString = 'S') and
           (SQLTemplateTFFVN2PESOMIN.AsFloat >= SQLTemplateTFFVN2PESOMAX.AsFloat)    then
           begin
              Informa('O Peso Mínimo deve ser menor que o Peso Máximo.');
              Abort;
           end;

        if (DSMasterTemplate.DataSet.FieldByName('TBFCCCALCULOPESO').AsString = 'S') then
           begin
              SQLCount.Close;
              SQLCount.SQL.Text := 'Select TFFVN2PESOMIN,TFFVN2PESOMAX From TABELAFRETEFAIXAVLR ' +
                                   'where TFFVN2PESOMIN in (Select TFFVN2PESOMAX From TABELAFRETEFAIXAVLR where '+
                                   'TBFTICOD = ' + IntToStr(SQLTemplateTBFTICOD.AsInteger) + ' and ' +
                                   'TBFCICOD = ' + IntToStr(SQLTemplateTBFCICOD.AsInteger) + ') and ' +
                                   'TBFTICOD = ' + IntToStr(SQLTemplateTBFTICOD.AsInteger) + ' and ' +
                                   'TBFCICOD = ' + IntToStr(SQLTemplateTBFCICOD.AsInteger);
              SQLCount.Open;

              if not SQLCount.IsEmpty then
                 begin
                    Informa('Você esta inserindo uma Faixa que exite.');
                    Abort;
                 end;
           end;
     end;
end;

procedure TFormCadastroTabelaFreteFaixaPeso.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('TBFCCCALCULOPESO').AsString = 'S' then
     begin
        lblDe.Caption := 'De';
        lblAte.Visible := True;
        edAte.Visible := True;
     end
  else
     begin
        lblDe.Caption := 'Peso';
        lblAte.Visible := False;
        edAte.Visible := False;
     end

end;

procedure TFormCadastroTabelaFreteFaixaPeso.SQLTemplateTFFVN2PESOMINChange(
  Sender: TField);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('TBFCCCALCULOPESO').AsString = 'N' then
     SQLTemplateTFFVN2PESOMAX.AsFloat := SQLTemplateTFFVN2PESOMIN.AsFloat
end;

end.
