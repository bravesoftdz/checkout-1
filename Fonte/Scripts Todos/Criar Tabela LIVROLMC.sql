CREATE TABLE LIVROLMC
(
EMPRICOD        INTEGER NOT NULL,
LILMICOD        INTEGER NOT NULL,
LILMIPAGATUAL   INTEGER,
LILMIPAGMAX     INTEGER,
LILMDDTABERT    DATE,
LILMDDTFECHA    DATE,
PENDENTE        CHAR(01),
REGISTRO        DATE,  
PRIMARY KEY(EMPRICOD, LILMICOD));