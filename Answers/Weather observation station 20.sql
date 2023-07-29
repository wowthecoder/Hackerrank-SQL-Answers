DECLARE @median AS float;
SET @median = (
    (SELECT MAX(Lat_N) FROM
    (SELECT TOP 50 PERCENT Lat_N FROM Station ORDER BY Lat_N ASC) AS BottomHalf)
    +
    (SELECT MIN(Lat_N) FROM
    (SELECT TOP 50 PERCENT Lat_N FROM Station ORDER BY Lat_N DESC) AS TopHalf)
) / 2;
SELECT CAST(ROUND(@median, 4) AS DECIMAL(18,4))