inherited FormTelaImportacao: TFormTelaImportacao
  Left = 509
  Top = 112
  Width = 818
  Height = 478
  Caption = 'Importa'#231#227'o do LOG'
  OldCreateOrder = True
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 802
    Height = 440
    inherited PanelCentral: TPanel
      Width = 798
      Height = 356
      inherited PanelBarra: TPanel
        Width = 131
        Height = 356
      end
      object PanelImp: TPanel
        Left = 144
        Top = 16
        Width = 577
        Height = 345
        ParentColor = True
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 48
          Width = 38
          Height = 13
          Caption = 'Tabela'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 9
          Width = 78
          Height = 13
          Caption = 'Hora de In'#237'cio'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 113
          Top = 9
          Width = 97
          Height = 13
          Caption = 'Tempo Decorrido'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 221
          Top = 9
          Width = 94
          Height = 13
          Caption = 'Hora de T'#233'rmino'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 7
          Top = 96
          Width = 307
          Height = 145
        end
        object Label8: TLabel
          Left = 15
          Top = 100
          Width = 65
          Height = 13
          Caption = 'Contadores'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 35
          Top = 216
          Width = 103
          Height = 13
          Caption = 'Total de Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 35
          Top = 154
          Width = 86
          Height = 13
          Caption = 'Tabelas do LOG'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnIniciar: TSpeedButton
          Tag = 3
          Left = 108
          Top = 298
          Width = 101
          Height = 33
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Importar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000000000
            00CF3000CF3000CF3000CF3000CF3000CF3000CF3000000000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0097CF0000000097CF0097FF006790000000006700006700003000FF30
            2FFF302FFF302FFF302FFF302FFF302FCF3000FF302FCF300000300000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0097CF00C8FF0000000097FF00679000000000670000972F00972F00972F0030
            00FF302FFF302FFF672FFF672FFF302FFF302FFF302F00300000672F003000CF
            3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0097CF00C8FF0000000067900000000067002FC82F00972F2FC82F00972F0097
            2F003000FF302FFF672FFF302FFF672FFF302FFF302F00300060C82F003000CF
            3000CF3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0097CF00C8FF0097CF00000000670060FF2F2FC82F2FC82F2FC82F00972F2FC8
            2F00972F003000FF672FFF672FFF672FFF672FFF672FFF672FFF302FFF302F00
            300000672F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0097CF00C8FF0097FF0097CF0000002FC82F60FF2F2FC82F2FC82F2FC82F0097
            2F00972F003000FF672FFF672FFF672FFF672FFF672FFF302FFF302F00300000
            7F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0097CF00C8FF0097FF0097CF0000002FC82F2FC82F60FF2F2FC82F2FC8
            2F00972F00972F003000FF672FFF672FFF672FFF672FFF302F00300000972F00
            7F00007F00007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0097CFCFFFFF00C8FF0097FF0097CF00000060FF2F2FC82F2FC82F2FC8
            2F00972F00972F003000FF672F00000000000000000000000000000000000000
            0000000000007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0097CF90FFFF00C8FF0097FF0097CF0000002FC82F00972F7F7F
            00000000FF9700FF672FFF672F0097CF00C8FF00C8FF0097FF0097FF0097FF00
            000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000067000000
            00000000FF9700FF9700FF97000097CF90FFFF00C8FF00C8FF0097FF00000000
            7F00007F0000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000097
            FF000000FF9700FF9700FF97000097CF90FFFF90FFFF00C8FF0097FF0097CF00
            000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEFC8A02FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097FF0097
            FF000000FF9700FFC82FFF97000097CF90FFFF90FFFF90FFFF00C8FF0097FF00
            97CF00000000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEFC8A0FFFFCF2FC82F0097CFCFFFFF90FFFF00C8FF00C8FF0097
            FF000000FF9700FFC82FFFC82F0097CF90FFFF0097CFCFFFFF90FFFF00C8FF00
            97FF0097CF00000000972F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFFCF2F676090FFFF90FFFF00C8FF00C8
            FF000000FFC82FFF9700FF97000097CF0097CF00672F0097CFCFFFFF90FFFF00
            C8FF0097FF0097CF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEFC8A0FFFFCFFFFFCF2F676090FFFF90FFFF90FFFF90FFFF00C8
            FF000000FFC82FFFC82FFFC82F0097CFFF9700FF9700FF672F0097CFCFFFFF90
            FFFF00C8FF0097FF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFC8A00097CF0097CF0097CF0097CF0097CF0097CF0097
            CF000000FFC82FFFC82FFFFF2F007F00FFC82F007F0000672F0030000097CFCF
            FFFF90FFFF00C8FF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFF2F00672F2FC82F00972F0067
            2FFFC82FFFC82FFFC82FFF9700FFC82FFF9700FFC82F2FC82F00672F00300000
            97CFCFFFFF90FFFF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFEFC8A0FFFFFF00672F2FC82F2FC82F00972F0097
            2FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFF9700007F002FC82F007F00FF
            672F0097CFCFFFFF90FFFF0097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00672F60FF2F60FF2F2FC82F00972F0097
            2F00672FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFFC82F007F00FF672FFF
            672FFF672F0097CFCFFFFF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FCFFFCFCFFFCF60FF2F2FC82F2FC8
            2F00972F00972F00672FFFC82F00672F00672FFF672FFF9700FF9700FF9700FF
            672F2F67600067900097CF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FFFFFFFCFFFCF60FF2F60FF
            2F2FC82F00972F00972F00672F00972F00972F00672FFF672FFF9700FF9700FF
            672F00C8FF0097FF00679000C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC82FCFFFCF60FF
            2F60FF2F2FC82F2FC82F2FC82F00972F00972F00972F00672FFF672FFF672F00
            C8FF0097FF0097FF006790006790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC8
            2FCFFFCFFFFFFFCFFFCF60FF2F60FF2F2FC82F2FC82F00972F00672FFFFFFF00
            97CF0097CF0097CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF2FC82F2FC82F2FC82F2FC82F2FC82F2FC82F2FC82FFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = BtnIniciarClick
        end
        object BtnTodos: TSpeedButton
          Tag = 3
          Left = 330
          Top = 298
          Width = 108
          Height = 33
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Marcar Todos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            46050000424D460500000000000036040000280000000D000000110000000100
            08000000000010010000CE0E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
            C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
            7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
            CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
            00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
            CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
            1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
            EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
            4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
            DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
            2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
            EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
            2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
            F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
            8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
            E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
            5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
            E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
            F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
            BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
            FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
            FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
            DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
            DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
            D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
            75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
            5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
            EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
            0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
            0303030303030300000003030303030303030303030303000000030303030301
            0103030303030300000003030303010001010303030303000000030303010012
            0001010303030300000003030100121204000103030303000000030100121212
            1200010103030300000001001212120412120001010303000000010412120401
            0412040001030300000003010404010301121200010103000000030301010303
            0301121200010100000003030303030303030112040003000000030303030303
            0303030112010100000003030303030303030303011201000000030303030303
            0303030303010400000003030303030303030303030303000000030303030303
            03030303030303000000}
          ParentFont = False
          OnClick = BtnTodosClick
        end
        object BtnNenhum: TSpeedButton
          Tag = 3
          Left = 443
          Top = 298
          Width = 121
          Height = 33
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = '&Desmarcar Todos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            02050000424D020500000000000036040000280000000C000000110000000100
            080000000000CC000000CE0E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
            C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
            7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
            CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
            00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
            CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
            1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
            EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
            4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
            DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
            2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
            EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
            2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
            F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
            8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
            E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
            5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
            E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
            F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
            BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
            FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
            FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
            DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
            DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
            D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
            75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
            5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
            EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
            0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
            0303030303030303030303030303030303030303030303030303030303030301
            0101030303030301010100000001030303030000000102021000010303001002
            0003030202100001001002000303030302021000100200030303030303000210
            0200030303030303030010021000010303030303001002150210000103030300
            1002150315021000010300100215030303150210000115151503030303031515
            1503030303030303030303030303030303030303030303030303030303030303
            030303030303}
          ParentFont = False
          OnClick = BtnNenhumClick
        end
        object Label2: TLabel
          Left = 35
          Top = 122
          Width = 22
          Height = 13
          Caption = 'LOG'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 35
          Top = 186
          Width = 93
          Height = 13
          Caption = 'Total de Tabelas'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ButtonReceiveFile: TSpeedButton
          Tag = 3
          Left = 328
          Top = 4
          Width = 236
          Height = 40
          Cursor = crHandPoint
          Hint = 'Fechar Tela'
          Caption = 'D&ownload de Arquivos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF1F18
            1F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F
            181F1F181F1F181F1F181F1F181F1F181FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBF0030600030600030600030601F181FBFBFBFBFBFBF909090D0E0
            E0BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF8FA0AF8FA0AF8FA0AF8FA0AF8FA0AF8F
            A0AF8FA0AF9090909090909090906060601F181FBFBFBFBFBFBF1F181F1F181F
            1F181F1F181F0090FF90C8FF0090FF0030601F181F1F181F1F181F909090D0E0
            E0CFC8CF2F902F2F6000CFC8CFCFC8CFCFC8CFCFC8CFBFB8BFBFB8BF8FA0AFF0
            F0F0F0F0F0D0E0E09090909090906060606060601F181FBFBFBF606060606060
            6060606060600090FF00F8FF90C8FF0030601F181F5F585F5F585F909090F0F0
            F0CFC8CF60F82F2F902FCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFBFB8BFBFB8BF1F
            181F1F181F1F181F9090909090906060606060606060601F181F909090909090
            9090909090900090FF0090FF0090FF0030601F181F909090909090909090F0F0
            F0CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF8F
            A0AF8FA0AF8FA0AF9090909090906060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090905F585F1F181FBFBFBFBFBFBF909090F0F0
            F0F0F0F0F0F0F0F0F0F0D0E0E0D0E0E0D0E0E0D0E0E0E0E8E0D0E0E0D0E0E0D0
            E0E0D0E0E0D0E0E0D0E0E0D0E0E06060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090905F585F1F181FBFBFBFBFBFBF6060606060
            6060606060606060606060606060606060606060606060606060606060606060
            60606060606060606060609090906060606060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090906060601F181FBFBFBFBFBFBFBFBFBF1F18
            1F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F
            181F1F181F1F181F1F181F6060609090906060606060601F181FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9090906060601F181FBFBFBFBFBFBF909090D0E0
            E0D0E0E0D0E0E0D0E0E0CFC8CFCFC8CFCFC8CFBFB8BFBFB8BFBFB8BFBFB8BF8F
            A0AF8FA0AF8FA0AF8FA0AF1F181F6060609090906060601F181FBFBFBF1F181F
            1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F909090F0F0
            F0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0EFE8EFE0E8E0D0E0E0D0E0E0E0
            E8E0D0E0E0D0E0E08FA0AF9090901F181F6060609090901F201F909090D0E0E0
            BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF8FA0AF8FA0AF909090909090909090F0F0
            F0D0E0E060300060602F60602F60602F60602F60602F60602F60602F60602F60
            602F60602FD0E0E08FA0AF9090908080801F181F606060BFBFBF909090F0F0F0
            CFC8CF2F902F2F6000BFB8BFBFB8BFBFB8BFBFB8BF8FA0AF909090909090F0F0
            F0E0E8E06030007F780090902F7F780090902F7F78007F780060602F7F780060
            602F60602FD0E0E08FA0AF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            CFC8CF60F82F2F902FCFC8CFCFC8CFBFB8BFBFB8BFBFB8BFBFB8BF909090F0F0
            F0E0E8E060300090902F7F780090902F7F780090902F7F78007F780060602F7F
            780060602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF8FA0AF909090F0F0
            F0D0E0E06030007F780090902F90902F90902F7F780090902F7F78007F780060
            602F60602FE0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E0E8E0E0E8E0E0E8E0D0E0E0909090EFF8
            FFE0E8E060300090902F90902FCFC82F90902F90902F7F780090902F7F78007F
            780060602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF606060606060
            606060606060606060606060606060606060606060606060606060909090F0F0
            F0D0E0E060300090902FCFC82FFFF800CFC82F90902F90902F7F78007F780060
            602F60602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFFFF8FF1F181F
            1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F909090F0F0
            F0D0E0E060300090902F90902FCFC82F90902F90902F7F780090902F7F78007F
            780060602FE0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090D0E0E0
            D0E0E0D0E0E0D0E0E0CFC8CFCFC8CFCFC8CFBFB8BFBFB8BFBFB8BF909090F0F0
            F0D0E0E06030007F780090902F90902F90902F7F780090902F7F78007F780060
            602F60602FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0909090F0F0
            F0D0E0E060300060300060300060300060300060300060300060300060300060
            3000603000D0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E060300090002F90002F90002F90002F90002F90002F90002F909090F0F0
            F0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0
            E8E0D0E0E0E0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF302FCF302FCF302FCF302FCF302FCF302F909090F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0CFC8CF9090908080801F181FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF302FCF302FCF302FCF302FCF302FCF302FCF302F9090
            90BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBF
            B8BFBFB8BFBFB8BFBFB8BFBFB8BF8080801F201FBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF6000CF6000CF6000CF302FCF302FCF302FCF302FCF30
            2F90909090909090909090909090909090909090909090909090909090909090
            9090909090909090909090909090909090BFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF6000FF6000FF9060FF6000CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF6000FF9060F0F0F0FF9060CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            E0E8E0603000CF6000FF6000FF9060FF6000CF6000CF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E0603000CF302FCF6000CF6000CF6000CF302FCF302FCF302FCF302FCF30
            2F90002FD0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            D0E0E06030006030006030006030006030006030006030006030006030006030
            00603000D0E0E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            E0E8E0E0E8E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8E0D0E0E0E0E8
            E0D0E0E0E0E8E0BFB8BF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0CFC8CF9090908080801F181FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909090
            BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
            BFBFB8BFBFB8BFBFB8BFBFB8BF8080801F201FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            9090909090909090909090909090909090909090909090909090909090909090
            90909090909090909090909090909090BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
          ParentFont = False
          OnClick = ButtonReceiveFileClick
        end
        object EditTabela: TEdit
          Left = 7
          Top = 62
          Width = 312
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditHoraInicio: TEdit
          Left = 7
          Top = 23
          Width = 100
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditTempoDecorrido: TEdit
          Left = 111
          Top = 23
          Width = 102
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditHoraTermino: TEdit
          Left = 218
          Top = 23
          Width = 100
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditContTotRegistros: TEdit
          Left = 164
          Top = 210
          Width = 137
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditContTabela: TEdit
          Left = 164
          Top = 147
          Width = 137
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object Panel4: TPanel
          Left = 6
          Top = 246
          Width = 310
          Height = 49
          BevelOuter = bvNone
          Color = 16249066
          TabOrder = 6
          object LabelInfo: TLabel
            Left = 0
            Top = 6
            Width = 309
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = 16249066
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object ProgressBarTabelas: TGauge
            Left = 2
            Top = 25
            Width = 307
            Height = 22
            Progress = 0
          end
        end
        object ListaArquivos: TRxCheckListBox
          Left = 328
          Top = 48
          Width = 237
          Height = 240
          GraySelection = True
          ItemHeight = 13
          PopupMenu = PopupMenuLista
          TabOrder = 7
          InternalVersion = 202
        end
        object ListaLOG: TFileListBox
          Left = 448
          Top = 53
          Width = 112
          Height = 97
          ExtendedSelect = False
          FileType = [ftHidden, ftArchive, ftNormal]
          ItemHeight = 13
          Mask = '*.LOG'
          TabOrder = 8
          Visible = False
        end
        object EditContLOG: TEdit
          Left = 164
          Top = 115
          Width = 137
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditContTabGeral: TEdit
          Left = 164
          Top = 179
          Width = 137
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 798
      inherited PanelCabecalho: TPanel
        Width = 798
        inherited PanelNavigator: TPanel
          Width = 798
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 798
          end
        end
      end
    end
  end
  object TblImporta: TTable
    AutoCalcFields = False
    Left = 38
    Top = 123
  end
  object Tabelas: TDatabaseItems
    DatabaseName = 'DB'
    Left = 10
    Top = 123
    object TabelasNAME: TStringField
      FieldName = 'NAME'
      ReadOnly = True
      Size = 260
    end
  end
  object Campos: TTableItems
    DatabaseName = 'DB'
    TableName = 'CONTASRECEBER'
    Left = 10
    Top = 151
    object CamposNAME: TStringField
      FieldName = 'NAME'
      ReadOnly = True
      Size = 31
    end
    object CamposVALCHECKS: TIntegerField
      FieldName = 'VALCHECKS'
      ReadOnly = True
    end
  end
  object SQLImporta: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    %MTabela'
      'Where '
      '    (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MTabela'
        ParamType = ptInput
        Value = 'CLIENTE'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 38
    Top = 151
  end
  object SQLExclusao: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Delete From '
      '    %MTabela'
      'Where '
      '    (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MTabela'
        ParamType = ptInput
        Value = 'CLIENTE'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 38
    Top = 179
  end
  object PopupMenuLista: TPopupMenu
    Left = 480
    Top = 144
    object DescompactaresteLOG1: TMenuItem
      Caption = '&Descompactar este LOG'
      OnClick = DescompactaresteLOG1Click
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 94
    Top = 179
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
  end
  object BackupFile: TBackupFile
    Version = '1.30'
    BackupMode = bmAll
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 10
    Top = 179
  end
  object SQLProdutoSaldo: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      'PSLDN3QTDE,'
      'EMPRICOD,'
      'PRODICOD'
      'FROM'
      'PRODUTOSALDO'
      'WHERE'
      'EMPRICOD = :EMPRESA'
      'AND'
      'PRODICOD = :PRODUTO')
    Macros = <>
    Left = 66
    Top = 207
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object SQLProdutoSaldoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
  end
  object SQLMovimentoEstoque: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'EMPRICOD,'
      'MVESDMOV,'
      'MVESICOD,'
      'MVESCESTOQUEOK'
      'FROM'
      'MOVIMENTOESTOQUE'
      'WHERE'
      'EMPRICOD = :EMPRESA'
      'AND'
      '%DataMov'
      'AND'
      'MVESICOD = :CODIGO'
      'AND'
      'MVESCESTOQUEOK <> "S"')
    UpdateObject = UpdateSQLMovimento
    Macros = <
      item
        DataType = ftString
        Name = 'DataMov'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 66
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object SQLMovimentoEstoqueEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTOESTOQUE.EMPRICOD'
    end
    object SQLMovimentoEstoqueMVESDMOV: TDateTimeField
      FieldName = 'MVESDMOV'
      Origin = 'DB.MOVIMENTOESTOQUE.MVESDMOV'
    end
    object SQLMovimentoEstoqueMVESICOD: TIntegerField
      FieldName = 'MVESICOD'
      Origin = 'DB.MOVIMENTOESTOQUE.MVESICOD'
    end
    object SQLMovimentoEstoqueMVESCESTOQUEOK: TStringField
      FieldName = 'MVESCESTOQUEOK'
      Origin = 'DB.MOVIMENTOESTOQUE.MVESCESTOQUEOK'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQLMovimento: TUpdateSQL
    ModifySQL.Strings = (
      'update MOVIMENTOESTOQUE'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  MVESDMOV = :MVESDMOV,'
      '  MVESICOD = :MVESICOD,'
      '  MVESCESTOQUEOK = :MVESCESTOQUEOK'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  MVESDMOV = :OLD_MVESDMOV and'
      '  MVESICOD = :OLD_MVESICOD')
    InsertSQL.Strings = (
      'insert into MOVIMENTOESTOQUE'
      '  (EMPRICOD, MVESDMOV, MVESICOD, MVESCESTOQUEOK)'
      'values'
      '  (:EMPRICOD, :MVESDMOV, :MVESICOD, :MVESCESTOQUEOK)')
    DeleteSQL.Strings = (
      'delete from MOVIMENTOESTOQUE'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  MVESDMOV = :OLD_MVESDMOV and'
      '  MVESICOD = :OLD_MVESICOD')
    Left = 94
    Top = 235
  end
  object SQLExclusaoFilter: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM'
      '%MTabela'
      'Where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MTabela'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 66
    Top = 179
  end
  object SQLProdutoSaldoNovo: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PRODUTOSALDO '
      'Where PRODICOD is NULL and EMPRICOD is NULL')
    Macros = <>
    Left = 91
    Top = 282
    object SQLProdutoSaldoNovoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoNovoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoNovoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoNovoPSLDN3QTDMIN: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoNovoPSLDN3QTDMAX: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoNovoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoNovoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object SQLEmpresaSaldoNovo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From EMPRESA')
    Macros = <>
    Left = 62
    Top = 282
    object SQLEmpresaSaldoNovoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaSaldoNovoEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
end
