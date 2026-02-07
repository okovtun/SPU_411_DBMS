--SQLQuery2-SELECT Schedule PRODEDURE.sql
USE SPU_411_Import;
GO

ALTER PROCEDURE sp_SelectScheduleFull
AS
BEGIN
	SELECT
			[Группа]		=	group_name,
			[Время]			=	[time],
			[Дата]			=	[date],
			[День недели]	=	FORMAT([date], N'ddd', 'ru-RU'),
			--[День недели] = 	(SELECT LEFT(DATENAME(WEEKDAY, [date]), 3)),
			--https://learn.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings
			--https://learn.microsoft.com/en-us/sql/t-sql/functions/format-transact-sql?view=sql-server-ver17
			--https://database.guide/displaying-abbreviated-and-full-day-names-for-reports-in-sql-server/
			--[День недели]	=	DATENAME(WEEKDAY, [date]),
			[Дисциплина]	=	Disciplines.discipline_name,
			[Преподаватель] =	FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
			[Статус]		=	IIF(spent=1, N'Проведено', N'Запланировано')
	FROM	Schedule
	JOIN	Groups			ON	[group]=group_id
	JOIN	Disciplines		ON	discipline=discipline_id
	JOIN	Teachers		ON	teacher=teacher_id
	ORDER BY [date]
END