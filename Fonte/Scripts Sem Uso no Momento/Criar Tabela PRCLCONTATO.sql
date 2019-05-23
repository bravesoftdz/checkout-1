CREATE TABLE PRCLCONTATO 
(
  PRCLA13ID                  CHAR(13) NOT NULL,
  PCCOICOD                   INTEGER NOT NULL,
  PCCOA60NOME                CHAR(60),
  PCCOA15FONE1               CHAR(15),
  PCCOA15FONE2               CHAR(15),
  PCCOA15FAX                 CHAR(15),
  PCCOA60EMAIL               CHAR(60),
  PCCOA30FUNCAO              CHAR(30),
  PCCOA30SETOR               CHAR(30),
  PCCOA254OBS                VARCHAR(254),
  PENDENTE                   CHAR(1),
  REGISTRO                   TIMESTAMP,
  EMPRICOD                   INTEGER,
 PRIMARY KEY (PRCLA13ID, PCCOICOD)
);
