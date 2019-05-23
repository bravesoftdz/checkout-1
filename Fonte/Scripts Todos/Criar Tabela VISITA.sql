create table VISITAS (
VISIICOD integer not null,
CLIEA13ID char(13),
VISIDDATAHORAINI timestamp,
VISIDDATAHORAFIM timestamp,
VISICSTATUS char(01),
MTNFICOD integer,
VISIA100COMPLMOTIVO char(100),
ROTAICOD integer,
VENDICOD integer,
REGISTRO timestamp,
PENDENTE char(1),
primary key (VISIICOD)
)