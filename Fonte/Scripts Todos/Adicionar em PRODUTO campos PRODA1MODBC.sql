ALTER TABLE PRODUTO ADD PRODA1MODBC CHAR(1);
UPDATE PRODUTO SET PRODA1MODBC = '0' WHERE PRODA1MODBC IS NULL;