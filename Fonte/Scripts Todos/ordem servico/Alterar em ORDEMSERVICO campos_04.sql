ALTER TABLE ORDEMSERVICO ADD teste NUMERIC(15,3);
commit work;
UPDATE ORDEMSERVICO SET teste = ORSEN3PESOINICIAL;
commit work;
ALTER TABLE ORDEMSERVICO DROP ORSEN3PESOINICIAL;
commit work;
ALTER TABLE ORDEMSERVICO ADD ORSEN3PESOINICIAL NUMERIC(15,3);
commit work;
UPDATE ORDEMSERVICO SET ORSEN3PESOINICIAL = teste;
commit work;
ALTER TABLE ORDEMSERVICO DROP teste;
commit work;




