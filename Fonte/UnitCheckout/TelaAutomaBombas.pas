unit TelaAutomaBombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXCtrls, Menus, StdCtrls, DB, DBTables, RxQuery;

const
  InformandoItens = 'InformandoItens';

type
  TFormTelaAutomaBombas = class(TForm)
    DBGridPista: TDBGrid;
    LBFuncao: TRxLabel;
    PopupMenu1: TPopupMenu;
    Aferrio1: TMenuItem;
    N1: TMenuItem;
    Aferrio2: TMenuItem;
    VerAbastecidasExcluidas1: TMenuItem;
    VerAferies1: TMenuItem;
    LBTitulo: TRxLabel;
    RxLabel3: TRxLabel;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TBCDField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    // Funcoes para Quitacao automatica das abastecidas pendentes
    Function  EmiteCupomDesconto:Boolean;
    Function  GravaCupom:Boolean;
    Function  GravaCupomItem:Boolean;
    Function  GravaCupomNumerario:Boolean;
    Function  GravaMovCaixa:Boolean;

    procedure FormCreate(Sender: TObject);
    procedure DBGridPistaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridPistaKeyPress(Sender: TObject; var Key: Char);
    procedure Aferrio1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Aferrio2Click(Sender: TObject);
    procedure VerAbastecidasExcluidas1Click(Sender: TObject);
    procedure VerAferies1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    TipoTela : String;
    CanalAnterior, Produto, CodICMS, Unidade, UltEncerrante, QtdeTotalSTR : String;
    ItemECF : integer;
    VlrUnit, QtdTotal, VlrTotalSemDesconto, vPercDesc, VlrTotalAbastecidas : Double;
    FechouCupomFiscal : Boolean;
  public
    { Public declarations }
  end;

var
  FormTelaAutomaBombas: TFormTelaAutomaBombas;
implementation

uses DataModulo, TelaItens, DataModuloTemplate, UnitLibrary,
  UnitCheckoutLibrary, ECFCheckout, VarSYS, Epson_Termica, BemaFi32, Sigtron_FS345_FuncoesDLL;

{$R *.dfm}

procedure gravaArquivoTexto (linha: String);
var
   NomeArquivo, NomeArquivoOntem, data, dataant: string;
   Arquivo, ArquivoOntem: TextFile;
   datahoje, dataontem: TDateTime;
 begin
   dataontem := Date() - 1;
   dataant := FormatDateTime('ddmmyyyy',dataontem);

   datahoje := Date();
   data := FormatDateTime('ddmmyyyy',datahoje);

   NomeArquivoOntem := 'C:\Unit\Gestao\Bombas\bk_bombas_'+ dataant +'.ugm';
   AssignFile(ArquivoOntem, NomeArquivoOntem);
   if FileExists(NomeArquivoOntem) then
              DeleteFile(NomeArquivoOntem);


   NomeArquivo := 'C:\Unit\Gestao\Bombas\bk_bombas_'+ data +'.ugm';

   AssignFile(Arquivo, NomeArquivo);

   if FileExists(NomeArquivo) then
     Append(arquivo) { se existir, apenas adiciona linhas }
   else
     ReWrite(arquivo); { cria um novo se não existir }
   try
     WriteLn(arquivo, linha);
   finally
     CloseFile(arquivo);

 end;
end;


procedure TFormTelaAutomaBombas.FormCreate(Sender: TObject);
var CorrigirTotal : boolean;
    vVlrTotalSTR, vVlrQtdeSTR, vDecimalSTR, DataInicio, DataFim : string;
    Diad, Mesd, Anod, Hord, Mind, Segd : String;
    Anoy, Mesy, Diay, Hory, Miny, Segy, Secy : Word;
    vVlrTotal, vVlrQtde, VLRTotal, VLRQuant, VLRUnit : Double;
    arq: TextFile;
    arquivo, linha, stVLRTotal, stVLRQuant, stVLRUnit, BOMBAID, queryV, queryUn, Registrov: String;
    DATABase : TDateTime;
    DataHoje : TDateTime;
    Encerrante, vValorRegistro : Integer;

