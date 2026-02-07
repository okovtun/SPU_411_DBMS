SET DATEFIRST 1;
USE SPU_411_Import;

--PRINT(dbo.GetLastDate(N'PV_319'));
--PRINT(dbo.GetNextDay(N'PD_212'));
--PRINT(dbo.GetNextDay(N'PV_319'));
--PRINT(dbo.GetNextDay(N'SPU_411'));

EXEC sp_SelectScheduleFull;
PRINT (dbo.GetNextDate(N'PV_211'))