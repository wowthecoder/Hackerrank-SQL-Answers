SELECT CAST(CEILING(
    AVG(CAST(Salary AS float)) - AVG(CAST(REPLACE(Salary, "0", "") AS float))) 
    AS int)
FROM Employees