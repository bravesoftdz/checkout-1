CREATE TABLE OPERACAOESTOQUECFOP (
OPESICOD        INTEGER NOT NULL,
CSTICMS         INTEGER NOT NULL,
ORIGEMMERC      INTEGER NOT NULL,
CFOPVENDANOUF   VARCHAR(4) NOT NULL,
CFOPVENDAFORAUF VARCHAR(4) NOT NULL,
PRIMARY KEY(OPESICOD, CSTICMS, ORIGEMMERC)
);

