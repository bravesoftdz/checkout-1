CREATE TABLE TABELAFRETECIDADE 
(
  TBFTICOD                   INTEGER NOT NULL,
  TBFCICOD                   INTEGER NOT NULL,
  CIDAICOD                   INTEGER,
  TBFCCCOLETA                CHAR(1),
  TBFCCENTREGA               CHAR(1),
  TBFCN2COLETAVLR            NUMERIC(15, 2),
  TBFCN2COLETAEXCVLR         NUMERIC(15, 2),
  TBFCN2COLETAPESOMX         NUMERIC(15, 2),
  TBFCN2ENTREGAVLR           NUMERIC(15, 2),
  TBFCN2ENTREGAEXCVLR        NUMERIC(15, 2),
  TBFCN2ENTREGAPESOMX        NUMERIC(15, 2),
  TBFCN2TARIFAMINIMA         NUMERIC(15, 2),
  TBFCN2VALORPESOEXEC        NUMERIC(15, 2),
  TBFCCCALCULOPESO           CHAR(1),
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
  ICMUA2UF                   CHAR(2),
 PRIMARY KEY (TBFTICOD, TBFCICOD)
);
