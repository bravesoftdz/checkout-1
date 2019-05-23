Create table OPERACAOESTOQUECONVERSOR (
    OPESICOD                    INTEGER NOT NULL,
    CFOP                        VARCHAR(5) NOT NULL,
    CFOPCONVERTE                VARCHAR(5) NOT null, 
    PRIMARY key (OPESICOD, CFOP)
    );

