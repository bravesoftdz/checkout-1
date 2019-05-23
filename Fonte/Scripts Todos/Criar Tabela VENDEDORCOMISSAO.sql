CREATE TABLE VENDEDORCOMISSAO 
(
  VENDICOD	INTEGER NOT NULL,
  CUPOA13ID	CHAR(13) NOT NULL,
  VDCOICOD	INTEGER NOT NULL,
  VDCON2TOTVENDVISTA	NUMERIC(15, 3),
  VDCON2TOTVENDPRAZO	NUMERIC(15, 3),
  VDCOINROVEND	INTEGER,
  VDCON2VENDMEDIA	NUMERIC(15, 3),
  VDCON3QTDVEND	NUMERIC(15, 3),
  VDCON2VLRCOMISS	NUMERIC(15, 3),
  VDCODEMIS	TIMESTAMP,
  PENDENTE	CHAR(1),
  REGISTRO	TIMESTAMP,
 PRIMARY KEY (VENDICOD, CUPOA13ID, VDCOICOD)
);
