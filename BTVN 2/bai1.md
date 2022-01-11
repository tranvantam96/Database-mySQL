SELECT title, description, length, special_features, rating, rental_rate  
FROM `film`   
WHERE rating = 'PG'  
AND special_features ='Deleted Scenes'  
AND rental_rate < 2.99