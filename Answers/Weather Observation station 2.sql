SELECT CAST(ROUND(SUM(Lat_N), 2) AS NUMERIC(18,2)), 
    CAST(ROUND(SUM(Long_W), 2) AS NUMERIC(18,2))
FROM Station