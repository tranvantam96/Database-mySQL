SELECT title, description, length, special_features, rating , rental_rate   
FROM `film`   
WHERE rental_rate > (SELECT AVG(rental_rate)   
                     FROM film  
                     WHERE rating ='G')