begin

   //INICIO STRING BOMBAS MECÂNICAS
   arquivo :='C:\Unit\Gestao\Bombas\bombas.ugm';

  if(FileExists(arquivo)) then
  begin

    AssignFile(arq,arquivo);
    Reset(arq);

    VLRTotal := 0;
    VLRQuant := 0;
    VLRUnit  := 0;
    stVLRTotal := '';
    stVLRQuant := '';
    stVLRUnit  := '';
    Registrov  := '';
    BOMBAID := '';

    while not Eof(arq) do
     begin

         ReadLn (arq, linha);

          //BOMBA
          BOMBAID  := copy(linha, 1, 2);

          //PULSOS - A CADA 1000 É UM LITRO
          stVLRQuant := trim(copy(linha, 3,10));
          VLRQuant := StrToFloat(stVLRQuant);
          VLRQuant := VLRQuant/100;
          stVLRQuant  := FormatFloat('##0.00',VLRQuant);

          stVLRTotal := '0';

          stVLRUnit := '0';

          DataHoje := Now;

          Diad := copy(linha, 13,2);
          Mesd := copy(linha, 15,2);
          Anod := copy(linha, 17,2);
          Hord := copy(linha, 21,2);
          Mind := copy(linha, 23,2);
          Segd := copy(linha, 25,2);

          DecodeDate(DataHoje, Anoy, Mesy, Diay);
          DecodeTime(DataHoje, Hory, Miny, Segy, Secy);

          if(Diad = 'FF') then
               Diad := IntToStr(Diay);

          if(Mesd = 'FF') then
                Mesd := IntToStr(Mesy);

          if(Anod = 'FF') then
                Anod := IntToStr(Anoy);

          if(Hord = 'FF') then
                Hord := IntToStr(Hory);

          if(Mind = 'FF') then
                Mind := IntToStr(Miny);

          if(Segd = 'FF') then
                Segd := IntToStr(Segy);



          //DATA
          DATABase := StrToDateTime(Diad +'/'+ Mesd +'/'+ Anod +' '+ Hord + ':'+ Mind + ':'+ Segd);

          DataInicio := FormatDateTime('mm/dd/yyyy 00:00:00', DATABase);
          DataFim := FormatDateTime('mm/dd/yyyy 23:59:59', DATABase);

          queryV := 'insert into LEITURAPISTA '+
                    '(ABASTECIDA, DATA, CANAL, LITROS, VALORTOTAL, VALORUNITARIO, REGISTRO, '+
                    'MARCADO, ENCERRANTE) '+
                    'values '+
                    '((Select coalesce(max(a.abastecida),0)+1 from leiturapista a), "' + FormatDateTime('mm/dd/yyyy hh:nn:ss',DATABase) + '","' + BOMBAID + '","'+ TrocaVirgulaPorPonto(stVLRQuant) +'", "0", "0", (Select coalesce(max(a.registro),0)+1 from leiturapista a where a.data >= "' + DataInicio + '" and a.data <= "'+ DataFim +'") , '+
                    '"N", "0")';

            dm.SQLPista.Close;
            dm.SQLPIsta.SQL.Text := queryV;
            dm.SQLPIsta.ExecSQL;
            dm.SQLPIsta.Close;


            //VALOR UNITARIO
            queryUn := 'UPDATE LEITURAPISTA SET VALORUNITARIO = (SELECT BOMBN3VLRVISTA FROM BOMBA WHERE CONVERTER="'+ BOMBAID +'") WHERE ABASTECIDA = (Select max(a.abastecida) from leiturapista a)' ;
            dm.SQLPista.Close;
            dm.SQLPIsta.SQL.Text := queryUn;
            dm.SQLPIsta.ExecSQL;
            dm.SQLPIsta.Close;


      gravaArquivoTexto(linha);

     end;

     CloseFile(arq);

     DeleteFile(arquivo);

     ReWrite(arq); { cria um novo se não existir }

     CloseFile(arq);

   end;


   //FIM STRING BOMBAS MECÂNICAS


  Dm.SQLPista.EnableControls;

  DBGridPista.DataSource := dm.dtsPista;
  if not Dm.IBdb.Connected then
    Dm.IBDB.Connected := true;
  if not Dm.IBTran01.InTransaction then
    Dm.IBTran01.StartTransaction;

  dm.SQLBomba.Close;
  dm.SQLBomba.MacroByName('MFiltro').value := '0 = 0';
  dm.SQLBomba.Open;

  // Testa para ver se a automacao trouxe o valor total
  Dm.SQLPista.Close;
  Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
  Dm.SQLPista.prepare;
  Dm.SqlPista.Open;
  DM.SQLPista.First;
  CorrigirTotal := False;
  while not DM.SQLPista.eof do
    begin
      if DM.SQLPistaVALORTOTAL.Value = 0 then CorrigirTotal := True;
      dm.SQLPista.Next;
    end;
  dm.SQLPista.first;

  if CorrigirTotal then
     begin
       Dm.SQLPista.Close;
       Dm.SQLPista.SQL.Text := 'Update Leiturapista set VALORTOTAL = (VALORUNITARIO * LITROS)';
       DM.SQLPista.ExecSQL;
       Dm.SQLPista.Close;
     end;

  // se tiver o arquivo BombaManual.txt, refazer o valor do Total
  // se tiver decimais no total, verificar se o decimal for ate 4 centavos, arredondar para baixo
  // se tiver decimais no total, verificar se o decimal for acima 6 centavos, arredondar para cima
  if FileExists('BombaMecanica.txt') then
     begin
        Dm.SQLPista.Close;
        Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
        Dm.SQLPista.prepare;
        Dm.SqlPista.Open;
        DM.SQLPista.First;
       while not DM.SQLPista.eof do
         begin
           if frac(DM.SQLPistaVALORTOTAL.Value) > 0 then
             begin
               vVlrTotalSTR := FormatFloat('##0.00',frac(DM.SQLPistaVALORTOTAL.Value));
               vDecimalSTR := copy(vVlrTotalSTR,length(vVlrTotalSTR),length(vVlrTotalSTR));
               if StrToInt(vDecimalSTR) < 4 then
                 begin
                   vVlrTotalSTR := '0,0'+vDecimalSTR;
                   vVlrTotal := DM.SQLPistaVALORTOTAL.Value - StrToFloat(vVlrTotalSTR);
                   vVlrQtde  := vVlrTotal / dm.SQLPistaVALORUNITARIO.Value;
                   vVlrTotalSTR := FormatFloat('##0.00',vVlrTotal);
                   vVlrQtdeSTR  := FormatFloat('##0.000',vVlrQtde);
                   Dm.IBSQL.Close;
                   Dm.IBSQL.SQL.Clear;
                   Dm.IBSQL.SQL.Add('Update Leiturapista set VALORTOTAL='+TrocaVirgulaPorPonto(vVlrTotalSTR)+' , ');
                   Dm.IBSQL.SQL.Add('LITROS='+TrocaVirgulaPorPonto(vVlrQtdeSTR));
                   Dm.IBSQL.SQL.Add(' Where Abastecida='+dm.SQLPistaABASTECIDA.AsString);
                   DM.IBSQL.ExecQuery;
                 end;
               if StrToInt(vDecimalSTR) > 5 then
                 begin
                   vVlrTotalSTR := '0,0'+IntToStr(10-StrToInt(vDecimalSTR));
                   vVlrTotal := DM.SQLPistaVALORTOTAL.Value + StrToFloat(vVlrTotalSTR);
                   vVlrQtde  := vVlrTotal / dm.SQLPistaVALORUNITARIO.Value;
                   vVlrTotalSTR := FormatFloat('##0.00',vVlrTotal);
                   vVlrQtdeSTR  := FormatFloat('##0.000',vVlrQtde);
                   Dm.IBSQL.Close;
                   Dm.IBSQL.SQL.Clear;
                   Dm.IBSQL.SQL.Add('Update Leiturapista set VALORTOTAL = '+TrocaVirgulaPorPonto(vVlrTotalSTR)+' , ');
                   Dm.IBSQL.SQL.Add('LITROS = '+TrocaVirgulaPorPonto(vVlrQtdeSTR));
                   Dm.IBSQL.SQL.Add(' Where Abastecida='+dm.SQLPistaABASTECIDA.AsString);
                   DM.IBSQL.ExecQuery;
                 end;
             end;
           dm.SQLPista.Next;
         end;
       dm.SQLPista.first;
     end;


  // se tiver algum marcado com S volta pra N para o terminal atual
  Dm.SQLPista.Close;
  Dm.SQLPista.SQL.Text := 'Update Leiturapista set Marcado = :xMarca, TERMICOD = :xTerm where Marcado = "S" And Termicod = :xTerminal';
  Dm.SQLPista.ParamByName('xMarca').AsString := 'N';
  Dm.SQLPista.ParamByName('xTerm').Clear;
  Dm.SQLPista.ParamByName('xTerminal').value := TerminalAtual;
  DM.SQLPista.ExecSQL;
  Dm.SQLPista.Close;


  TipoTela := 'N'; // N = Mostra Abastecidas Pendentes, T = Mostra Abastecidas Transferidas, A = Mostra Abast. Afericoes

  Dm.SQLPista.Close;
  Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
  Dm.SQLPista.prepare;
  Dm.SqlPista.Open;
  DM.SQLPista.First;
