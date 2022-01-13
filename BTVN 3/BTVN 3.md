*Bài 1 :*  
SELECT film.title , actor.first_name , actor.last_name  
FROM film  
INNER JOIN film_actor ON film.film_id = film_actor.film_id   
INNER JOIN actor ON film_actor.actor_id = actor.actor_id   
WHERE title = 'ACADEMY DINOSAUR'  

*Bài 2 :*  
SELECT film.film_id , film.title , film.description , film.release_year , film.rating, COUNT(actor.actor_id)   
FROM film  
INNER JOIN film_actor ON film.film_id = film_actor.film_id   
INNER JOIN actor ON film_actor.actor_id = actor.actor_id  
WHERE rating = 'G'  
GROUP BY film.film_id   

*Bài 3 :*  
SELECT AVG(film.rental_rate)  
FROM film  
INNER JOIN film_actor ON film.film_id = film_actor.film_id   
INNER JOIN actor ON film_actor.actor_id = actor.actor_id  
WHERE actor.first_name = 'CHRISTIAN' AND actor.last_name = 'GABLE' 
