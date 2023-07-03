SELECT CASE
    WHEN (A = B AND B = C) THEN "Equilateral"
    WHEN (A + B <= C OR A + C <= B OR B + C <= A) then "Not A Triangle"
    WHEN (A = B OR B = C OR A = C) then "Isosceles"
    ELSE "Scalene"
END
FROM Triangles;