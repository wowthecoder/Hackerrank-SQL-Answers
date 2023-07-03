SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM CITY 
INNER JOIN Country ON City.Countrycode = Country.Code 
GROUP BY Country.Continent