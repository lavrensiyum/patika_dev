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
SELECT rating FROM film GROUP BY rating;
SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50;
SELECT store_id, COUNT(*) FROM customer GROUP BY store_id
SELECT country_id, COUNT(*) AS city_count FROM city GROUP BY country_id ORDER BY city_count DESC LIMIT 1;

-- Odev 8

    --1
    CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
    );

    --2
    insert into employee (id, name, birthday, email) values (1, 'Annalise', 'Benediktsson', 'abenediktsson0@google.com');
    insert into employee (id, name, birthday, email) values (2, 'Wain', 'Eyes', 'weyes1@ameblo.jp');
    insert into employee (id, name, birthday, email) values (3, 'Valentine', 'Sunderland', 'vsunderland2@4shared.com');
    insert into employee (id, name, birthday, email) values (4, 'Dorian', 'Mainson', 'dmainson3@nps.gov');
    insert into employee (id, name, birthday, email) values (5, 'Tyler', 'Frame', 'tframe4@trellian.com');
    insert into employee (id, name, birthday, email) values (6, 'Eduino', 'Nimmo', 'enimmo5@stanford.edu');
    insert into employee (id, name, birthday, email) values (7, 'Turner', 'Shovlar', 'tshovlar6@weather.com');
    insert into employee (id, name, birthday, email) values (8, 'Jaquith', 'Folcarelli', 'jfolcarelli7@fda.gov');
    insert into employee (id, name, birthday, email) values (9, 'Glen', 'Berthel', 'gberthel8@examiner.com');
    insert into employee (id, name, birthday, email) values (10, 'Madelene', 'Henken', 'mhenken9@phpbb.com');
    insert into employee (id, name, birthday, email) values (11, 'Lazar', 'Garr', 'lgarra@abc.net.au');
    insert into employee (id, name, birthday, email) values (12, 'Fenelia', 'Gorgen', 'fgorgenb@goo.gl');
    insert into employee (id, name, birthday, email) values (13, 'Gerrie', 'Fewell', 'gfewellc@microsoft.com');
    insert into employee (id, name, birthday, email) values (14, 'Flemming', 'OBradane', 'fobradaned@drupal.org');
    insert into employee (id, name, birthday, email) values (15, 'Alfredo', '2022-08', 'alindermanne@istockphoto.com');
    insert into employee (id, name, birthday, email) values (16, 'Laverne', '2022-06', 'lmcilmurrayf@illinois.edu');
    insert into employee (id, name, birthday, email) values (17, 'Asa', '2021-12', 'asunnucksg@behance.net');
    insert into employee (id, name, birthday, email) values (18, 'Doti', '2022-01', 'dmccarrickh@youtu.be');
    insert into employee (id, name, birthday, email) values (19, 'Wald', '2021-12', 'wgutowskii@diigo.com');
    insert into employee (id, name, birthday, email) values (20, 'Sloane', '2022-10', 'sseegarj@whitehouse.gov');
    insert into employee (id, name, birthday, email) values (21, 'Jordanna', '2022-02', 'jgrennank@bing.com');
    insert into employee (id, name, birthday, email) values (22, 'Shaina', '2022-08', 'soransl@bravesites.com');
    insert into employee (id, name, birthday, email) values (23, 'Huntington', '2022-06', 'hjarrittm@paginegialle.it');
    insert into employee (id, name, birthday, email) values (24, 'Ellette', '2022-02', 'ealdwichn@pinterest.com');
    insert into employee (id, name, birthday, email) values (25, 'Nadiya', '2021-12', 'ntredgeto@barnesandnoble.com');
    insert into employee (id, name, birthday, email) values (26, 'Hagen', '2022-07', 'hpaynterp@walmart.com');
    insert into employee (id, name, birthday, email) values (27, 'Michell', '2022-01', 'misenorq@dedecms.com');
    insert into employee (id, name, birthday, email) values (28, 'Lisabeth', '2022-01', 'lvasilievr@woothemes.com');
    insert into employee (id, name, birthday, email) values (28, 'Lisabeth', '2022-01', 'lvasilievr@woothemes.com');
    insert into employee (id, name, birthday, email) values (29, 'Shannon', '2022-12', 'sdisbreys@ocn.ne.jp');
    insert into employee (id, name, birthday, email) values (30, 'Kimbra', '2021-12', 'kcurrant@blog.com');
    insert into employee (id, name, birthday, email) values (31, 'Waylen', 'Kingaby', 'wkingabyu@blinklist.com');
    insert into employee (id, name, birthday, email) values (32, 'Wilma', 'Ridsdale', 'wridsdalev@infoseek.co.jp');
    insert into employee (id, name, birthday, email) values (33, 'Petunia', 'Moylane', 'pmoylanew@cornell.edu');
    insert into employee (id, name, birthday, email) values (34, 'Timothy', 'De Hailes', 'tdehailesx@xing.com');
    insert into employee (id, name, birthday, email) values (35, 'Isac', 'Grigg', 'igriggy@cpanel.net');
    insert into employee (id, name, birthday, email) values (36, 'Em', 'Cranney', 'ecranneyz@abc.net.au');
    insert into employee (id, name, birthday, email) values (37, 'Jessica', 'Gallyhaock', 'jgallyhaock10@merriam-webster.com');
    insert into employee (id, name, birthday, email) values (38, 'Callie', 'Matej', 'cmatej11@nydailynews.com');
    insert into employee (id, name, birthday, email) values (39, 'Darbie', 'Buckthorpe', 'dbuckthorpe12@indiegogo.com');
    insert into employee (id, name, birthday, email) values (40, 'Quentin', 'Casley', 'qcasley13@wsj.com');
    insert into employee (id, name, birthday, email) values (41, 'Lonnie', 'OKynsillaghe', 'lokynsillaghe14@usa.gov');
    insert into employee (id, name, birthday, email) values (42, 'Bertie', 'Vigietti', 'bvigietti15@cloudflare.com');
    insert into employee (id, name, birthday, email) values (43, 'Caleb', 'Sandbatch', 'csandbatch16@squidoo.com');
    insert into employee (id, name, birthday, email) values (44, 'Jarrod', '2022-05', 'jmucklo17@answers.com');
    insert into employee (id, name, birthday, email) values (45, 'Lyn', 'Ickovitz', 'lickovitz18@narod.ru');
    insert into employee (id, name, birthday, email) values (46, 'Veradis', 'Bates', 'vbates19@epa.gov');
    insert into employee (id, name, birthday, email) values (47, 'Gris', 'Dabrowski', 'gdabrowski1a@flickr.com');
    insert into employee (id, name, birthday, email) values (48, 'Leia', 'Ellsom', 'lellsom1b@elpais.com');
    insert into employee (id, name, birthday, email) values (49, 'Sacha', 'Thys', 'sthys1c@tmall.com');
    insert into employee (id, name, birthday, email) values (50, 'Brittni', 'Timbrell', 'btimbrell1d@skyrock.com');

    -- 3
    UPDATE employee SET id = 51 WHERE ID = 45;
    UPDATE employee SET name = 'John' WHERE ID = 46;
    UPDATE employee SET birthday = 'Ankara' WHERE ID = 47;
    UPDATE employee SET email = 'john@example.com' WHERE ID = 48;
    UPDATE employee SET id = 52 WHERE ID = 49;

    -- 4
    DELETE FROM employee WHERE ID = 45;
    DELETE FROM employee WHERE ID = 46;
    DELETE FROM employee WHERE ID = 47;
    DELETE FROM employee WHERE ID = 48;
    DELETE FROM employee WHERE ID = 49;
    DELETE FROM employee WHERE ID = 50;

