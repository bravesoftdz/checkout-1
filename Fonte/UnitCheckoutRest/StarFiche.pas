unit StarFiche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Printers;

  function GeraArquivoVendaStarFiche (Operacao, CMC7, CPFCNPJ, TipoTrans, TipoParc, Cartao, NroCupom: String; Parcelas, Confirmacao, Trailler: Integer; Valor : Double): Boolean;
  function AutorizaCartaoStarFiche: String;
  procedure ImprimeAutorizacaoStarFiche(Valor : Double ; Cartao : String ; NroVias:Integer);
  procedure ImprimeTicket(ValorImp : Double;TotNumECFImp : String ; NroVias : Integer);
  procedure CancelarVendaCartao;
  procedure FuncoesStarFiche;
var
  Tempo : Integer;
  Autorizou : Boolean;

implementation

uses TelaFechamentoVenda, UnitLibrary, ECFCheckout, TelaItens,
  UnitCheckoutLibrary, DataModulo;

function AutorizaCartaoStarFiche : String;
var
  Arquivo,ArqRetorno : TextFile;
  I,X,Linhas : Integer;
  Retorno : Boolean;
  Str : String;
begin
  i := 1;
  Retorno := False;
  if FileExists('C:\StarTef\STF002.Int') then
  begin
    Retorno := True;
  end
  else
    begin
      AutorizaCartaoStarFiche := 'SEMRETORNO';
    end;
  if Retorno then
    begin
      FormTelaFechamentoVenda.MemoCartao.Lines.LoadFromFile('C:\StarTef\STF002.Int');
      FormTelaFechamentoVenda.MemoCartao.Lines.BeginUpdate;
      for Linhas := 0 to FormTelaFechamentoVenda.MemoCartao.Lines.Count - 1 do
        begin
          if  FormTelaFechamentoVenda.MemoCartao.Lines.Strings[Linhas] = '0013 - 00' then
            begin
              FormTelaFechamentoVenda.DataTransacaoCartao := '';
              FormTelaFechamentoVenda.HoraTransacaoCartao := '';
              FormTelaFechamentoVenda.NSUProvedorCartao := '';
              FormTelaFechamentoVenda.NSUInstituicaoCartao := '';
              for x := 0 to FormTelaFechamentoVenda.MemoCartao.Lines.Count -1 do
                begin
                  if Copy(FormTelaFechamentoVenda.MemoCartao.Lines[x],1,4) = '0005' then
                     FormTelaFechamentoVenda.DataTransacaoCartao := Copy(
                       FormTelaFechamentoVenda.MemoCartao.Lines[x],8,8);
                  if Copy(FormTelaFechamentoVenda.MemoCartao.Lines[x],1,4) = '0010' then
                     FormTelaFechamentoVenda.NSUProvedorCartao := Copy(
                       FormTelaFechamentoVenda.MemoCartao.Lines[x],8,6);
                  if Copy(FormTelaFechamentoVenda.MemoCartao.Lines[x],1,4) = '0011' then
                     FormTelaFechamentoVenda.NSUInstituicaoCartao := trim (Copy(
                       FormTelaFechamentoVenda.MemoCartao.Lines[x],8,14));
                  if Copy(FormTelaFechamentoVenda.MemoCartao.Lines[x],1,4) = '0014' then
                     FormTelaFechamentoVenda.HoraTransacaoCartao := Copy(
                       FormTelaFechamentoVenda.MemoCartao.Lines[x],8,6);
                 end;
              AutorizaCartaoStarFiche := 'RETORNOAUTORIZADO';
              FormTelaFechamentoVenda.AutorizouCartao := True;
              DeleteFile('C:\StarTef\STF002.Int');
              Exit;
            end
          else
            if  FormTelaFechamentoVenda.MemoCartao.Lines.Strings[Linhas] = '0013 - 99' then
              begin
                AutorizaCartaoStarFiche := 'RETORNORECUSADO';
                DeleteFile('C:\StarTef\STF002.Int');
                FormTelaFechamentoVenda.AutorizouCartao := False;
                Exit;
              end;
        end;
        DeleteFile('C:\StarTef\STF002.Int');
      end;
end;

procedure ImprimeAutorizacaoStarFiche(Valor : Double ; Cartao : String ; NroVias:Integer);
var
  LinhasImp,NroErros,ContMsg,I  : Integer;
  TextoLinha,TotNumECF : String;
  Erro : Boolean;
  MResult: TModalResult;
