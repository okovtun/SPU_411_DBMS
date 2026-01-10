--SQLQuery0-DROP DATABASE.sql
--https://stackoverflow.com/questions/7469130/cannot-drop-database-because-it-is-currently-in-use
ALTER DATABASE SPU_411_DDL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE SPU_411_DDL;