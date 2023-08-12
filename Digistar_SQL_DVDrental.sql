SELECT country_id, city
FROM city
WHERE city='Manchester';


SELECT country_id
FROM city
WHERE city='Manchester';

SELECT 
COUNT (DISTINCT category_id) AS Jumlah_category,
GROUP_CONCAT (name) AS daftar_category
FROM category;

SELECT MAX(amount) pembayaran_terbesar
FROM payment;

SELECT amount
FROM payment
ORDER BY amount DESC
LIMIT 1;


SELECT COUNT (*) Jumlah_film
FROM film
WHERE release_year='2006' AND length >=60;


SELECT
c. customer_id,
CONCAT (c. first_name, ' ', c. last_name) full_name,
a. address,
SUM (p. amount) total_pembelajaan
FROM customer c
JOIN address a ON c. address_id = a. address_id
JOIN payment p ON c. customer_id= p. customer_id
GROUP BY c. customer_id, a. address
HAVING SUM (p. amount) >=150
ORDER BY SUM (p. amount) DESC;

