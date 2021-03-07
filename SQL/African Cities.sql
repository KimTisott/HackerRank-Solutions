SELECT city.name
  FROM city, country
 WHERE city.countrycode = country.code
   AND country.continent = 'Africa'
;
