-- Odev 1
SELECT title, description FROM film;
SELECT * FROM film WHERE length < 60 AND length > 75;
SELECT * FROM rental_rate WHERE rental_rate = 0.99 AND (rental_rate = 12.99 OR rental_rate = 28.99);
SELECT * FROM customer WHERE first_name = 'Mary';
SELECT * FROM film WHERE length < 50 AND (rental_rate <> 2.99 OR rental_rate <> 4.99); -- <> yerine != yazılabilir
