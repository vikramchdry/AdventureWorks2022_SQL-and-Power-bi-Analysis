SELECT DateKey, 
       FullDateAlternateKey AS [Date], 
	   EnglishDayNameOfWeek AS [Day], 
       EnglishMonthName AS [Month], 
	   CalendarYear AS [Year]
FROM DimDate;