SET DATEFIRST 1;
USE SPU_411_Import;

--PRINT(dbo.GetLastDate(N'PV_319'));
--PRINT(dbo.GetNextDay(N'PD_212'));
--PRINT(dbo.GetNextDay(N'PV_319'));
--PRINT(dbo.GetNextDay(N'SPU_411'));

--EXEC sp_SelectScheduleFull;
--PRINT (dbo.GetNextDate(N'PV_211'))

--PRINT(dbo.GetNewYear(2017));
--PRINT(dbo.GetSummertimeSadness(2024));
--PRINT(dbo.GetEasterDate(2026));
PRINT(dbo.GetHolidaysStartDate(N'Нов%', 2026));