end;

procedure TFormTelaAutomaBombas.DBGridPistaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If DM.SQLPista.fieldbyname('MARCADO').Asstring = 'S' Then
    begin
       DBGridPista.Canvas.Font.Color:=clRed;
       DBGridPista.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TFormTelaAutomaBombas.DBGridPistaKeyPress(Sender: TObject;
  var Key: Char);
  var x: TShiftState;
begin
  if key = #32 then // barra de espaço
  begin
    Try
      if dm.SQLPista.fieldbyname('data').IsNull then
        exit;
      dm.SQLPista.DisableControls;
      if (DM.SQLPista.FieldByName('TERMICOD').AsInteger = TerminalAtual) or (DM.SQLPista.FieldByName('TERMICOD').IsNull) then
      begin
        Dm.SQLPista.Edit;
        if dm.SQLPista.FieldByName('marcado').AsString = 'S' then
        begin
          dm.SQLPista.FieldByName('marcado').AsString := 'N';
          DM.SQLPista.FieldByName('TERMICOD').Clear;
        End else
        Begin
          dm.SQLPista.FieldByName('marcado').AsString := 'S';
          DM.SQLPista.FieldByName('TERMICOD').AsInteger := TerminalAtual;
        End;
        dm.SQLPista.Post;
      end else
        ShowMessage('Registro Bloqueado Por Outro Usuario!');

    Except on e:exception do
    begin
      ShowMessage('Registro Bloqueado! '+#13+#10+#13+#10+e.message);
      Dm.SQLPista.Cancel;
    end;end;
    Dm.SQLPista.EnableControls;
  end
  else if key = #27 then // Tecla ESCAPE
  begin
    if not Dm.IBTran01.InTransaction then
      dm.IBTran01.StartTransaction;
    if not Dm.SqlPista.Active then
      Dm.SQLPista.Open;
    dm.SQLPista.DisableControls;
    dm.SQLPista.First;
    while not dm.SQLPista.Eof do
    begin
       if (Dm.SQLPista.FieldByName('Marcado').asstring = 'S') and (DM.SQLPista.FieldByName('TERMICOD').AsInteger = TerminalAtual ) then
      begin
        Dm.SQLPista.Edit;
        Dm.SQLPista.FieldByName('Marcado').asstring := 'N';
        DM.SQLPista.FieldByName('TERMICOD').Clear;
        dm.SQLPista.Post;
      end;
      dm.SQLPista.Next;
    end;
    DM.SQLPista.EnableControls;
    ModalResult := mrCancel;
  end
  else if key =#13 then //Tecla ENTER
  begin
    ModalResult := mrOk;
  end
  else if (key = 't') or (key = 'T') then // Oculta Abastecidas Selecionadas
  begin
    if TipoTela <> 'N' then
      begin
        ShowMessage('Voce nao esta na tela de Abastecidas Pendentes!');
        Application.ProcessMessages;
      end
    else
      begin
        if not Dm.IBTran01.InTransaction then
          dm.IBTran01.StartTransaction;
        if not Dm.SqlPista.Active then
          Dm.SQLPista.Open;
        dm.SQLPista.DisableControls;
        dm.SQLPista.First;
        while not dm.SQLPista.Eof do
        begin
          if Dm.SQLPista.FieldByName('Marcado').asstring = 'S' then
          begin
            Dm.SQLPista.Edit;
            Dm.SQLPista.FieldByName('Marcado').asstring := 'T';
            dm.SQLPista.Post;
          end;
          dm.SQLPista.Next;
        end;
        // Atualiza a Lista
        Dm.SQLPista.Close;
        Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
        Dm.SQLPista.prepare;
        Dm.SqlPista.Open;
        DM.SQLPista.First;
        DM.SQLPista.EnableControls;
      end;
  end
  else if (key = 'r') or (key = 'R') then // Retorna Abastecidas Selecionadas q estavam Transferidas
  begin
    if TipoTela <> 'T' then
      begin
        ShowMessage('Voce nao esta na tela de Abastecidas Transferidas!');
        Application.ProcessMessages;
      end
    else
      begin
        if not Dm.IBTran01.InTransaction then
          dm.IBTran01.StartTransaction;

        dm.SQLPista.DisableControls;
        Dm.SQLPista.Close;
        Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "S" ORDER BY ABASTECIDA DESC';
        Dm.SQLPista.prepare;
        Dm.SqlPista.Open;
        DM.SQLPista.First;
        while not dm.SQLPista.Eof do
        begin
          if Dm.SQLPista.FieldByName('Marcado').asstring = 'T' then
          begin
            Dm.SQLPista.Edit;
            Dm.SQLPista.FieldByName('Marcado').asstring := 'N';
            dm.SQLPista.Post;
          end;
          dm.SQLPista.Next;
        end;
        // Atualiza a Lista
        Dm.SQLPista.Close;
        Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
        Dm.SQLPista.prepare;
        Dm.SqlPista.Open;
        DM.SQLPista.First;
        TipoTela := 'N';
        LBTitulo.Caption := 'F5 - Abastecidas Pendentes';
        LBFuncao.Caption := '(T) - Transfere Abastecidas Selecionadas';
        LBTitulo.Update;
        LBFuncao.Update;

        DM.SQLPista.EnableControls;
      end;
  end
  else if (key = 'q') or  (key = 'Q') then
    begin
      if Pergunta('NAO','Confirma a Quitacao das Abastecidas Pendentes ?') then
        EmiteCupomDesconto;
    end;

end;

procedure TFormTelaAutomaBombas.Aferrio1Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    FormTelaItens.TimerPista.Enabled := false;
    if Pergunta('NAO','Confirma a Exclusão dos Registros Marcados ?') then
    begin
      dm.SQLPista.First;
      Dm.SQLPista.DisableControls;
      while not dm.sqlpista.Eof do
      begin
        if dm.SQLPistaMARCADO.AsString = 'S' then
        Begin
          dm.SQLPista.Edit;
          DM.SQLPista.FieldByName('Marcado').AsString := 'E';
          DM.SQLPista.Post;
        end else
          Dm.SQLPista.Next;
      end;
      dM.SQLPista.Close;
      dM.SQLPista.Open;
      Dm.SQLPista.EnableControls;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
       FormTelaItens.TimerPista.Enabled := True;
  end;
end;

procedure TFormTelaAutomaBombas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Dm.IBTran01.InTransaction then
    Dm.IBTran01.Commit;
end;

procedure TFormTelaAutomaBombas.Aferrio2Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    if dm.SQLPista.fieldbyname('data').IsNull then
      exit;
    FormTelaItens.TimerPista.Enabled := false;
    dm.SQLPista.DisableControls;
    IF dM.SQLPista.FieldByName('MARCADO').AsString <> 'A' Then
    begin
      if Pergunta('SIM','Confirma que este registro é de Aferição?') then
      begin
        Dm.SQLPista.Edit;
        dm.SQLPista.FieldByName('marcado').AsString := 'A';
        dm.SQLPista.Post;
      end;
    end else
    begin
      if Pergunta('NAO','Item Marcado como Aferição. Desmarcar?') then
      begin
        Dm.SQLPista.Edit;
        dm.SQLPista.FieldByName('marcado').AsString := 'N';
        dm.SQLPista.Post;
      end;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
      FormTelaItens.TimerPista.Enabled := True;
    Dm.SQLPista.EnableControls;
  end;
end;

procedure TFormTelaAutomaBombas.VerAbastecidasExcluidas1Click(
  Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    FormTelaItens.TimerPista.Enabled := False;
    if VerAbastecidasExcluidas1.Caption =  '&Ver Abastecidas Excluidas' then
    begin
      LBTitulo.Caption := 'Abastecidas Excluidas';
      LBTitulo.Update;
      VerAbastecidasExcluidas1.Caption := 'Ver Abastecidas Pendentes';
      Dm.SQLPista.Close;
      Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "E" ORDER BY ABASTECIDA DESC';
      Dm.SQLPista.prepare;
      Dm.SqlPista.Open;
    end else
    begin
      LBTitulo.Caption := 'Abastecidas Pendentes';
      LBTitulo.Update;
      VerAbastecidasExcluidas1.caption := 'Ver Abastecidas Excluidas';
      Dm.SQLPista.Close;
      Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "A" AND MARCADO <> "E" ORDER BY ABASTECIDA DESC';
      Dm.SQLPista.prepare;
      Dm.SqlPista.Open;
    end;
    IF UpperCase(Porta) <> 'FALSE' THEN
      FormTelaItens.TimerPista.Enabled := True;
  end;
end;

procedure TFormTelaAutomaBombas.VerAferies1Click(Sender: TObject);
var Retorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
  begin
    LBTitulo.Caption := 'Aferições';
    LBTitulo.Update;
    VerAbastecidasExcluidas1.Caption := 'Ver Abastecidas Pendentes';
    Dm.SQLPista.Close;
    Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "A" ORDER BY ABASTECIDA DESC';
    Dm.SQLPista.prepare;
    Dm.SqlPista.Open;
  end;
end;

procedure TFormTelaAutomaBombas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
     VK_F5:begin
             TipoTela := 'N';
             LBTitulo.Caption := 'F5 - Abastecidas Pendentes';
             LBFuncao.Caption := '(T) - Transfere Abastecidas Selecionadas';
             LBTitulo.Update;
             LBFuncao.Update;
             Dm.SQLPista.Close;
             Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "N" ORDER BY ABASTECIDA DESC';
             Dm.SQLPista.prepare;
             Dm.SqlPista.Open;
           end;
     VK_F6:begin
             TipoTela := 'T';
             LBTitulo.Caption := 'F6 - Abastecidas Transferidas';
             LBFuncao.Caption := '(R) - Retorna Abastecidas Selecionadas';
             LBTitulo.Update;
             LBFuncao.Update;
             Dm.SQLPista.Close;
             Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where MARCADO = "T" ORDER BY ABASTECIDA DESC';
             Dm.SQLPista.prepare;
             Dm.SqlPista.Open;
           end;
  end;
end;

Function  TFormTelaAutomaBombas.EmiteCupomDesconto:Boolean;
var Erro, TestaEOF: boolean;
begin
  TestaEOF := False;
  Erro     := False;
  try
    // vPercDesc  := StrToFloat(InputBox('Informe o Percentual de Desconto?', 'Prompt', FormatFloat('##0.00', vPercDesc)));
    vPercDesc := 0;
  except
    Application.ProcessMessages;
    Erro := True;
  end;

  if Erro then
    begin
      ShowMessage('O percentual de desconto informado esta incorreto! Verifique!');
      Exit;
    end;

  if not Dm.IBTran01.InTransaction then
    dm.IBTran01.StartTransaction;

  Dm.SQLPista.Close;
  Dm.SQLPIsta.SQL.Text := 'SELECT * FROM LEITURAPISTA  where (MARCADO = "N") or (MARCADO = "T") ORDER BY CANAL ASC';
  Dm.SQLPista.prepare;
  Dm.SqlPista.Open;
  Dm.SQLPista.DisableControls;
  if Dm.SQLPista.IsEmpty then
    begin
      ShowMessage('Nao existem Abastecidas a Quitar!');
      Abort;
      Exit;
    end;

  // Abrir Cupom Fiscal
  NroCupomFiscal := '000000' ;
  if not AbrirCupomFiscal(ECFAtual, PortaECFAtual, NroCupomFiscal) then
    begin
      InformaG('Problemas ao tentar abrir o cupom!') ;
      Abort;
      exit;
    end ;

  if (NroCupomFiscal = '000000') then
    begin
      InformaG('Não foi possível capturar o número do Cupom Fiscal') ;
      NroCupomFiscal := '000000' ;
      Abort;
      Exit;
    end;

  // Somar Total Venda por Produto e Imprimir no ECF
  dm.SQLPista.First;
  CanalAnterior := dm.SQLPistaCANAL.AsString;
  QtdTotal :=0; VlrUnit:=0; VlrTotalSemDesconto:=0; ItemECF:=0; VlrTotalAbastecidas:=0;
  while not dm.sqlpista.Eof do
    begin
      if CanalAnterior = dm.SQLPistaCANAL.AsString then
        begin
          // Vou somando enquanto for o mesmo canal=ao mesmo tipo de combustivel
          QtdTotal := QtdTotal + dm.SQLPistaLITROS.Value;
        end
      else
        begin
          // Se trocou o canal, imprime no ecf o item com a soma acima
          ItemECF := ItemECF + 1;
          Produto := dm.sqllocate('TANQUE','TANQICOD','PRODICOD',(dm.sqllocate('BOMBA','CONVERTER','TANQICOD', '"'+CanalAnterior+'"')));
          CodICMS := dm.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',Produto);
          Unidade := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD', Produto));
          Dm.SQLPista.Prior;
          VlrTotalSemDesconto := VlrTotalSemDesconto + (dm.SQLPistaVALORUNITARIO.Value * QtdTotal);
          if not ImprimeItemECF(ECFAtual,
                                PortaECFAtual,
                                IntToStr(ItemECF),
                                Produto,
                                Copy(DM.sqllocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ', Produto),1,20),
                                RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS),
                                '',
                                Unidade,
                                QtdTotal,
                                dm.SQLPistaVALORUNITARIO.Value,
                                vPercDesc,
                                0,
                                3) then
            begin
              CancelarCupomFiscal(ECFAtual,PortaECFAtual);
              InformaG('Problemas ao imprimir o item no ECF!');
              Abort;
              Exit;
            end;

          QtdTotal :=0; VlrUnit:=0;
          Dm.SQLPista.Next;
          CanalAnterior := dm.SQLPistaCANAL.AsString;
        end;
      Dm.SQLPista.Next;
    end;
  // Mandar o Ultimo Item para a Impressora -----------------
  ItemECF := ItemECF + 1;
  Produto := dm.sqllocate('TANQUE','TANQICOD','PRODICOD',(dm.sqllocate('BOMBA','CONVERTER','TANQICOD', '"'+CanalAnterior+'"')));
  CodICMS := dm.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',Produto);
  Unidade := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD', Produto));
  Dm.SQLPista.Prior;
  VlrTotalSemDesconto := VlrTotalSemDesconto + (dm.SQLPistaVALORUNITARIO.Value * QtdTotal);
  if not ImprimeItemECF(ECFAtual,
                        PortaECFAtual,
                        IntToStr(ItemECF),
                        Produto,
                        Copy(DM.sqllocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ', Produto),1,20),
                        RetornaTotalizadorIcmsECF(Ecf_ID, CodICMS),
                        '',
                        Unidade,
                        QtdTotal,
                        dm.SQLPistaVALORUNITARIO.Value,
                        vPercDesc,
                        0,
                        3) then
    begin
      CancelarCupomFiscal(ECFAtual,PortaECFAtual);
      InformaG('Problemas ao imprimir o item no ECF!');
      Abort;
      Exit;
    end;
  Dm.SQLPista.Next;
  //----------------------------------------------------------

  // Buscar SubTotal direto da Impressora
  if (ECFAtual = 'BEMATECH MP-25 FI') then
    begin
      try
        dm.SubTotal_ECF := '00000000000000';
        Bematech_FI_SubTotal(dm.SubTotal_ECF);
        dm.SubTotal_ECF  := FormatFloat('##0.00',(StrToInt(dm.SubTotal_ECF)/100));
      except
        Application.ProcessMessages;
      end;
    end;

  if (ECFAtual = 'DARUMA FS345') then
    begin
      try
        dm.SubTotal_ECF := '00000000000000';
        Daruma_FI_SubTotal(dm.SubTotal_ECF);
        dm.SubTotal_ECF  := FormatFloat('##0.00',(StrToInt(dm.SubTotal_ECF)/100));
      except
        Application.ProcessMessages;
      end;
    end;

  if (ECFAtual = 'EPSON TERMICA') then
    begin
      try
        dm.SubTotal_ECF := '                    ';
        AbrirPortaECF_Epson_Termica;
        EPSON_Fiscal_Obter_SubTotal(PChar(dm.SubTotal_ECF));
        dm.SubTotal_ECF  := FormatFloat('##0.00',(StrToInt(dm.SubTotal_ECF)/100));
      except
        Application.ProcessMessages;
      end;
    end;
  //-------------------------------------------------------------------------
  VlrTotalAbastecidas := StrToFloat(dm.SubTotal_ECF);

  // Gravar Cabecalho Cupom
  GravaCupom;
  // Grava Item atual no banco oficial
  GravaCupomItem;

  // Tem q Abrir a tabela a Vista e Prazo pra nao dar erro na funcao FechaCupom
  // Tem q alimentar a tab a Vista com o registro em Dinheiro do total
  SQLParcelasVistaVendaTemp.Close;
  SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
  SQLParcelasVistaVendaTemp.Open;
  if not SQLParcelasVistaVendaTemp.IsEmpty then
    begin
      while not SQLParcelasVistaVendaTemp.eof do
        SQLParcelasVistaVendaTemp.Delete;
    end;
  SQLParcelasVistaVendaTemp.Close;
  SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
  SQLParcelasVistaVendaTemp.Open;
  SQLParcelasVistaVendaTemp.Append;
  SQLParcelasVistaVendaTempNROITEM.Value     := 1;
  SQLParcelasVistaVendaTempNUMEICOD.Value    := 1;
  SQLParcelasVistaVendaTempTERMICOD.Value    := TerminalAtual;
  SQLParcelasVistaVendaTempTIPOPADR.Value    := 'DIN';
  SQLParcelasVistaVendaTempVALORPARC.Value   := VlrTotalAbastecidas;
  SQLParcelasVistaVendaTemp.Post;

  SQLParcelasVistaVendaTemp.Close;
  SQLParcelasVistaVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
  SQLParcelasVistaVendaTemp.Open;

  SQLParcelasPrazoVendaTemp.Close;
  SQLParcelasPrazoVendaTemp.MacroByName('MFiltro').Value := 'TERMICOD = '+IntToStr(TerminalAtual);
  SQLParcelasPrazoVendaTemp.Open;
  FechouCupomFiscal := False;
  repeat
    if not FecharCupomFiscal(ECFAtual,
                             PortaECFAtual,
                             Ecf_CNFV,
                             VlrTotalAbastecidas,  // VALOR
                             0, // ACRESCIMO
                             0, // DESCONTO
                             0, // TROCO
                             SQLParcelasVistaVendaTemp,
                             SQLParcelasPrazoVendaTemp,
                             'Consumidor Final',
                             '',
                             '',
                             '',
                             '',
                             '',
                             '',
                             '') then
      begin
        if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
          FechouCupomFiscal := False
        else
          Break;
      end
    else
      FechouCupomFiscal := True;
  until
    FechouCupomFiscal;

  if not FechouCupomFiscal then
    begin
      CancelarCupomFiscal(ECFAtual,PortaECFAtual);
      InformaG('Problemas ao Fechar o Cupom Fiscal!');
      Abort;
      Exit;
    end;

  // Gravar venda no banco, movimento de caixa e numerario a vista
  if FechouCupomFiscal then
    begin
      // Gravar o Numerario
      GravaCupomNumerario;
      // Gravar o Mvto Caixa
      GravaMovCaixa;
    end;

  // Apaga Abastecidas Quitadas
  Dm.SQLPista.First;
  while not Dm.SQLPista.eof do
    Dm.SQLPista.delete;

  Dm.SQLPista.EnableControls;

  Close;
end;

Function TFormTelaAutomaBombas.GravaCupom:Boolean;
begin
  // Grava Cupom Cabecalho
  DM.SQLCupom.Close;
  DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual)+' And EMPRICOD = ' + EmpresaPadrao;
  DM.SQLCupom.Open;

  DM.SQLCupom.Append;

  DM.SQLConfigVenda.Close;
  DM.SQLConfigVenda.Open;

  if DM.SQLConfigVendaOPESICODCUPOM.AsVariant <> Null then
    begin
      DM.SQLCupomOPESICOD.Value        := DM.SQLConfigVendaOPESICODCUPOM.Value;
      if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVendaOPESICODCUPOM.AsString],1) then
        begin
          if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
            DM.SQLCupomPLCTA15CODDEB.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
          if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
            DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
          if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
            DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
        end;
    end;

  DM.SQLCupomEMPRICOD.AsString          := EmpresaPadrao;
  DM.SQLCupomTERMICOD.Value             := TerminalAtual;
  DM.SQLCupomCUPODEMIS.Value            := Date;
  DM.SQLCupomUSUAICODVENDA.Value        := UsuarioCorrente;
  DM.SQLCupomCUPOCSTATUS.Value          := 'A';
  DM.SQLCupomCUPON2TOTITENS.Value       := VlrTotalSemDesconto;
  DM.SQLCupomCUPON2TOTITENSRET.Value    := 0;
  DM.SQLCupomCUPON2ACRESC.Value         := 0;
  DM.SQLCupomCUPON2DESC.Value           := 0;
  DM.SQLCupomCUPON2DESCITENS.Value      := 0;
  DM.SQLCupomCUPOINRO.AsString          := NroCupomFiscal ;
  DM.SQLCupomCUPOCTIPOPADRAO.Value      := 'VISTA';
  DM.SQLCupomCUPODQUITACAO.AsDateTime   := Date;
  DM.SQLCupomCUPON2CONVTAXA.Value       := 0 ;
  DM.SQLCupomCUPOINROORDCOMPRA.Value    := 0 ;
  DM.SQLCupomCUPON2VLRCOMISSAO.Value    := 0 ;
  DM.SQLCupomCUPON2JUROATRAS.Value      := 0 ;
  DM.SQLCupomCUPON2MULTAATRAS.Value     := 0 ;
  DM.SQLCupomCUPON3CREDTAXA.Value       := 0 ;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomVENDICOD.Value             := dm.SQLTerminalAtivoVENDICOD.Value;
  DM.SQLCupomCLIEA13ID.Value            := dm.SQLTerminalAtivoCLIEA13ID.Value;
  DM.SQLCupomPLRCICOD.Value             := dm.SQLTerminalAtivoPLRCICOD.Value;
  DM.SQLCupomCLIENTENOME.Value          := 'Consumidor Final' ;
  DM.SQLCupomPENDENTE.Value             := 'S' ;
  DM.SQLCupomREGISTRO.Value             := Now ;
  try
    DM.SQLCupom.Post;
    FechouCupomFiscal := True;
    GravaCupom        := True;
    Application.ProcessMessages;
  except
    DM.SQLCupom.Cancel;
    FechouCupomFiscal := False;
    GravaCupom        := False;
    Application.ProcessMessages;
  end;
