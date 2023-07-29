DECLARE @a AS float, @b AS float, @c AS float, @d AS float; 
SET @a = (SELECT MIN(Lat_N) FROM Station);
SET @b = (SELECT MIN(Long_W) FROM Station);
SET @c = (SELECT MAX(Lat_N) FROM Station);
SET @d = (SELECT MAX(Long_W) FROM Station);
SELECT CAST(
    ROUND(SQRT(SQUARE(@a - @c) + SQUARE(@b - @d)), 4)
AS DECIMAL(18,4))