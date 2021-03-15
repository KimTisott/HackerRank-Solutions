SELECT SUM(city.population)
  FROM city, country
 WHERE city.countrycode = country.code
   AND country.continent = 'Asia'
