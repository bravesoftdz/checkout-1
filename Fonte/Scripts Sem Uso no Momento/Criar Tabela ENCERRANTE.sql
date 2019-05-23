CREATE TABLE ENCERRANTE (
       ENCEA13ID            CHAR(13) NOT NULL,
       EMPRICOD             INTEGER,
       ENCEICOD             INTEGER,
       DATA                 DATE,
       TERMICOD             INTEGER,
       USUAICOD             INTEGER,
       BOMBICOD             INTEGER,
       PRODICOD 	    INTEGER,	
       INICIO		    NUMERIC(15,3),
       FINAL		    NUMERIC(15,3),
       AFERICAO             NUMERIC(15,3),
       QTDEVENDA            NUMERIC(15,3),
       VLRTOTVENDAS         NUMERIC(15,3), 
       CONCLUIDO            CHAR(01),
       REGISTRO             DATE,
       PENDENTE             CHAR(1),
       PRIMARY KEY (ENCEA13ID)
);

CREATE UNIQUE INDEX XPKENCERRANTE ON ENCERRANTE
(
       ENCEA13ID
);

CREATE INDEX XPENDENTE_AGFO ON AGENDATELEF
(
       PENDENTE
);

CREATE INDEX XREGISTRO_AGFO ON AGENDATELEF
(
       REGISTRO
);