CREATE TABLE PRODUTOBARRASPDVs 
(
  TERMICOD	              INTEGER NOT NULL,
  PRODICOD                    INTEGER NOT NULL,
  PRBAA15BARRAS               CHAR(15) NOT NULL,
  PRIMARY KEY (TERMICOD, PRODICOD,PRBAA15BARRAS)
);

