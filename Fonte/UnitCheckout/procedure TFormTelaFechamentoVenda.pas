procedure TFormTelaFechamentoVenda.EntradaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  TotNumECF   : string ;
  Valor1,
  Valor2,
  ValorDevido : double ;
begin
if (FinalizacaodeVenda) and
   (not FileExists('FinalizacaodeVenda.arq')) then exit ;

if (Key = VK_ESCAPE) and (EstadoFechVenda = FinalizandoVenda) then
  begin
    if Pergunta('Não', '* * * TEM CERTEZA QUE DESEJA CANCELAR ESTA VENDA ? * * *') then
    else
      exit ;

    if (ECFAtual <> '') and (PortaECFAtual <> '') then
      if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
        exit ;

    FormTelaItens.CancelarVenda ;
    FormTelaItens.LimparVariaveis ;
    FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
    FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;

    if not FileExists('SemTransacao.Arq') then
      if DM.DB.InTransaction then
        DM.DB.Rollback ;

    Close ;

    exit ;
  end ;
//ESTA ROTINA FOI COLOCADA PARA PODER TECLAR SETA PARA BAIXO E ABRIR AS LISTAS
//DE PLANO, VENDENDOR, NUMERÁRIO A VISTA E A PRAZO
if (Key = VK_Down) then
  begin
    if EstadoFechVenda = InformandoNumerarioVista then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
        FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numerários À Vista' ;
        FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{        FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
        FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V"' ;
        FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

        FormTelaConsultaRapidaNumerario.ShowModal ;
        EntradaDados.text := IntToStr(NumerarioAtual) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
      end ;

    if EstadoFechVenda = InformandoNumerarioPrazo then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
        FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numerários à Prazo' ;
        FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{        FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
        FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P"' ;
        FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

        FormTelaConsultaRapidaNumerario.ShowModal ;
        EntradaDados.text := IntToStr(NumerarioAtual) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
      end ;

    if EstadoFechVenda = InformandoVendedor then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
        FormTelaConsultaRapidaVendedor.ShowModal ;
        EntradaDados.text := IntToStr(VendedorVenda) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        exit ;
      end ;

    if EstadoFechVenda = InformandoPlano then
      begin
        Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano) ;
        FormTelaConsultaRapidaPlano.ShowModal ;
        EntradaDados.text := IntToStr(PlanoVenda) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        exit ;
      end ;
  end ;

if (Key = VK_Return) then
  begin
    //INFORMADO CLIENTE
    if EstadoFechVenda = InformandoCliente then
      begin
        ClienteVenda := '' ;
        if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'FLOAT')) then
          begin
            Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
            FormTelaConsultaRapidaCliente.ShowModal ;
            EntradaDados.text := ClienteVenda ;
          end ;

        if Length(EntradaDados.Text) < 13 then
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
            DM.SQLTemplate.SQL.Add('where') ;
            DM.SQLTemplate.SQL.Add('CLIEA10CODANT = "' + EntradaDados.text + '"') ;
            DM.SQLTemplate.Open ;
          end
        else
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
            DM.SQLTemplate.SQL.Add('where') ;
            DM.SQLTemplate.SQL.Add('CLIEA13ID = "' + EntradaDados.text + '"') ;
            DM.SQLTemplate.Open ;
          end ;

        DM.SQLTemplate.First ;
        if not DM.SQLTemplate.EOF then
          begin
            EnderecoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString ;
            CidadeClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString ;
            BairroClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString ;
            if DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString <> '' then
              DocumentoClienteVenda := 'CPF:' + DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString
            else
              begin
                if DM.SQLTemplate.FieldByName('CLIEA10RG').AsString <> '' then
                  DocumentoClienteVenda := 'RG:' + DM.SQLTemplate.FieldByName('CLIEA10RG').AsString
                else
                  if DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString <> '' then
                    DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString ;
              end ;
            ClienteVenda := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;
            LblCodigoCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;

            if DM.SQLTemplate.FieldByName('CLIEA60NOMEFANT').AsString <> '' then
              LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60NOMEFANT').AsString
            else
              LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString ;
          end
        else
          begin
            EntradaDados.SelectAll ;
            Informa('Cliente não encontrado !') ;
            exit ;
          end ;

        if ClienteVenda <> '' then
          if BloquearVenda then
              exit ;

        EntradaDados.Clear ;
        if EstadoFechVendaAnt = '' then
          begin
            if LblNomeVendedor.Caption = '' then
              EstadoFechVenda := InformandoVendedor
            else
              TemInformacaoPendente ;
          end
        else
          EstadoFechVenda := EstadoFechVendaAnt ;

        EstadoFechVendaAnt := '' ;
        PreparaEstadoFech(EstadoFechVenda) ;

        exit ;
      end ;
      //INFORMANDO VENDEDOR
    if EstadoFechVenda = InformandoVendedor then
      begin
        if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
          begin
            if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and
               (SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') <> '') then
              begin
                EntradaDados.text := SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') ;
              end
            else
              begin
                Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
                FormTelaConsultaRapidaVendedor.ShowModal ;
                EntradaDados.text := IntToStr(VendedorVenda) ;
              end ;
          end ;

        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select * from VENDEDOR') ;
        DM.SQLTemplate.SQL.Add('where') ;
        DM.SQLTemplate.SQL.Add('VENDICOD = ' + EntradaDados.text) ;
        DM.SQLTemplate.Open ;

        DM.SQLTemplate.First ;
        if not DM.SQLTemplate.EOF then
          begin
            VendedorVenda           := DM.SQLTemplate.FieldByName('VENDICOD').AsInteger ;
            LblNomeVendedor.Caption := DM.SQLTemplate.FieldByName('VENDA60NOME').AsString ;
          end
        else
          begin
            EntradaDados.SelectAll ;
            Informa('Vendedor não encontrado !') ;
            exit ;
          end ;

        EntradaDados.Clear ;

        if VendaConsignada then
          begin
            EstadoFechVenda := InformandoPlano ;
            PreparaEstadoFech(FinalizandoVenda) ;
            exit ;
          end ;

        if EstadoFechVendaAnt = '' then
          begin
            if TemInformacaoPendente then
              exit
            else
              EstadoFechVenda := FinalizandoVenda ;
          end
        else
          EstadoFechVenda := EstadoFechVendaAnt ;

        EstadoFechVendaAnt := '' ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;
    //INFORMANDO PLANO
    if EstadoFechVenda = InformandoPlano then
      begin
        if (EntradaDados.text = '') or (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'INTEGER')) then
          begin
            Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano) ;
            FormTelaConsultaRapidaPlano.ShowModal ;
            EntradaDados.text := IntToStr(PlanoVenda) ;
          end ;

        SQLPlanoRecebimento.Close ;
        SQLPlanoRecebimento.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
        SQLPlanoRecebimento.Open ;
        SQLPlanoRecebimentoParcela.Close ;
        SQLPlanoRecebimentoParcela.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
        SQLPlanoRecebimentoParcela.Open ;

        if (FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value <> 'S') and
           (SQLPlanoRecebimentoParcela.Recordcount = 0) then
          begin
            EntradaDados.SelectAll ;
            Informa('Este Plano não possui parcelas!') ;
            exit ;
          end ;

        SQLPlanoRecebimento.First ;
        if not SQLPlanoRecebimento.EOF then
          begin
            PlanoVenda           := SQLPlanoRecebimentoPLRCICOD.AsInteger ;
            LblNomePlano.Caption := SQLPlanoRecebimentoPLRCA60DESCR.AsString ;

            if VendaConsignada then
              begin
                EstadoFechVenda := FinalizandoVenda ;
                PreparaEstadoFech(FinalizandoVenda) ;
                EntradaDados.Clear ;
                exit ;
              end ;

            if (SQLPlanoRecebimentoPLRCN2PERCDESC.Value > 0) then
              begin
                if DescTotVenda then
                  begin
                    Informa('O plano escolhido possui DESCONTO, ' +
                            'porém este desconto não será aplicado pois já foi dado um desconto pelo operador !') ;
                  end
                else
                  begin
                    if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                      ValorDescontoAcrescimo.Value := (ValorTotalVenda.Value *
                                                       (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100))
                    else
                      ValorDescontoAcrescimo.Value := (FormTelaItens.CurSubTotal.Value *
                                                       (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;

                    LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;
                    LblValorDescontoAcrescimo.Refresh ;
                  end ;
              end ;

            VlrTxCrediario.Value := 0 ;
            //SUBTRAIR DESCONTO NO PLANO
            ValorTotalVenda.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) -
                                     ((FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) *
                                      (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;

            if DescTotVenda then
              ValorTotalVenda.Value := ValorTotalVenda.Value -
                                       ValorDescontoAcrescimo.Value ;
            if ValorEntrada.Value = 0 then
              ValorEntrada.Value := ValorEntrada.Value +
                                    ((SQLPlanoRecebimentoPLRCN2PERCENTR.Value/100) *
                                      (ValorTotalVenda.Value-(0+((SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)*ValorTotalVenda.Value)))) ;

            CriaParcelas(SQLParcelasPrazoVendaTemp,
                         SQLPlanoRecebimento,
                         SQLPlanoRecebimentoParcela,
                         ValorEntrada.Value,
                         0,
                         TiraPontoMilhar(ValorTotalVenda.Value),
                         PlanoVenda,
                         Date,
                         'TpRecVistaTel', 'TpRecPrazoTel', 'TpRecVistaPDV', 'TpRecPrazoPDV', 'Documento',
                         ValorDiminuirAcresc,
                         VlrJuro,
                         VlrAcresc,
                         VlrEntr,
                         VlrTxCred) ;


            if VlrTxCred > 0 then
              begin
                LblTxCrediario.Visible := true ;
                VlrTxCrediario.Visible := true ;
                VlrTxCrediario.Value   := VlrTxCred ;
              end
            else
              begin
                LblTxCrediario.Visible := false ;
                VlrTxCrediario.Visible := false ;
                VlrTxCrediario.Value   := 0 ;
              end ;

            if ValorEntrada.Value = 0 then
              ValorEntrada.Value := VlrEntr ;
            //ACRESCENTAR TAXA DE CREDIÁRIO E ACRÉSCIMO
            ValorTotalVenda.Value := ValorTotalVenda.Value +
                                     SQLPlanoRecebimentoPLRCN2TXCRED.Value +
                                     VlrAcresc ;


            if (DescTotVenda) and (VlrAcresc > 0) then
              begin
                Informa('O plano escolhido possui ACRÉSCIMO, ' +
                        'porém você concedeu um desconto e não é possível mandar Desconto e Acréscimo simultaneamente para o ECF. O plano deverá ser trocado!') ;

                ValorEntrada.Value    := 0 ;
                ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                         VlrTxCrediario.Value -
                                         ValorDescontoAcrescimo.Value -
                                         (VlrBonusTroca + VlrRetConfig_SldCad) ;

                EstadoFechVenda := InformandoPlano ;
                PreparaEstadoFech(EstadoFechVenda) ;
                EntradaDados.Clear ;
                exit ;
              end ;

            if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) and (VlrAcresc > 0) then
              begin
                Informa('O plano escolhido possui ACRÉSCIMO, ' +
                        'porém este cupom é de troca e não é possível mandar Desconto e Acréscimo simultaneamente para o ECF. O plano deverá ser trocado!') ;

                EstadoFechVenda := InformandoPlano ;
                PreparaEstadoFech(EstadoFechVenda) ;
                EntradaDados.Clear ;
                exit ;
              end ;

            if VlrAcresc > 0 then
              begin
                ValorDescontoAcrescimo.Value      := VlrAcresc ;
                LblValorDescontoAcrescimo.Caption := 'ACRÉSCIMO' ;
                LblValorDescontoAcrescimo.Refresh ;
              end
            else
              if DescTotVenda then
                if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
                  ValorDescontoAcrescimo.Value := 0 ;

            LblEntrada.Caption := 'ENTRADA' ;
            LblEntrada.Refresh ;
            if (ValorEntrada.Value <= ValorTotalVenda.Value) and
               (SQLParcelasPrazoVendaTemp.RecordCount = 0) then
              begin
                LblEntrada.Caption := 'SALDO' ;
                LblEntrada.Refresh ;
              end ;

            if ValorEntrada.Value > 0 then
              begin
                EstadoFechVenda := InformandoNumerarioVista ;
                PreparaEstadoFech(EstadoFechVenda) ;
                EntradaDados.Clear ;
                EntradaDados.SelectAll ;
                exit ;
              end ;
          end
        else
          begin
            EntradaDados.SelectAll ;
            Informa('Plano não encontrado !') ;
            exit ;
          end ;

        EntradaDados.Clear ;
        if EstadoFechVendaAnt = '' then
          begin
            if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
              EstadoFechVenda := FinalizandoVenda
            else
              EstadoFechVenda := InformandoNumerarioPrazo ;
          end
        else
          EstadoFechVenda := EstadoFechVendaAnt ;

        EstadoFechVendaAnt := '' ;
        PreparaEstadoFech(EstadoFechVenda) ;
        exit ;
      end ;
    //INFORMANDO NUMERÁRIO A VISTA
    if EstadoFechVenda = InformandoNumerarioVista then
      begin
        if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
          begin
            if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') then
              begin
                EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
              end
            else
              begin
                Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
                FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numerários À Vista' ;
                FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{                FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
                FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V"' ;
                FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

                FormTelaConsultaRapidaNumerario.ShowModal ;
                EntradaDados.text := IntToStr(NumerarioAtual) ;
              end ;
          end ;

        NumerarioVista := 0 ;
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
        DM.SQLTemplate.SQL.Add('where') ;
        DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
        DM.SQLTemplate.Open ;

        DM.SQLTemplate.First ;
        if DM.SQLTemplate.EOF then
          begin
            EntradaDados.SelectAll ;
            Informa('Numerário não encontrado !') ;
            exit ;
          end ;

{        if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value <> 'V' then
          begin
            EntradaDados.SelectAll ;
            Informa('Este não é um numerário a vista!') ;
            exit ;
          end ;}

        NumerarioVista      := StrToInt(EntradaDados.Text) ;
        NumerarioVistaDescr := DM.SQLTemplate.Fieldbyname('NUMEA30DESCR').AsString ;
        TipoPadrao          := DM.SQLTemplate.FieldByName('NUMEA5TIPO').Value ;

        EntradaDados.Clear ;
        EstadoFechVenda := InformandoValorNumerarioVista ;
        PreparaEstadoFech(EstadoFechVenda) ;
        EntradaDados.Text := FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value) ;
        EntradaDados.SelectAll ;
        exit ;
      end ;
//-----OK TE AQUI------\\

      //INFORMANDO VALOR NUMERÁRIO A VISTA
    if EstadoFechVenda = InformandoValorNumerarioVista then
      begin
        EntradaDados.Text := TrocaPontoPorVirgula(EntradaDados.Text) ;
        try
          StrToFloat(EntradaDados.Text) ;
        except
          Informa('Valor inválido para o Numerário!') ;
          EntradaDados.SelectAll ;
          exit ;
        end ;

        if not (StrToFloat(EntradaDados.Text) > 0) then
          begin
            Informa('Valor deve ser maior que zero!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
        DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
        DM.SQLTemplate.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
        DM.SQLTemplate.Open ;
        if DM.SQLTemplate.EOF then
          begin
            ValorDevido := ValorEntrada.Value - ValorRecebido.Value ;
            SQLParcelasVistaVendaTemp.Last ;
            NroIt := SQLParcelasVistaVendaTempNROITEM.Value + 1 ;

            SQLParcelasVistaVendaTemp.Append ;
            SQLParcelasVistaVendaTempTERMICOD.Value := TerminalAtual ;
            SQLParcelasVistaVendaTempNROITEM.Value  := NroIt ;
            SQLParcelasVistaVendaTempNUMEICOD.Value := NumerarioVista ;
            Valor1 := StrToFloat(EntradaDados.Text) ;
            if (Valor1 > ValorDevido) and (ValorDevido > 0) then
              begin
                if TipoPadrao <> 'DIN' then
                  begin
                    Informa('Não é possível dar troco para um numerário diferente de dinheiro !') ;
                    SQLParcelasVistaVendaTemp.Cancel ;
                    EstadoFechVenda := InformandoNumerarioVista ;
                    PreparaEstadoFech(EstadoFechVenda) ;
                    exit ;
                  end ;
                SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) - (StrToFloat(EntradaDados.Text) - ValorDevido) ;
              end
            else
              SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) ;

            SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao ;
            SQLParcelasVistaVendaTemp.Post ;
          end
        else
          begin
            SQLParcelasVistaVendaTemp.Close ;
            SQLParcelasVistaVendaTemp.SQL.Clear ;
            SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
            SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
            SQLParcelasVistaVendaTemp.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
            SQLParcelasVistaVendaTemp.Open ;
            SQLParcelasVistaVendaTemp.Edit ;
            SQLParcelasVistaVendaTempVALORPARC.Value := SQLParcelasVistaVendaTempVALORPARC.Value +
                                                        StrToFloat(EntradaDados.Text) ;
            SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao ;
            SQLParcelasVistaVendaTemp.Post ;
          end ;

        SQLParcelasVistaVendaTemp.Close ;
        SQLParcelasVistaVendaTemp.SQL.Clear ;
        SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
        SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
        SQLParcelasVistaVendaTemp.Open ;

        ValorRecebido.Value := ValorRecebido.Value + StrToFloat(EntradaDados.Text) ;
        EntradaDados.Clear ;

        if ValorRecebido.Value >= ValorEntrada.Value then
          begin
            if EstadoFechVendaAnt = '' then
              begin
                if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                  EstadoFechVenda := FinalizandoVenda
                else
                  EstadoFechVenda := InformandoNumerarioPrazo ;
              end
            else
              EstadoFechVenda := EstadoFechVendaAnt ;

            EstadoFechVendaAnt := '' ;
            PreparaEstadoFech(EstadoFechVenda) ;
            if (ValorRecebido.Value > ValorEntrada.Value) and (ValorDevido > 0) then
              ValorTroco.Value := ValorRecebido.Value - ValorEntrada.Value ;
          end
        else
          begin
            EntradaDados.Clear ;
            if EstadoFechVendaAnt = '' then
              EstadoFechVenda := InformandoNumerarioVista
            else
              EstadoFechVenda := EstadoFechVendaAnt ;
            EstadoFechVendaAnt := '' ;
            PreparaEstadoFech(EstadoFechVenda) ;
          end ;
        exit ;
      end ;
    //INFORMANDO NUMERÁRIO A PRAZO
//INFORMANDO NUMERÁRIO A PRAZO
  if EstadoFechVenda = InformandoNumerarioPrazo then
  begin
    if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
      begin
        if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and
           (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') and
           (Key <> VK_Down) then
          begin
            EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
          end
        else
          begin
            Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
            FormTelaConsultaRapidaNumerario.LblTituloTela.Caption := 'Consulta de Numerários à Prazo' ;
            FormTelaConsultaRapidaNumerario.LblTituloTela.Refresh ;

{            FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
            FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P"' ;
            FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;}

            FormTelaConsultaRapidaNumerario.ShowModal ;
            EntradaDados.text := IntToStr(NumerarioAtual) ;
          end ;
      end ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Count(*) from PARCELASPRAZOVENDATEMP') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('Count').Value = 0 then
    begin
      EntradaDados.Clear ;
      if EstadoFechVendaAnt = '' then
        EstadoFechVenda := FinalizandoVenda
      else
        EstadoFechVenda := EstadoFechVendaAnt ;

      EstadoFechVendaAnt := '' ;
      PreparaEstadoFech(EstadoFechVenda) ;
      Exit ;
    end ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
    DM.SQLTemplate.SQL.Add('where') ;
    DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
    DM.SQLTemplate.Open ;

{    if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value <> 'P' then
    begin
      EntradaDados.SelectAll ;
      Informa('Este não é um numerário a vista!') ;
      exit ;
    end ;}

    DM.SQLTemplate.First ;
    if not DM.SQLTemplate.EOF then
    begin
      NumerarioPrazo := DM.SQLTemplate.FieldByName('NUMEICOD').AsInteger ;

      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      while not SQLParcelasPrazoVendaTemp.EOF do
      begin
        SQLParcelasPrazoVendaTemp.Edit ;
        SQLParcelasPrazoVendaTempNUMEICOD.Value := NumerarioPrazo ;
        SQLParcelasPrazoVendaTempTIPOPADR.Value := DM.SQLTemplate.FieldByName('NUMEA5TIPO').AsString ;
        SQLParcelasPrazoVendaTemp.Post ;

        SQLParcelasPrazoVendaTemp.Next ;
      end ;
      SQLParcelasPrazoVendaTemp.First ;
      SQLParcelasPrazoVendaTemp.EnableControls ;
    end
    else begin
      EntradaDados.SelectAll ;
      Informa('Numerário não encontrado !') ;
      exit ;
    end ;

    EntradaDados.Clear ;
    if EstadoFechVendaAnt = '' then
      EstadoFechVenda := FinalizandoVenda
    else
      EstadoFechVenda := EstadoFechVendaAnt ;

    EstadoFechVendaAnt := '' ;
    PreparaEstadoFech(EstadoFechVenda) ;
    exit ;
  end ;
  //INFORMANDO A POSICAO DA DATA A SER ALTERADA
  if EstadoFechVenda = InformandoPosicaoData then
  begin
    if EntradaDados.Text = '' then
    begin
      exit ;
    end ;

    Screen.Cursor := crHourglass ;
    if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
    begin
      Informa('Parcela não encontrada!') ;
      exit ;
    end ;
    Screen.Cursor := crDefault ;
    EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;

    EstadoFechVenda := AlterandoData ;
    PreparaEstadoFech(EstadoFechVenda) ;
    exit ;
  end ;
  //ALTERANDO DATA VENCIMENTO
  if EstadoFechVenda = AlterandoData then
  begin
    //TESTAR SE A DATA DIGITADAD É VÁLIDA
    try
      EntradaDados.Text := DateToStr(StrToDate(EntradaDados.Text)) ;
    except
      Informa('Data inválida !') ;
      EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
      exit ;
    end ;

    //ALTERANDO DATA VENCIMENTO
    SQLParcelasPrazoVendaTemp.Edit ;
    SQLParcelasPrazoVendaTempDATAVENCTO.AsString := EntradaDados.Text ;
    SQLParcelasPrazoVendaTemp.Post ;

    SQLParcelasPrazoVendaTemp.Close ;
    SQLParcelasPrazoVendaTemp.Open ;

    EntradaDados.Clear ;
    EstadoFechVenda    := EstadoFechVendaAnt ;
    EstadoFechVendaAnt := '' ;
    PreparaEstadoFech(EstadoFechVenda) ;
    exit ;
  end ;
    //INFORMANDO A POSICAO DA PRACELA PRAZO A SER ALTERADA
    if EstadoFechVenda = InformandoPosicaoParcelaPrazo then
    begin
      if EntradaDados.Text = '' then
      begin
        exit ;
      end ;

      Screen.Cursor := crHourglass ;
      if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
      begin
        Informa('Parcela não encontrada!') ;
        exit ;
      end ;
      Screen.Cursor := crDefault ;
      EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;

      EstadoFechVenda := AlterandoParcelaPrazo ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
    //ALTERANDO PARCELA PRAZO
    if EstadoFechVenda = AlterandoParcelaPrazo then
    begin
      //TESTAR SE A VALOR DIGITADO É VÁLIDO
      try
        EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
      except
        Informa('Valor inválido !') ;
        EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
        exit ;
      end ;

      //ALTERANDO DATA VENCIMENTO
      SQLParcelasPrazoVendaTemp.Edit ;
      SQLParcelasPrazoVendaTempVALORVENCTO.AsString := EntradaDados.Text ;
      SQLParcelasPrazoVendaTemp.Post ;

      SQLParcelasPrazoVendaTemp.Close ;
      SQLParcelasPrazoVendaTemp.Open ;

      EntradaDados.Clear ;
      EstadoFechVenda    := EstadoFechVendaAnt ;
      EstadoFechVendaAnt := '' ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
    //DIMINUIR ACRESCIMO
    if EstadoFechVenda = DiminuirAcrescimo then
    begin
      //TESTAR SE A VALOR DIGITADO É VÁLIDO
      try
        EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
      except
        Informa('Valor inválido !') ;
        EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
        exit ;
      end ;

      ValorDiminuirAcresc := StrToFloat(EntradaDados.Text) ;
      ValorDescontoAcrescimo.Value := 0 ;
      ValorEntrada.Value           := 0 ;

      EntradaDados.Clear ;
      EstadoFechVenda    := InformandoPlano ;
      EstadoFechVendaAnt := '' ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
    //INFORMANDO DESCONTO
    if EstadoFechVenda = InformandoDesconto then
    begin
      try
        EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
      except
        Informa('Valor inválido !') ;
        exit ;
      end ;

      if (LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO') and
         (ValorDescontoAcrescimo.Value > 0) then
      begin
        ValorDescontoAcrescimo.Value := 0 ;
        ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value ;
      end ;

      if TipoDescFech = 'VALOR' then
        ValorDescontoAcrescimo.Text := EntradaDados.Text ;

      if TipoDescFech = 'PERCENTUAL' then
        ValorDescontoAcrescimo.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) *
                                        (StrToFloat(EntradaDados.Text)/100) ;

      if PercDesqMaxUsario < (ValorDescontoAcrescimo.Value / (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad))*100) then
        begin
          ValorDescontoAcrescimo.Value := 0 ;
          Informa('Você não tem permissão para dar desconto na venda') ;
        end
      else
        begin
          EntradaDados.Clear ;
          //SUBTRAIR DESCONTO DO TOTAL DA VENDA
          if ValorDescontoAcrescimo.Value > 0 then
            begin
              LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;

              ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value  +
                                       VlrTxCrediario.Value -
                                       ValorDescontoAcrescimo.Value -
                                       (VlrBonusTroca + VlrRetConfig_SldCad)
            end
          else
            ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                     VlrTxCrediario.Value -
                                     (VlrBonusTroca + VlrRetConfig_SldCad) ;

          ValorEntrada.Value  := 0 ;
          ValorRecebido.Value := 0 ;
          //LIMPAR PARCELAS A VISTA
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.ExecSQL ;
          SQLParcelasVistaVendaTemp.Close ;
          SQLParcelasVistaVendaTemp.Open ;
          //LIMPAR PARCELAS A PRAZO
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.ExecSQL ;
          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.Open ;
        end ;

      if ValorDescontoAcrescimo.Value > 0 then
        DescTotVenda := true
      else begin
        LblValorDescontoAcrescimo.Caption := 'ACRÉSCIMO' ;
        LblValorDescontoAcrescimo.Refresh ;
        DescTotVenda := false ;
      end ;

      EstadoFechVendaAnt := '' ;
      //EstadoFechVenda    := InformandoPlano ;

      AtualizaDadosPlanoNumerario(Sender) ;
      exit ;
    end ;
    //ALTERANDO ENTRADA
    if EstadoFechVenda = AlterandoEntrada then
    begin
      ValorEntrada.Text := EntradaDados.Text ;
      EntradaDados.Clear ;

      AtualizaDadosPlanoNumerario(Sender) ;

      exit ;
    end ;
    //EXCLUINDO NUMERÁRIO A VISTA
    if EstadoFechVenda = ExcluindoNumerarioVista then
    begin
      if not SQLParcelasVistaVendaTemp.Locate('NROITEM', EntradaDados.Text, []) then
      begin
        Informa('Não há nenhum Numerário a Vista na posição informada!') ;
        exit ;
      end ;

      ValorRecebido.Value := ValorRecebido.Value - SQLParcelasVistaVendaTempVALORPARC.Value ;
      SQLParcelasVistaVendaTemp.Delete ;

      EntradaDados.Clear ;
      EstadoFechVenda := InformandoNumerarioVista ;
      EstadoFechVendaAnt := '' ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
    //--------------------- FECHAMENTO DA VENDA --------------------\\
    if (EstadoFechVenda = FinalizandoVenda) and (not FechandoVenda) then
    begin
      //LIMPAR TABELA TEMPORARIA DE CARNE
      FinalizacaodeVenda := true ;

      TblCarne.Close ;
      try
        TblCarne.DeleteTable ;
      except
      end ;
      TblCarne.CreateTable ;
      TblCarne.Open ;

      if not VendaConsignada then
        if PlanoVenda = 0 then
          begin
            Informa('O Plano deve ser informado !') ;
            EstadoFechVenda := InformandoPlano ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

      if ClienteVenda = '' then
        begin
          Informa('O Cliente deve ser informado !') ;
          EstadoFechVendaAnt := EstadoFechVenda ;
          EstadoFechVenda    := InformandoCliente ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;

      if VendedorVenda = 0 then
        begin
          Informa('O Vendedor deve ser informado !') ;
          EstadoFechVendaAnt := EstadoFechVenda ;
          EstadoFechVenda    := InformandoVendedor ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;

      if ClienteVenda <> '' then
        begin
          if BloquearVenda then
            exit ;
        end ;
      //ESTA VARIAVEL FOI CRIADA POIS QUANDO SE CLIACAVA F3 PARA FINALIZAR A VENDA
      //E RAPIDAMENTE DAVA-SE 5 ENTER O SISTEMA TENTAVA FECHAR DUAS VEZES A
      //VENDA E DAVA ERRO
      FechandoVenda := true ;

      if not VendaConsignada then
        if (VerificandoTotalVenda <> 0) and (ValorTotalVenda.Value > 0) then
        begin
          FechandoVenda := false ;
          if not Pergunta('NAO', 'O total das parcelas difere em R$ ' + FormatFloat('#,##0.00', VerificandoTotalVenda) +
                                 ' do total da venda. Deseja encerrar a venda assim mesmo ?') then
            exit ;
        end ;

      //CONSISTENCIAS
      if ValorRecebido.Value < ValorEntrada.Value then
        begin
          Informa('O valor recebido está menor que o valor da Entrada/Saldo !') ;
          EstadoFechVenda := InformandoNumerarioVista ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;

      TipoPadrao := '' ;

      //TESTAR SE ALGUMA VALOR AVISTA ESTÁ SEM NUMERÁRIO
      SQLParcelasVistaVendaTemp.DisableControls ;
      SQLParcelasVistaVendaTemp.First ;
      while not SQLParcelasVistaVendaTemp.EOF do
        begin
          if SQLParcelasVistaVendaTempNUMEICOD.Value > 0 then
          else begin
            Informa('Existe um valor a vista sem Numerário !') ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

          TipoPadrao    := SQLParcelasVistaVendaTempTIPOPADR.Value ;
          TotalVistaAut := TotalVistaAut + SQLParcelasVistaVendaTempVALORPARC.Value ;

          SQLParcelasVistaVendaTemp.Next ;
        end ;
      SQLParcelasVistaVendaTemp.First ;
      SQLParcelasVistaVendaTemp.EnableControls ;

      //TESTAR SE ALGUMA VALOR APRAZO ESTÁ SEM NUMERÁRIO
      NumParc := SQLParcelasPrazoVendaTemp.RecordCount ;
      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      ValorPrazo := 0 ;
      while not SQLParcelasPrazoVendaTemp.EOF do
        begin
          if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
          else
            begin
              Informa('Existe um valor a prazo sem Numerário !') ;
              exit ;
            end ;

          TipoPadrao := SQLParcelasPrazoVendaTempTIPOPADR.Value ;
          ValorPrazo := ValorPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

          //GRAVAR PARCELAS NA TABELA TEMPORARIA DE CARNE
          if SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD' then
            begin
              if not TblCarne.Active then
                TblCarne.Open ;
              //GRAVAR PARCELA A VISTA NO CARNE PARA AUTENTICAR
              if (TotalVistaAut > 0) and
                 (SQLParcelasPrazoVendaTempNROPARCELA.Value = 1) and
                 (DM.SQLConfigVendaCFVECPARC0ENTRBAIX.Value <> 'S') then
                begin
                  TblCarne.Append ;
                  TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
                  TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
                  TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
                  TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
                  TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
                  TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
                  TblCarneMensagem.AsString       := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value ;
                  TblCarneCliente.AsString        := LblNomeCliente.Caption ;
                  TblCarneEndereco.AsString       := EnderecoClienteVenda ;
                  TblCarneBairro.AsString         := CidadeClienteVenda ;
                  TblCarneCidade.AsString         := BairroClienteVenda ;
                  TblCarneCodigoCliente.AsString  := ClienteVenda ;
                  TblCarneNumeroParcela.AsString  := '0' ;
                  TblCarneContadorParcelas.Value  := NumParc ;
                  TblCarneDataVencimento.Value    := Date ;
                  TblCarneValorParcela.Value      := TotalVistaAut ;
                  TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
                  TblCarneTotalCupom.Value        := ValorTotalVenda.Value ;
                  TblCarnePlano.Value             := LblNomePlano.Caption ;
                  TblCarneDataEmissao.Value       := Date ;
                  TblCarneNroCupom.Value          := NroCupomFiscal ;
                  TblCarne.Post ;
                end ;

              TblCarne.Append ;
              TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
              TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
              TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
              TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
              TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
              TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
              TblCarneMensagem.AsString       := DM.SQLTerminalAtivoTERMA255MSGCARNE.Value ;
              TblCarneCliente.AsString        := LblNomeCliente.Caption ;
              TblCarneEndereco.AsString       := EnderecoClienteVenda ;
              TblCarneBairro.AsString         := CidadeClienteVenda ;
              TblCarneCidade.AsString         := BairroClienteVenda ;
              TblCarneCodigoCliente.AsString  := ClienteVenda ;
              TblCarneNumeroParcela.AsString  := SQLParcelasPrazoVendaTempNROPARCELA.AsString ;
              TblCarneContadorParcelas.Value  := NumParc ;
              TblCarneDataVencimento.AsString := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
              TblCarneValorParcela.AsString   := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
              TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
              TblCarneTotalCupom.Value        := ValorTotalVenda.Value ;
              TblCarnePlano.Value             := LblNomePlano.Caption ;
              TblCarneDataEmissao.Value       := Date ;
              TblCarneNroCupom.Value          := NroCupomFiscal ;
              TblCarne.Post ;
            end ;

          SQLParcelasPrazoVendaTemp.Next ;
        end ;
      SQLParcelasPrazoVendaTemp.First ;
      SQLParcelasPrazoVendaTemp.EnableControls ;

      //SE NÃO TIVER MAIS DE UM NUMERARIO A VISTA IRÁ GRAVAR VENDA A VISTA
      //COMO DESCRICAO NO CAIXA POIS NÃO PODE ESCOLHER UM NUMERÁRIOS
      if SQLParcelasVistaVendaTemp.RecordCount > 1 then
         TipoPadrao := 'VISTA' ;

      if (ECFAtual <> '') and (PortaECFAtual <> '') and (TotalVistaAut > 0) then
        AbrirGaveta(ECFAtual, PortaECFAtual) ;

      //* * * * * * * * * * * * * * * * * * * * * * * * *
      //*               GRAVANDO PRÉ-VENDA              *
      //* * * * * * * * * * * * * * * * * * * * * * * * *
      if (TerminalModo = 'P') and (not E_Orcamento) then
        begin
          if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
            if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA PRÉ-VENDA ? * * *') then
              Exit ;

          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Rollback ;

          if not FileExists('SemTransacao.Arq') then
            DM.DB.StartTransaction ;

          GravarPreVenda ;

          GravarItensPreVenda ;

          GravarNumerarioAVistaPreVenda ;

          GravarNumerarioAPrazoPreVenda ;

          if (DM.SQLConfigVendaCFVECIMPPREVDCOD.Value = 'S') then
            begin
              InformaG('ANOTE O CÓDIGO DESTA PRÉ-VENDA :' + #13 + '* * * [ ' + IntToStr(TerminalAtual) + '.' +  IntToStr(CodNextPreVenda) + ' ] * * *') ;
            end ;

          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Commit ;
        end ;
      //* * * * * * * * * * * * * * * * * * * * * * * * *
      //*               GRAVANDO CUPOM                  *
      //* * * * * * * * * * * * * * * * * * * * * * * * *
      if (TerminalModo = 'C') and (not E_Orcamento)  then
        begin
          if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
            if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA VENDA ? * * *') then
              begin
                FechandoVenda := false ;
                exit ;
              end ;

          InformarDadosCheque ;

          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Rollback ;

          if not FileExists('SemTransacao.Arq') then
            DM.DB.StartTransaction ;

          //AQUI CHAMA A TELA P/INFORMAR OS DADOS DA VENDA BLUMENSTRAUS
          if DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S' then
          begin
            Application.CreateForm(TFormTelaCadastroDadosVenda, FormTelaCadastroDadosVenda) ;
            FormTelaCadastroDadosVenda.ShowModal ;
          end ;

          GravarCupom ;

          //IMPRESSAO DO CARNE
          if (TipoPadrao = 'CRD') then
            if Pergunta('SIM','* * * DESEJA IMPRIMIR CARNÊ ? * * *') then
            begin
              //O WHILE ABAIXO SERVE PARA GRAVAR O ID DO CUPOM NA TABELA TEMP.DE CARNE
              //POIS SOMENTE APOS A GRAVACAO DO CUPOM E POSSIVEL SABER O ID E NAO ONDE AS
              //PARCELAS ESTAO SENDO GERADAS ACIMA
              TblCarne.First ;
              while not TblCarne.EOF do
              begin
                TblCarne.Edit ;
                TblCarneNumeroContrato.AsString := DM.CodNextCupom ;
                TblCarne.Post ;

                TblCarne.Next ;
              end ;

              if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
              begin
                if (Pos('JONAS', FormTelaItens.NomeEmpresa.Caption) > 0) then
                begin
                  Application.CreateForm(TFormTelaImpressaoCarne, FormTelaImpressaoCarne) ;
                  if DM.SQLTerminalAtivoTERMA60IMPCARNE.Value = '' then
                  begin
                    ShowMessage('O caminho de impressão não foi informado, este carnês não será impresso!') ;
                    exit ;
                  end ;

                  FormTelaImpressaoCarne.CarneJonas.PrinterSetup.DocumentName := 'Carnê' ;
                  FormTelaImpressaoCarne.CarneJonas.PrinterSetup.PrinterName  := DM.SQLTerminalAtivoTERMA60IMPCARNE.Value ;
                  FormTelaImpressaoCarne.CarneJonas.Print ;

                  FormTelaImpressaoCarne.Close ;
                end ;
              end
              else begin
                if FileExists('CARNES.EXE') then
                  WinExec(Pchar('CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show)
                else
                  Informa('O programa de impressão de carnê não foi encontrado !') ;
              end ;
            end ;

          //INICIO FECHAMENTO CUPOM FISCAL
          if (ECFAtual <> '') and (PortaECFAtual <> '') then
          begin
            LblInstrucoes.Caption := 'INICIANDO ENCERRAMENTO CUPOM FISCAL...' ;
            LblInstrucoes.Refresh ;

            if VlrTxCrediario.Value > 0 then
              if (ECFAtual <> '') and (PortaECFAtual <> '') then
              if not ImprimeItemECF( ECFAtual,             //Impressora
                                     PortaECFAtual,        //Porta
                                     '',                   //Numitem
                                     '0',                  //Codigo
                                     'Taxa Crediario',     //Descricao
                                     'I',                  //Tributo
                                     'UN',                 //Unid
                                     1,                    //Qtde
                                     VlrTxCrediario.Value, //Valor
                                     0,                    //Percdesc
                                     0,                    //Vlrdesco
                                     2) then               //NumDecQuant}
              begin
                Informa('Problemas ao imprimir o item no ECF !') ;
                exit ;
              end ;
            //EMITIR FECHAMENTO CUPOM FISCAL
            if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') or
               ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
              begin
                if not FecharCupomFiscal(ECFAtual,
                                         PortaECFAtual,
                                         Ecf_CNFV,
                                         StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                         0, //ACRESCIMO
                                         ValorDescontoAcrescimo.Value +
                                         VlrBonusTroca +
                                         VlrRetConfig_SldCad, //DESCONTO
                                         ValorTroco.Value,
                                         SQLParcelasVistaVendaTemp,
                                         SQLParcelasPrazoVendaTemp,
                                         LblNomeCliente.Caption,
                                         EnderecoClienteVenda,
                                         CidadeClienteVenda,
                                         DocumentoClienteVenda,
                                         DM.CodNextCupom) then
                  begin
                    Informa('Houveram problemas ao encerrar este cupom !') ;
                    exit ;
                  end ;
              end ;

            if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
              if not FecharCupomFiscal(ECFAtual,
                                       PortaECFAtual,
                                       Ecf_CNFV,
                                       StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                       ValorDescontoAcrescimo.Value,//ACRESCIMO
                                       0,//DESCONTO
                                       ValorTroco.Value,
                                       SQLParcelasVistaVendaTemp,
                                       SQLParcelasPrazoVendaTemp,
                                       LblNomeCliente.Caption,
                                       EnderecoClienteVenda,
                                       CidadeClienteVenda,
                                       DocumentoClienteVenda,
                                       DM.CodNextCupom) then
                begin
                  Informa('Houveram problemas ao encerrar este cupom !') ;
                  exit ;
                end ;

            //EMITIR CONFISSÃO DE DÍVIDA
            if (TipoPadrao = 'CRD') and (DM.SQLTerminalAtivoTERMCIMPCONFDIVIDA.Value = 'S') then
            begin
              if (ECFAtual <> 'BEMATECH MP-20 FI') then
                TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString) ;

              if (TotNumECF <> '') or (ECFAtual = 'BEMATECH MP-20 FI') then
              begin
                LblInstrucoes.Caption := 'EMITINDO CONFISSÃO DE DÍVIDA...' ;
                LblInstrucoes.Refresh ;

                //ACERTAR VALOR A PRAZO CASO TENHA DIF.ARREDONDAMENTO
                if (ValorEntrada.Value + ValorPrazo) < ValorTotalVenda.Value then
                  ValorPrazo := ValorPrazo + (ValorTotalVenda.Value - (ValorEntrada.Value + ValorPrazo)) ;
                if (ValorEntrada.Value + ValorPrazo) > ValorTotalVenda.Value then
                  ValorPrazo := ValorPrazo - ((ValorEntrada.Value + ValorPrazo)-ValorTotalVenda.Value) ;

                AbrirCNFV(ECFAtual,
                          PortaECFAtual,
                          TotNumECF[1],
                          Ecf_CNFV[1],
                          Ecf_ID,
                          NroCupomFiscal,
                          SQLParcelasPrazoVendaTempNumerarioLookup.Value,
                          ValorPrazo) ;

                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)'   + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM'   + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'   + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'AUTORIZO A EMISSAO DE CARNE DE COBRANCA  DE-'   + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CORRENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorTotalVenda.Value) + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Ass.________________________________________' + Chr(10));
                LinhaTextoLivre(ECFAtual, PortaECFAtual, '    ' + LblNomeCliente.Caption  + Chr(10)) ;

                FecharCNFV(ECFAtual, PortaECFAtual) ;
              end
              else begin
                Informa('O Indentificador de CNFV do Numerário "' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + '" não foi informado, não será possível emitir a confissão de dívida!') ;
              end ;
            end ;

            LblInstrucoes.Caption := 'FINALIZANDO ENCERRANDO CUPOM FISCAL...' ;
            LblInstrucoes.Refresh ;
          end ;
          //FIM FECHAMENTO CUPOM

          GravarItensCupom ;

          GravarItensRetorno ;

          GravarItensDevolucao ;

          GravarMontanteCaixa ;

          GravarNumerarioAVistaCupom ;

          GravarNumerarioAPrazoCupom ;

          GravarCaixaPrazo ;

          GravarCadernoCliente ;

          AtualizaCupomOrigemTroca ;

          if DM.SQLConfigVendaCFVECUSADEBCREDCLI.Value = 'S' then
            begin
              LblInstrucoes.Caption := 'GERANDO IMPRESSÃO DO PEDIDO...' ;
              LblInstrucoes.Refresh ;
              GravarTabelaTempPedidoRetorno(DM.CodNextCupom) ;
            end ;

          //IMPRIMIR PRE-VENDA
          GravarTabelaTempImpPreVendaDeCupom(DM.CodNextCupom, SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, DM.SQLCup, DM.SQLCupomIt) ;

          //IMPRIMIR DADOS VENDA
          if (DM.SQLConfigVendaCFVECINFDADOVENDA.Value = 'S') and
             (DM.SQLTerminalAtivoTERMA60IMPPEDIDO.asString <> '') then
            begin
              Application.CreateForm(TFormTelaImpressaoDadosVenda, FormTelaImpressaoDadosVenda) ;
              FormTelaImpressaoDadosVenda.ImprimeClick(Nil) ;
            end ;

          //**** LANÇAMENTO DO CAIXA REF.TROCO ****
          {if ValorTroco.Value > 0 then
          begin
            GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                 DM.SQLTotalizar,
                                 EmpresaPadrao,//WEMPRICOD
                                 IntToStr(TerminalAtual),//WTERMICOD
                                 FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                 'Null',//WNUMEICOD
                                 'Null',//WOPCXICOD
                                 IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                 DM.CodNextCupom,//WMVCIXA15DOCORIG
                                 ValorTroco.Value,//WMOVICAIXN2VLR
                                 0,//WMOVICAIXN2VLRJURO
                                 0,//WMOVICAIXN2VLRMULTA
                                 0,//WMOVICAIXN2VLRDEC
                                 'Null',//WMOVICAIXA6NUMCUPOM
                                 'C',//WTIPO
                                 'TROCO(-)',
                                 'N',
                                 '');//WMVCXA255HIST
          end ;}

          FinalizacaodeVenda := false ;

          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Commit ;
        end ;

      if (TerminalModo = 'P') and (E_Orcamento)  then
        begin
          if DM.SQLTerminalAtivoTERMCCONFFECHCUPOM.Value <> 'N' then
            if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTE ORÇAMENTO ? * * *') then
              Exit ;

          Application.CreateForm(TFormTelaFechamentoOrcamento, FormTelaFechamentoOrcamento) ;
          FormTelaFechamentoOrcamento.ShowModal ;

          {if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Rollback ;}

          if not FileExists('SemTransacao.Arq') then
            DM.DB.StartTransaction ;

          DeleteFile(DM.DBRel.Directory + 'PedidoCab*.*') ;

          GravarOrcamento ;
          GravarItensOrcamento ;

          if DM.DB.InTransaction then
            DM.DB.Commit ;

          LblInstrucoes.Caption := 'PREPARANDO IMPRESSÃO DO ORÇAMENTO ' + DM.CodNextOrc;
          LblInstrucoes.Refresh ;

          if DM.SQLConfigGeralCFGEA255PATHREPORT.asString = '' then
            Informa('O caminho de impressão não foi informado, este orçamento não será impresso !')
          else
            begin
              WinExec(PChar('PedidoVenda.exe '+ DM.CodNextOrc),SW_SHOW) ;

              while not FileExists(DM.DBRel.Directory + 'PedidoCab.db') do
                begin
                end ;

              //MouseShowCursor(True) ;
              DM.TblPedidoCab.Open ;
              DM.TblPedidoItens.Open ;
              DM.TblPedidoFinan.Open ;
              DM.ReportOrc.Print ;
              {DM.Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.asString + '\Pedido de Venda JSchmidt.rpt';
              DM.Report.Output := toWindow ;
              DM.Report.Execute ;
              DM.Report.Output := toPrinter ;}
              //MouseShowCursor(False) ;
            end ;
        end ;

      if PedidosImportados <> '' then
        begin
          while PedidosImportados <> '' do
            begin
              LblInstrucoes.Caption := 'ATUALIZANDO STATUS PRÉ-VENDA...' ;
              LblInstrucoes.Refresh ;
              TermCod := Copy(PedidosImportados, 1, Pos('-',PedidosImportados)-1) ;
              PrvCod  := Copy(PedidosImportados, Pos('-',PedidosImportados)+1, 6) ;

              Delete(PedidosImportados,1,Pos('-',PedidosImportados)+7) ;

              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('update PREVENDA') ;
              DM.SQLTemplate.SQL.Add('set PRVDCIMPORT = "S"') ;
              DM.SQLTemplate.SQL.Add('where') ;
              DM.SQLTemplate.SQL.Add('TERMICOD = ' + TermCod + ' and ') ;
              DM.SQLTemplate.SQL.Add('PRVDICOD = ' + PrvCod) ;
              DM.SQLTemplate.ExecSQL ;
            end ;
        end ;
      PedidosImportados := '' ;

      //AUTENTICAR ENTRADA DE VENDA A PRAZO
      if (DM.SQLTerminalAtivoTERMCAUTENTRFIMCUP.Value = 'S') and (TipoPadrao = 'CRD') then
        begin
          ValorEntradaAut := 0 ;
          SQLCupomNumerarioAut.Close ;
          SQLCupomNumerarioAut.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + DM.CodNextCupom +
                                                               '" and CPNMCAUTENT is null' ;
          SQLCupomNumerarioAut.Open ;
          if not SQLCupomNumerarioAut.EOF then
            while not SQLCupomNumerarioAut.Eof do
              begin
                ValorEntradaAut := ValorEntradaAut + SQLCupomNumerarioAutCPNMN2VLR.Value ;
                SQLCupomNumerarioAut.Next ;
              end ;

          if (ValorEntradaAut > 0) and (ECFAtual <> '') and (PortaECFAtual <> '') then
            begin
              Autenticacao( ECFAtual, //Impressora
                            PortaECFAtual,//Porta,
                            Ecf_CNFNV,//Identificador
                            Ecf_ID,//Ecf_ID
                            DM.CodNextCupom,//Documento
                            '0',//Parcela
                            'Entrada',
                            ValorEntradaAut,//Valor
                            SQLCupomNumerarioAutNUMEICOD.Value);//NumerarioCod

              SQLCupomNumerarioAut.First ;
              while not SQLCupomNumerarioAut.Eof do
                begin
                  SQLCupomNumerarioAut.Edit ;
                  SQLCupomNumerarioAutCPNMCAUTENT.Value := 'S' ;
                  SQLCupomNumerarioAut.Post ;

                  SQLCupomNumerarioAut.Next ;
                end ;
            end ;
        end ;
      //LIMPAR TABELA TEMPORARIA ITENS
      LblInstrucoes.Caption := 'LIMPANDO ITENS TEMPORÁRIOS...' ;
      LblInstrucoes.Refresh ;
      FormTelaItens.SQLItensVendaTemp.Close ;
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from ITENSVENDATEMP') ;
      DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
      DM.SQLTemplate.ExecSQL ;
      FormTelaItens.SQLItensVendaTemp.Open ;

      FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
      FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
      //FECHAR TELA FECHAMENTO VENDA
      Close ;
    end ;
  end ;
end ;
