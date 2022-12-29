-- Odev 1
SELECT title, description FROM film;
SELECT * FROM film WHERE length < 60 AND length > 75;
SELECT * FROM rental_rate WHERE rental_rate = 0.99 AND (rental_rate = 12.99 OR rental_rate = 28.99);
SELECT * FROM customer WHERE first_name = 'Mary';
SELECT * FROM film WHERE length < 50 AND (rental_rate <> 2.99 OR rental_rate <> 4.99); -- <> yerine != yazılabilir

-- Odev 2
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;
SELECT * FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed');
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);

-- Odev 3
SELECT * FROM country WHERE country LIKE 'A%a';
SELECT * FROM country WHERE country LIKE '%n' AND length(country) >= 6;
SELECT * FROM film WHERE title LIKE '%T%' AND length(title) >= 4; ORDER BY title;
SELECT * FROM film WHERE title LİKE 'C%' AND title LIKE length(title) >=90 AND rental_rate = 2.99; ORDER BY title;

-- Odev 4
SELECT DISTINCT replacement_cost FROM film ORDER BY replacement_cost;
SELECT COUNT(DISTINCT replacement_cost) FROM film;
SELECT COUNT(*) FROM film WHERE title LIKE 'K%' AND rating IN = 'G';
SELECT COUNT(*) FROM country WHERE length(country) = 5;
SELECT COUNT(*) FROM city WHERE city LIKE '%R' OR city LIKE '%r';

-- Odev 5
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC OFFSET 5 LIMIT 5;
SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;

-- Odev 6
SELECT AVG(rental_rate) FROM film;
SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
SELECT MAX(lenght) FROM film WHERE rental_rate = 0.99;
SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150;

-- Odev 7
