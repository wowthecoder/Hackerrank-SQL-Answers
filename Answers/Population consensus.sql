SELECT SUM(City.population) FROM City INNER JOIN Country ON City.Countrycode = Country.Code 
WHERE Country.Continent = "Asia"