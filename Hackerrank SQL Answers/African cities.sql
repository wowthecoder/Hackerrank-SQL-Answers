SELECT City.Name FROM City INNER JOIN Country ON City.Countrycode = Country.Code 
WHERE Country.Continent = "Africa"