end;

Function TFormTelaAutomaBombas.GravaCupomItem:Boolean;
begin
  dm.SQLPista.First;
  CanalAnterior := dm.SQLPistaCANAL.AsString;
  QtdTotal :=0; VlrUnit:=0; ItemECF:=0;
  while not dm.sqlpista.Eof do
    begin
      if CanalAnterior = dm.SQLPistaCANAL.AsString then
        begin
          // Vou somando enquanto for o mesmo canal=ao mesmo tipo de combustivel
          QtdTotal := QtdTotal + dm.SQLPistaLITROS.Value;
          VlrUnit  := dm.SQLPistaVALORUNITARIO.Value;
        end
      else
        begin
          // Se trocou o canal, imprime no ecf o item com a soma acima
          ItemECF := ItemECF+1;
          Produto := dm.sqllocate('TANQUE','TANQICOD','PRODICOD',(dm.sqllocate('BOMBA','CONVERTER','TANQICOD', '"'+CanalAnterior+'"')));
          CodICMS := dm.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',Produto);
          Unidade := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD', Produto));
          Dm.SQLPista.Prior;
          UltEncerrante := dm.SQLPistaENCERRANTE.AsString;
            // Grava Itens---------------------------------------
            DM.SQLCupomItem.Close;
            DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
            DM.SQLCupomItem.Open;
            DM.SQLCupomItem.Append;
            DM.SQLCupomItemEMPRICOD.Value                := EmpresaCorrente;
            DM.SQLCupomItemCUPOA13ID.Value               := dm.CodNextCupom;
            DM.SQLCupomItemCPITIPOS.Value                := ItemECF;
            DM.SQLCupomItemPRODICOD.AsString             := produto;
            DM.SQLCupomItemBOMBICOD.AsString             := DM.SQLLocate('BOMBA','CONVERTER','BOMBICOD', '"'+CanalAnterior+'"');
            DM.SQLCupomItemCPITCSTATUS.AsString          := 'A';
            DM.SQLCupomItemCPITN3QTD.Value               := QtdTotal;
            DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
            DM.SQLCupomItemCPITN3VLRUNIT.Value           := VlrUnit;
            DM.SQLCupomItemCPITN3VLRCUSTUNIT.Asstring    := dm.SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCUSTO',Produto);
