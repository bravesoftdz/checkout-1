CREATE TABLE TIPORETORNO 
(
  TPRTICOD	 INTEGER NOT NULL,
  TPRTA60DESCR	 CHAR(60),
  TPCTICOD	 INTEGER,
  TPRTA254OBSPADRAO	 CHAR(254),
  PENDENTE	 CHAR(1),
  REGISTRO	 TIMESTAMP,
 PRIMARY KEY (TPRTICOD)
);

/*  Index definitions for TIPORETORNO */

CREATE INDEX XPENDENTE_TPRT ON TIPORETORNO(PENDENTE);
CREATE INDEX XREGISTRO_TPRT ON TIPORETORNO(REGISTRO);