--SQLQuery0-CHECK PROCEDURES.sql
SET DATEFIRST 1;
USE SPU_411_Import;
--SET LANGUAGE N'Russian';

--DELETE FROM Schedule WHERE [group]=411;
--EXEC sp_InsertScheduleSemistacionar N'SPU_411', N'Объект%C++', N'Ковтун';
--EXEC sp_SelectScheduleFull;
--EXEC sp_SelectSchedule N'SPU_411', N'Процедурное%C++';

--DELETE FROM DaysOff		WHERE	[date]	BETWEEN	N'2026-01-01' AND N'2026-12-31'
--EXEC sp_AddAllHolidaysFor 2026;
SELECT
	[date],holiday_name
FROM	DaysOff JOIN Holidays ON (holiday=holiday_id)
WHERE	[date]	BETWEEN	N'2025-12-20' AND N'2026-12-31';