//            DM.SQLCupomItemCPITN2DESC.Value              := ((VlrUnit*QtdTotal) * vPercDesc) /100;
            DM.SQLCupomItemCPITN2DESC.Value              := 0; // Foi retirado o desconto para gravar o valor real da venda
//            DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := ((VlrUnit*QtdTotal) * vPercDesc) /100;
            DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
            DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := VlrUnit - DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value;
            DM.SQLCupomItemVENDICOD.Value                := dm.SQLTerminalAtivoVENDICOD.Value;
            DM.SQLCupomItemENCERRANTE.AsString           := UltEncerrante;
            DM.SQLCupomItemVENDICOD.AsString             := DM.SQLCupomVENDICOD.AsString;
            DM.SQLCupomItemCOITN2ICMSALIQ.Value          := 0;
            DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
            DM.SQLCupomItemPENDENTE.Value                := 'S';
            DM.SQLCupomItemREGISTRO.Value                := now;
            DM.SQLCupomItem.Post;
            Application.ProcessMessages;
            //----------------------------------------------------
            // Movto Estoque se tiver marcado a Opcao no cad.terminal
            if (DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value = 'S') then
                GravaMovimentoEstoque(DM.SQLProduto,
                                      DM.SQLProdutoFilho,
                                      DM.SQLProdutoSaldo,
                                      dm.SQLCupomItemEMPRICOD.AsInteger,//Empresa
                                      dm.SQLCupomItemPRODICOD.AsInteger,//Produto
                                      DM.SQLConfigVendaOPESICODCUPOM.Value,//Operacao
                                      dm.SQLCupomItemCPITN3QTD.Value,//Quantidade
                                      'S',//ENTRADA/SAIDA
                                      FormatDateTime('mm/dd/yyyy', Now),
                                      DM.SQLCupomItemCPITN3VLRUNIT.AsString, //vlr venda bruto
                                      'CUPOM',//tabela
                                      DM.CodNextCupom,//id
                                      '');
            //-----------------------------------------------------

          QtdTotal :=0; VlrUnit:=0;
          Dm.SQLPista.Next;
          CanalAnterior := dm.SQLPistaCANAL.AsString;
        end;
      Dm.SQLPista.Next;
    end;
  // Gravar ultimo produto que nao entrou no while
  // Se trocou o canal, imprime no ecf o item com a soma acima
  ItemECF := ItemECF+1;
  Produto := dm.sqllocate('TANQUE','TANQICOD','PRODICOD',(dm.sqllocate('BOMBA','CONVERTER','TANQICOD', '"'+CanalAnterior+'"')));
  CodICMS := dm.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',Produto);
  Unidade := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD', Produto));
  Dm.SQLPista.Prior;
  UltEncerrante := dm.SQLPistaENCERRANTE.AsString;
    // Grava Itens---------------------------------------
    DM.SQLCupomItem.Close;
    DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
    DM.SQLCupomItem.Open;
    DM.SQLCupomItem.Append;
    DM.SQLCupomItemEMPRICOD.Value                := EmpresaCorrente;
    DM.SQLCupomItemCUPOA13ID.Value               := dm.CodNextCupom;
    DM.SQLCupomItemCPITIPOS.Value                := ItemECF;
    DM.SQLCupomItemPRODICOD.AsString             := produto;
    DM.SQLCupomItemBOMBICOD.AsString             := DM.SQLLocate('BOMBA','CONVERTER','BOMBICOD', '"'+CanalAnterior+'"');
    DM.SQLCupomItemCPITCSTATUS.AsString          := 'A';
    DM.SQLCupomItemCPITN3QTD.Value               := QtdTotal;
    DM.SQLCupomItemCPITN3QTDTROCA.Value          := 0;
    DM.SQLCupomItemCPITN3VLRUNIT.Value           := VlrUnit;
    DM.SQLCupomItemCPITN3VLRCUSTUNIT.Asstring    := dm.SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCUSTO',Produto);
    DM.SQLCupomItemCPITN2DESC.Value              := 0;
    DM.SQLCupomItemCPITN2VLRDESCSOBTOT.Value     := 0;
    DM.SQLCupomItemCPITN3VLRUNITLUCR.Value       := VlrUnit - DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value;
    DM.SQLCupomItemVENDICOD.Value                := dm.SQLTerminalAtivoVENDICOD.Value;
    DM.SQLCupomItemENCERRANTE.AsString           := UltEncerrante;
    DM.SQLCupomItemVENDICOD.AsString             := DM.SQLCupomVENDICOD.AsString;
    DM.SQLCupomItemCOITN2ICMSALIQ.Value          := 0;
    DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.Value := 0;
    DM.SQLCupomItemPENDENTE.Value                := 'S';
    DM.SQLCupomItemREGISTRO.Value                := now;
    DM.SQLCupomItem.Post;
    Application.ProcessMessages;
    //----------------------------------------------------
    // Movto Estoque se tiver marcado a Opcao no cad.terminal
    if (DM.SQLTerminalAtivoTERMCMOVESTOQUE.Value = 'S')  then
        GravaMovimentoEstoque(DM.SQLProduto,
                              DM.SQLProdutoFilho,
                              DM.SQLProdutoSaldo,
                              dm.SQLCupomItemEMPRICOD.AsInteger,//Empresa
                              dm.SQLCupomItemPRODICOD.AsInteger,//Produto
                              DM.SQLConfigVendaOPESICODCUPOM.Value,//Operacao
                              dm.SQLCupomItemCPITN3QTD.Value,//Quantidade
                              'S',//ENTRADA/SAIDA
                              FormatDateTime('mm/dd/yyyy', Now),
                              DM.SQLCupomItemCPITN3VLRUNIT.AsString, //vlr venda bruto
                              'CUPOM',//tabela
                              DM.CodNextCupom,//id
                              '');
    //-----------------------------------------------------
  QtdTotal :=0; VlrUnit:=0;
  Dm.SQLPista.Next;
  //-----------------------------------------
