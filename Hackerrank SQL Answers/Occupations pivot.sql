SELECT  [Doctor], [Professor], [Singer], [Actor] FROM(
    Select Name, 
    Occupation,
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM Occupations) Tab1
PIVOT(
MIN(Name) FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])) AS PivotTable;