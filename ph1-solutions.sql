/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...


1. Which actors have the first name ‘Scarlett’
select * from actor where first_name = "Scarlett";

2. Which actors have the last name ‘Johansson’
select * from actor where last_name = "Johansson";

3. How many distinct actors last names are there?
select count(distinct(last_name)) from actor; To see the amount of last names
select distinct(last_name) from actor; To see all the names

4. Which last names are not repeated?
select last_name from actor group by last_name having count(last_name) = 1;

5. Which last names appear more than once?
select last_name from actor group by last_name having count(last_name) > 1;

6. Which actor has appeared in the most films?
select actor_id, count(actor_id) from film_actor group by actor_id order by count(actor_id) desc limit 1;

7. Is ‘Academy Dinosaur’ available for rent from Store 1?
select inventory.film_id, inventory.store_id, film.title from inventory inner join film on inventory.film_id=film.film_id where title="Academy Dinosaur";

8. Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today .
insert into rental (rental_date, inventory_id, customer_id, staff_id) values (now(), 1, 1, 1)

9. When is ‘Academy Dinosaur’ due?
select * from film where film_id = 1;
rental_duration says 6 days

10. What is that average running time of all the films in the sakila DB?
select avg(length) as Average_Length from film;

11. What is the average running time of films by category?

12. Why does this query return the empty set?
Because of the column last_updated in both tables. None of them have a match so it shows up as an empty set.
