SELECT title, description, length, special_features, rating, rental_rate  
FROM `film`   
WHERE special_features NOT LIKE '%Deleted Scenes%'