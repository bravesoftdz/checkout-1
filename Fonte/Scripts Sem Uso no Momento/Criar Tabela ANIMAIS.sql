CREATE TABLE ANIMAIS (
ANIICOD         INTEGER NOT NULL,
CLIEA13ID       VARCHAR(13) NOT NULL,
ANIA40NOME      VARCHAR(40) NOT NULL,
ANIIESPECIE     INTEGER NOT null, 
ANIIRACA        INTEGER NOT NULL,
ANICSEXO        CHAR(1),
ANIDNASC        date, 
ANIA40PELAGEM   VARCHAR(40),
ANIA40IDENTIF   VARCHAR(40),
ANIBIMAGEM      BLOB SUB_TYPE 0 SEGMENT SIZE 80,
PRIMARY KEY (ANIICOD));




