unit TelaTotaisCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall, DB, DBTables, RxQuery,
  OleCtrls, Grids, DBGrids;

type
  TFormTelaTotaisCaixa = class(TForm)
    LblNomeSistema: TRxLabel;
    dxfLabel13: TRxLabel;
    dxfLabel14: TRxLabel;
    dxfLabel15: TRxLabel;
    SQLTotaNumerario: TRxQuery;
    SQLTotalOperacao: TRxQuery;
    DSSQLTotaNumrario: TDataSource;
    DSSQLTotalOperacao: TDataSource;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioSUM: TBCDField;
    Panel1: TPanel;
    dxfLabel1: TRxLabel;
    dxfLabel2: TRxLabel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TBCDField;
    SQLTotalOperacaoDEBITOS: TBCDField;
    Edit1: TEdit;
    RxLabel6: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTotaisCaixa: TFormTelaTotaisCaixa;

implementation

uses TelaItens, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaTotaisCaixa.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;
end;

procedure TFormTelaTotaisCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTotaisCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTotaisCaixa.FormActivate(Sender: TObject);
begin
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacroByName('MFiltro').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + IntToStr(TerminalAtual)+ ' and '+
                                                   'MOVIMENTOCAIXA.MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', StrToDate(TerminalAtualData)) + '"' ;
  SQLTotaNumerario.Open ;

  SQLTotalOperacao.Close ;
  SQLTotalOperacao.MacroByName('MFiltro').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + IntToStr(TerminalAtual)+ ' and '+
                                                   'MOVIMENTOCAIXA.MVCXDMOV = "' + FormatDateTime('mm/dd/yyyy', StrToDate(TerminalAtualData)) + '"' ;
  SQLTotalOperacao.Open ;
end;

end.