end;

Function TFormTelaAutomaBombas.GravaCupomNumerario:Boolean;
begin
 // Grava Numerario
  DM.SQLCupomNumerario.Close ;
  DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
  DM.SQLCupomNumerario.Open ;
  DM.SQLCupomNumerario.Append ;
  DM.SQLCupomNumerarioCUPOA13ID.Value   := DM.CodNextCupom ;
  DM.SQLCupomNumerarioNUMEICOD.Value    := SQLParcelasVistaVendaTempNUMEICOD.Value ;
  DM.SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
  DM.SQLCupomNumerarioCPNMN2VLR.Value   := VlrTotalSemDesconto;
  DM.SQLCupomNumerarioPENDENTE.Value    := 'S' ;
  DM.SQLCupomNumerarioREGISTRO.Value    := Now ;
  DM.SQLCupomNumerarioCLIEA13ID.Value   := dm.SQLTerminalAtivoCLIEA13ID.Value ;
  if DM.SQLConfigVendaCFVECPARC0ENTRBAIX.Value = 'S' then
    DM.SQLCupomNumerarioCPNMCAUTENT.Value := 'S' ;

  // PLANO DE CONTAS
  if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
    begin
      if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
        DM.SQLCupomNumerarioPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
    end;
  try
    DM.SQLCupomNumerario.Post ;
    GravaCupomNumerario := True;
  except
    DM.SQLCupomNumerario.Cancel;
    GravaCupomNumerario := False;
  end ;