begin
  ContMsg := 0;
  if FileExists('C:\StarTef\Ticket.Prt') then
    begin
      NroErros := 0;
      Erro := True;
      //Criar arquivo Interno(StatusUltImpressao.cfg)  p depois gravar no cupom(rotina gravarcupom telafechamentovenda)
      FormTelaFechamentoVenda.MemoRetorno.Lines.Clear;
      FormTelaFechamentoVenda.MemoRetorno.Lines.Add(FormTelaFechamentoVenda.DataTransacaoCartao);
      FormTelaFechamentoVenda.MemoRetorno.Lines.Add(FormTelaFechamentoVenda.HoraTransacaoCartao);
      FormTelaFechamentoVenda.MemoRetorno.Lines.Add(FormTelaFechamentoVenda.NSUProvedorCartao);
      FormTelaFechamentoVenda.MemoRetorno.Lines.Add(FormTelaFechamentoVenda.NSUInstituicaoCartao);
      FormTelaFechamentoVenda.MemoRetorno.Lines.SaveToFile('C:\StarTef\StatusUltImpressao.cfg');
      while Erro do
        begin
          if (ECFAtual <> '') and (PortaECFAtual <> '') then
            begin
              TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, dm.NumerarioCartao);
              ImprimeTicket(Valor,TotNumEcf,NroVias);
            end
          else
            ImprimeTextoDiverso(DM.SQLTerminalAtivoTERMA60IMPTCKAFCX.AsString,'C:\StarTef\Ticket.Prt');
          MResult :=  Application.MessageBox('O cupom de autorização foi impresso corretamente?','Pergunta',MB_YESNOCANCEL + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION);
          case MResult of
            mrCancel : begin
                         if FileExists('C:\StarTef\Ticket.Prt') then
                           DeleteFile('C:\StarTef\Ticket.Prt');
                         FuncoesStarFiche;
                         Erro := False;
                       end;
            mrYes : begin
                      FormTelaFechamentoVenda.MemoRetorno.Lines.Clear;
                      FormTelaFechamentoVenda.MemoRetorno.Lines.Add('0000 - CONF');
                      FormTelaFechamentoVenda.MemoRetorno.Lines.Add('0009 - 1');
                      FormTelaFechamentoVenda.MemoRetorno.Lines.Add('9999 - 0');
                      FormTelaFechamentoVenda.MemoRetorno.Lines.SaveToFile('C:\StarTef\STF001.INT');
                      if FileExists('C:\StarTef\StatusUltImpressao.cfg') then
                        DeleteFile('C:\StarTef\StatusUltImpressao.cfg');
                      if FileExists('C:\StarTef\Ticket.Prt') then
                        DeleteFile('C:\StarTef\Ticket.Prt');
                      Erro := False;
                      Application.Restore;
                    end;
            mrNo : begin
                     Application.MessageBox('O ticket não foi impresso corretamente?'+#13+ #13+
                                'Possíveis problemas.............:'+#13+#13+
                                '- A ECF não está conectada adequadamente ao computador, ou está desligada !' + #13 +#13+
                                '- Falta de papel na ECF !' + #13 + #13+
                                '- O totalizador fiscal do numerário não foi configurado corretamente !' + #13 + #13
                                ,'Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_OK + MB_ICONINFORMATION);
                     Inc(ContMsg);
                     if ContMsg < 4 then
                       Erro := True
                     else
                       NroErros := 5;
                     if NroErros >= 5  then
                       begin
                         if MResult = mrNO then
                           Application.MessageBox('O sistema não está conseguindo imprimir o ticket de autorização, por favor verifique o status da impressora...!!','Problemas de impressão',MB_SYSTEMMODAL + MB_OK + MB_ICONERROR);
                         //cancelar venda
                         FuncoesStarFiche;
                         Erro := False;
                       end;
                   end;
          end;
        end;
        //apagar o arquivo interno
        if FileExists('C:\StarTef\StatusUltImpressao.cfg') then
          DeleteFile('C:\StarTef\StatusUltImpressao.cfg');
    end;
end;

procedure ImprimeTicket(ValorImp : Double; TotNumECFImp : String; NroVias : Integer);
Var
  DescricaoNumerario : String;
  I,Vias : Integer;
begin
  DescricaoNumerario := SQLLocate('NUMERARIO','NUMEICOD','NUMEA30DESCR',dm.NumerarioCartao);
  Sleep(1000);
  AbrirCNFV(ECFAtual,
            PortaECFAtual,
            TotNumECFImp[1],
            Ecf_Cnfv[1],
            Ecf_ID,
            NroCupomFiscal,
            DescricaoNumerario,
            ValorImp) ;
  FormTelaFechamentoVenda.MemoImpressao.Lines.Clear;
  FormTelaFechamentoVenda.MemoImpressao.Lines.LoadFromFile('C:\StarTef\Ticket.Prt');
  FormTelaFechamentoVenda.MemoImpressao.Lines.BeginUpdate;
  Sleep(1000);
  if ECFAtual = 'SIGTRON FS345' then
    begin
      For Vias := 1 to NroVias do
        begin
          FormTelaFechamentoVenda.MemoImpressao.Lines.BeginUpdate;
          For I := 0 to FormTelaFechamentoVenda.MemoImpressao.Lines.Count do
            begin
              LinhaTextoLivre(ECFAtual,PortaECFAtual,FormTelaFechamentoVenda.MemoImpressao.Lines.Strings[I] + Char(#13));
            end;
        end;
    end
  else
    LinhaTextoLivre(ECFAtual,PortaECFAtual,FormTelaFechamentoVenda.MemoImpressao.Lines.Text);
  Sleep(3000);
  FecharCNFV(ECFAtual,PortaECFAtual);
end;

procedure CancelarVendaCartao;
begin
  InformaG('A última impressão da transação StarFiche não foi completada, você deve cancelar a última venda.');
  FuncoesStarFiche;
end;

function GeraArquivoVendaStarFiche(Operacao, CMC7, CPFCNPJ, TipoTrans, TipoParc, Cartao, NroCupom: String; Parcelas, Confirmacao, Trailler: Integer; Valor : Double): Boolean;
begin
  try
    if Operacao = 'VEND' then
      begin
        FormTelaFechamentoVenda.MemoRetorno.Lines.Clear;
        FormTelaFechamentoVenda.MemoRetorno.Lines.Add('0000 - ' + Operacao);
        FormTelaFechamentoVenda.MemoRetorno.Lines.Add('0001 - ' +   Format('%12.2f',[Valor]));
        FormTelaFechamentoVenda.MemoRetorno.Lines.Add('0002 - ' + FormatFloat('000000',StrToFloat(NroCupom)));
        FormTelaFechamentoVenda.MemoRetorno.Lines.Add('9999 - ' + IntToStr(Trailler));
        FormTelaFechamentoVenda.MemoRetorno.Lines.SaveToFile('C:\StarTef\STF001.INT');
      end;
    Result := True;
    Application.Minimize;
  except
    Result := False;
  end;
end;

// 12/09/2002 17:19 - Tiago Hiller //
procedure FuncoesStarFiche;
var
  HoraInicial : TTime;
  Linhas, Tempo, TempoLimite, TempoIntervalo,I : Integer;
  Hora, Minuto, Segundo, MSegundo : Word;
  MResult : TModalResult;
begin
  TempoLimite := DM.SQLTerminalAtivoTERMITMPLIMITESERV.AsInteger;
  TempoIntervalo := DM.SQLTerminalAtivoTERMIINTERVALOSERV.AsInteger;
  if TempoLimite < TempoIntervalo then
    begin
      InformaG('Nas configurações do terminal o tempo de retorno do software está menor que o tempo da transação, Operação Cancelada.');
      Exit;
    end;
  Tempo := 0;
  if FileExists('C:\StarTef\STF002.INT') then
    DeleteFile('C:\StarTef\STF002.INT');
  if FileExists('C:\StarTef\Ticket.Prt') then
    DeleteFile('C:\StarTef\Ticket.Prt');
  FormTelaItens.MemoRetorno.Lines.Clear;
  FormTelaItens.MemoRetorno.Lines.Add('0000 - ADM');
  FormTelaItens.MemoRetorno.Lines.Add('9999 - 0');
  FormTelaItens.MemoRetorno.Lines.SaveToFile('C:\StarTef\STF001.INT');
  Application.Minimize;
  while Tempo < TempoLimite do
    begin
      HoraInicial := Now;
      DecodeTime((Now - HoraInicial),Hora,Minuto,Segundo,MSegundo);
      while (((Minuto * 60) + Segundo) < TempoIntervalo) do
        begin
          if not FileExists('C:\StarTef\STF002.int') then
            Application.ProcessMessages
          else
            begin
              Sleep(3000);
              FormTelaItens.MemoRetorno.Lines.Clear;
              FormTelaItens.MemoRetorno.Lines.LoadFromFile('C:\StarTef\STF002.int');
              FormTelaItens.MemoRetorno.Lines.BeginUpdate;
              for Linhas := 0 to FormTelaItens.MemoRetorno.Lines.Count - 1 do
                begin
                  if FormTelaItens.MemoRetorno.Lines.Strings[Linhas] = '0013 - 00' then
                    if FileExists('C:\StarTef\Ticket.Prt') then
                      begin
                        if (ECFAtual <> '') and (PortaECFAtual <> '') then
                          begin
                            FormTelaItens.MemoRetorno.Lines.Clear;
                            FormTelaItens.MemoRetorno.Lines.LoadFromFile('C:\StarTef\Ticket.Prt');
                            repeat
                              RelatorioGerencial(ECFAtual,PortaECFAtual,FormTelaItens.MemoRetorno.Lines.Text);
                              Sleep(4000);
                              if ECFAtual = 'SIGTRON FS345' then
                                begin
                                  FormTelaItens.MemoRetorno.Lines.BeginUpdate;
                                  For I := 0 to FormTelaItens.MemoRetorno.Lines.Count do
                                    begin
                                      LinhaTextoLivre(ECFAtual,PortaECFAtual,FormTelaItens.MemoRetorno.Lines.Strings[I] + Char(#13));
                                    end;
                                end;
                              FechamentoRelatorioGerencial(ECFAtual,PortaECFAtual);
                            until Application.MessageBox('Deseja imprimir novamente o último documento?','Advanced Control', MB_YESNO + MB_SETFOREGROUND + MB_ICONQUESTION + MB_SYSTEMMODAL) = IDNO;
                          end
                        else
                          ImprimeTextoDiverso(DM.SQLTerminalAtivoTERMA60IMPTCKAFCX.AsString,'C:\StarTef\Ticket.Prt');
                        FormTelaItens.MemoRetorno.Lines.Clear;
                        FormTelaItens.MemoRetorno.Lines.Add('0000 - CONF');
                        FormTelaItens.MemoRetorno.Lines.Add('0009 - 1');
                        FormTelaItens.MemoRetorno.Lines.Add('9999 - 0');
                        FormTelaItens.MemoRetorno.Lines.SaveToFile('C:\StarTef\STF001.INT');
                        if FileExists('C:\StarTef\StatusUltImpressao.cfg') then
                          DeleteFile('C:\StarTef\StatusUltImpressao.cfg');
                      end;
                end;
              Application.Restore;
              if FileExists('C:\StarTef\STF002.int') then
                DeleteFile('C:\StarTef\STF002.int');
              Tempo := TempoLimite;
              Exit;
            end;
          DecodeTime((Now - HoraInicial),Hora,Minuto,Segundo,MSegundo);
        end;
      if Application.MessageBox('Nenhum Retorno foi encontrado!'+#13+ #13+
                                'Possíveis problemas.............:'+#13+#13+
                                '- O software do Provedor de Cartão de Crédito não foi instalado !' + #13 +#13+
                                '- O software do Provedor de Cartão de Crédito não está ativo !' + #13 + #13+
                                '- O diretório de troca de arquivos não existe !' + #13 + #13+
                                '- O software do Provedor de Cartão de Crédito está aguardando um comando do usuário!' + #13 + #13+
                                '- O usuário cancelou a operação !' + #13 + #13+
                                'Deseja Continuar ?','Informação',MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_YESNO + MB_ICONQUESTION ) = idYes then
        Tempo := Tempo + TempoIntervalo
      else
        begin
          Application.Restore;
          Break;
        end;
    end;
  if not (Tempo < TempoLimite) then
    begin
      Application.MessageBox('O tempo limite para esta operação foi excedido !' +#13+#13+
                             'Não foi possível autorizar esta Transação!'+#13+ #13+
                             'Possíveis problemas.............:'+#13+#13+
                             '- O software do Provedor de Cartão de Crédito não foi instalado !' + #13 +#13+
                             '- O software do Provedor de Cartão de Crédito não está ativo !' + #13 + #13+
                             '- O software do Provedor de Cartão de Crédito está aguardando um comando do usuário!' + #13 + #13+
                             '- O diretório de troca de arquivos não existe !' + #13 + #13+
                             '- O usuário cancelou a operação !' + #13 + #13+
                             'Para maiores detalhes contate o administrador do sistema...!','Informação',MB_OK + MB_ICONERROR);
      Application.Restore;
    end;
end;

end.
