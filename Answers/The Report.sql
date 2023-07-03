SELECT CASE 
    WHEN g.Grade < 8 THEN NULL
    ELSE s.Name END,
    g.Grade, s.Marks
FROM Grades AS g INNER JOIN Students as s
ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC