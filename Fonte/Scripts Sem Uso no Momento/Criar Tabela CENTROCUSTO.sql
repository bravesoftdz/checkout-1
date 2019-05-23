CREATE TABLE CENTROCUSTO 
(
  CECUA15COD                 CHAR(15) NOT NULL,
  CECUICODREDUZ              INTEGER,
  CECUINIVEL                 INTEGER,
  CECUA15CODPAI              CHAR(15),
  CECUA30CODEDIT             CHAR(30),
  CECUA60DESCR               CHAR(60),
  REGISTRO                   TIMESTAMP,
  PENDENTE                   CHAR(1),
 PRIMARY KEY (CECUA15COD)
);