end;

Function TFormTelaAutomaBombas.GravaMovCaixa:Boolean;
begin
  // Grava Mov.Caixa Operacao Caixa
  //TESTAR SE MOVIMENTO DO CAIXA PADRAO PARA TIPO VENDA EXISTE
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "VDVIS"') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.IsEmpty then
    begin
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           'Null',//WNUMEICOD
                           DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           DM.CodNextCupom,//WMVCIXA15DOCORIG
                           VlrTotalSemDesconto,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'Quitacao Automatica',//WMVCXA255HIST
                           'N',
                           '');
      // Grava Mov.Caixa Numerario
      GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                           DM.SQLTotalizar,
                           EmpresaPadrao,//WEMPRICOD
                           IntToStr(TerminalAtual),//WTERMICOD
                           FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                           SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                           'Null',//WOPCXICOD
                           IntToStr(DM.UsuarioAtual),//WUSUAICOD
                           DM.CodNextCupom,//WMVCIXA15DOCORIG
                           VlrTotalSemDesconto,//WMOVICAIXN2VLR
                           0,//WMOVICAIXN2VLRJURO
                           0,//WMOVICAIXN2VLRMULTA
                           0,//WMOVICAIXN2VLRDEC
                           'Null',//WMOVICAIXA6NUMCUPOM
                           'C',//WTIPO
                           'AVista:DINHEIRO/Quitacao Automatica',//WMVCXA255HIST
                           'N',
                           '');
    end;
end;

end.