-- Odev 9
    SELECT city.name, country.name
    FROM city
    INNER JOIN country
    ON city.country_code = country.code

    SELECT payment.payment_id, customer.first_name, customer.last_name
    FROM payment
    INNER JOIN customer
    ON payment.customer_id = customer.customer_id;

    SELECT c.first_name, c.last_name, r.rental_id
    FROM customer c
    INNER JOIN rental r ON c.customer_id = r.customer_id;

-- Odev 10
    SELECT city.name AS city_name, country.name AS country_name
    FROM city
    LEFT JOIN country ON city.country_id = country.id;

    SELECT payment.payment_id, customer.first_name, customer.last_name
    FROM customer
    RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

    SELECT c.first_name, c.last_name, r.rental_id
    FROM customer c
    FULL JOIN rental r ON c.rental_id = r.rental_id;

-- Odev 11
    SELECT first_name FROM actor 
    UNION 
    SELECT first_name FROM customer;

    SELECT first_name FROM actor
    INTERSECT
    SELECT first_name FROM customer;

    SELECT first_name FROM actor
    EXCEPT
    SELECT first_name FROM customer;

    SELECT first_name FROM actor UNION ALL SELECT first_name FROM customer;
    SELECT first_name FROM actor INTERSECT ALL SELECT first_name FROM customer;
    SELECT first_name FROM actor EXCEPT ALL SELECT first_name FROM customer;






