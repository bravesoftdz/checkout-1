alter table notafiscal add noficfinalidade char(1) not null;
update notafiscal set noficfinalidade = '1' where noficfinalidade is null;


