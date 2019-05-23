unit TelaItensSelFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ConerBtn, ExtCtrls, DB;

type
  TFormTelaItensSelFrete = class(TForm)
    PanelItensFrete: TPanel;
    Label5: TLabel;
    Panel7: TPanel;
    Label7: TLabel;
    Button1: TConerBtn;
    gbTipoFrete: TGroupBox;
    RBCif: TRadioButton;
    RBFob: TRadioButton;
    MemoOBS: TMemo;
    DBGridItensFrete: TDBGrid;
    DBEditQtde: TEdit;
    procedure DBGridItensFreteCellClick(Column: TColumn);
    procedure DBGridItensFreteColEnter(Sender: TObject);
    procedure DBGridItensFreteColExit(Sender: TObject);
    procedure DBGridItensFreteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridItensFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Label5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaItensSelFrete: TFormTelaItensSelFrete;

implementation

{$R *.dfm}

procedure TFormTelaItensSelFrete.DBGridItensFreteCellClick(Column: TColumn);
begin
    if DBGridItensFrete.SelectedField.DataType = ftBoolean then
      begin
        OriginalOptions := DBGridItensFrete.Options ;
        DBGridItensFrete.Options := DBGridItensFrete.Options - [dgEditing] ;
        SaveBoolean(DBGridItensFrete);
      end;
end;

procedure TFormTelaItensSelFrete.DBGridItensFreteColEnter(Sender: TObject);
begin
  if DBGridItensFrete.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridItensFrete.Options ;
      DBGridItensFrete.Options := DBGridItensFrete.Options - [dgEditing] ;
    end ;

end;

procedure TFormTelaItensSelFrete.DBGridItensFreteColExit(Sender: TObject);
begin
  if (DBGridItensFrete.SelectedField.DataType = ftBoolean) then
    DBGridItensFrete.Options := OriginalOptions;
  DBEditQtde.Visible := false;

end;

procedure TFormTelaItensSelFrete.DBGridItensFreteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const  StateCheck  : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                             DFCS_BUTTONCHECK or DFCS_CHECKED);

begin
  inherited;
  if (Column.Field.DataType = ftBoolean) then
    begin
      DBGridItensFrete.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridItensFrete.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       StateCheck[Column.Field.AsBoolean] + DFCS_FLAT);
    end;

  if gdFocused	in state then
    if  Column.Field.FieldName = 'Qtde' then
      begin
        DBEditQtde.Text := Column.Field.AsString;
        DBEditQtde.Parent := DBGridItensFrete;
        DBEditQtde.Left  := rect.Left;
        DBEditQtde.Top   := Rect.Top;
        DBEditQtde.Width := Rect.Right - Rect.Left;
        DBEditQtde.Height := Rect.Bottom - Rect.Top ;
        DBEditQtde.Visible := true;
      end;


end;

procedure TFormTelaItensSelFrete.DBGridItensFreteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( Key = VK_SPACE ) and ( DBGridItensFrete.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridItensFrete);

  if (Key = VK_Return) and (tbNotasCliente.State in DSEditModes) then
    tbNotasCliente.Post;

end;

procedure TFormTelaItensSelFrete.Button1Click(Sender: TObject);
var Enviar : string;
begin
  inherited;
  if RBCif.Checked or RBFob.Checked then
    begin
    PanelItensFrete.Visible := False;
    if not tbItensAgerar.IsEmpty then
      begin
        if not SQLFrete.Active then SQLFrete.Active := true;
        if not SQLFreteItens.Active then SQLFreteItens.Active := true;
        SQLFrete.Insert;
        SQLFreteEMPRICOD.Value := 1;
        SQLFreteTERMICOD.Value := 1;
        dm.CodigoAutomatico('FRETE',DSSQLFrete,SQLFrete,3,0);
        tbNotasCliente.first;
        while not tbNotasCliente.Eof do
          begin
            if tbNotasClienteIncluir.AsBoolean then
              begin
                tbItensAgerar.first;
                while not tbItensAgerar.eof do
                  begin
                    if tbItensAgerarIncluir.AsBoolean and (tbNotasClienteNota.AsString = tbItensAgerarNota.AsString) then  //Se a Nota esta selecionada e é igual a seleção atual
                      begin                                                                                                //Então ele vai incluir os itens no FreteItens e por Sim na inclusão da nota
                        SQLFreteItens.Append;                                                                              //no frete, se nenhum item da nota estiver selecionado a nota não é incluida.
                        SQLFreteItensFRETA13ID.AsString             := SQLFreteFRETA13ID.AsString;
                        SQLFreteItensPRODICOD.AsInteger             := tbItensAgerarProdICod.AsInteger;
                        SQLFreteItensFRITINOTAFISCAL.AsString       := tbItensAgerarNota.AsString;
                        SQLFreteItensPRODN2VLR.AsInteger            := tbItensAgerarVlrUnit.AsInteger;
                        SQLFreteItensFRITN2ICMS.AsInteger           := tbItensAgerarVlrIcms.AsInteger;
                        SQLFreteItensFRITN3QTDE.AsInteger           := tbItensAgerarQtde.AsInteger;
                        AtualizaBanco(SQLExec,'NOTACOMPRAITEM','NOCPIITENSENVIADOS = '+tbItensAgerarQtde.AsString, ' NOCPA13ID in (select NOCPA13ID from NOTACOMPRA where NOCPA30NRO = '+SQLFreteItensFRITINOTAFISCAL.AsString+') and PRODICOD = ' +SQLFreteItensPRODICOD.AsString);
                        SQLFreteItens.Post;
                        Enviar := 'S';
                      end;
                    tbItensAgerar.next;
                  end;
              end;
              if enviar = 'S' then
                begin
                  if not SQLFreteNotaCompra.Active then SQLFreteNotaCompra.Active := true;
                  SQLMaxCount.Close;
                  SQLMaxCount.SQL.Text := 'select max (FRNCICOD) from FRETENOTACOMPRA';
                  SQLMaxCount.Open;
                  SQLFreteNotaCompra.Append;
                  SQLFreteNotaCompraFRNCICOD.AsInteger    := SQLMaxCountMAX.AsInteger + 1;
                  SQLFreteNotaCompraNOCPA30NRO.AsInteger  := tbNotasClienteNota.AsInteger;
                  SQLFreteNotaCompraFRETA13ID.AsString    := SQLFreteFRETA13ID.AsString;
                  TbItensAgerar.First;
                  SQLFreteNotaCompra.post;
                  enviar := 'N';
                end;
            tbNotasCliente.Next;
          end;
        SQLFreteCLIEA13IDREMETE.AsString                 := 'REMETENTE';
        SQLFreteCLIEA13IDDESTINO.AsString                := SQLClientesComprasCLIEA13ID.AsString;
        if RBCif.Checked then SQLFreteFRETCPAGO.AsString := 'S'
        else SQLFreteFRETCPAGO.AsString                  := 'N';
        SQLFreteFRETTOBS.AsString                        := MemoOBS.Text;
        SQLFreteREGISTRO.AsDateTime                      := NOW;
        SQLFrete.Post;
      end;
  end
  else
    begin
      Informa('Informe um tipo de frete.');
      gbTipoFrete.SetFocus;
    end;
end;

procedure TFormTelaItensSelFrete.Label5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
const SC_DragMove = $F012{a magic number};
begin
    ReleaseCapture;
    self.perform(WM_SysCommand, SC_DragMove, 0);
end;

end;

end.
