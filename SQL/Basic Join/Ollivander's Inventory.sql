SELECT w.id, wp.age, w.coins_needed, w.power
  FROM wands AS w
       JOIN wands_property AS wp
       ON w.code = wp.code AND wp.is_evil = 0
 WHERE w.coins_needed = (SELECT MIN(coins_needed)
                           FROM wands AS w1
                                JOIN wands_property AS wp1
                                ON w1.code = wp1.code
                          WHERE w1.power = w.power AND wp1.age = wp.age)
 ORDER BY w.power DESC, wp.age DESC
