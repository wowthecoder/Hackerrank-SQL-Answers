SELECT CAST(ROUND(Long_W, 4) AS DECIMAL(18,4)) FROM Station
WHERE Lat_N = (SELECT MAX(Lat_N) FROM Station WHERE Lat_N < 137.2345)