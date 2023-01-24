-- Create the database
CREATE DATABASE movie_rental;

-- Use the database
USE movie_rental;

-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    age INT,
    address VARCHAR(255)
);

-- Create the movies table
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    genre VARCHAR(255)
);

-- Create the rentals table
CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    customer_id INT,
    movie_id INT,
    rental_date DATE,
    return_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);


INSERT INTO customers (customer_id, first_name, last_name, email, age, address)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', 25, '123 Main St'),
       (2, 'Jane', 'Smith', 'janesmith@example.com', 32, '456 Park Ave'),
       (3, 'Bob', 'Johnson', 'bobjohnson@example.com', 45, '789 Elm St');


INSERT INTO movies (movie_id, title, release_year, genre)
VALUES (1, 'Jurassic Park', 1993, 'Sci-Fi'),
       (2, 'The Shawshank Redemption', 1994, 'Drama'),
       (3, 'The Godfather', 1972, 'Crime');


INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date)
VALUES (1, 1, 1, '2022-01-01', '2022-01-03'),
       (2, 2, 2, '2022-01-05', '2022-01-08'),
       (3, 3, 3, '2022-01-10', '2022-01-15');


INSERT INTO customers (customer_id, first_name, last_name, email, age, address)
VALUES (4, 'Mike', 'Williams', 'mikewilliams@example.com', 35, '321 Oak St'),
       (5, 'Sara', 'Johnson', 'sarajohnson@example.com', 28, '654 Pine St'),
       (6, 'Chris', 'Jones', 'chrisjones@example.com', 22, '987 Birch St'),
       (7, 'Emily', 'Brown', 'emilybrown@example.com', 31, '246 Cedar St'),
       (8, 'Daniel', 'Miller', 'danielmiller@example.com', 40, '369 Maple St'),
       (9, 'Jessica', 'Davis', 'jessicadavis@example.com', 29, '159 Elm St'),
       (10, 'Matthew', 'Garcia', 'matthewgarcia@example.com', 36, '753 Willow St'),
       (11, 'Andrew', 'Rodriguez', 'andrewrodriguez@example.com', 50, '951 Oak St'),
       (12, 'Ashley', 'Martinez', 'ashleymartinez@example.com', 24, '753 Pine St'),
       (13, 'Kevin', 'Anderson', 'kevinanderson@example.com', 27, '369 Birch St'),
       (14, 'Samantha', 'Taylor', 'samanthataylor@example.com', 32, '246 Cedar St'),
       (15, 'Ryan', 'Thomas', 'ryanthomas@example.com', 35, '159 Elm St'),
       (16, 'Jacob', 'Hernandez', 'jacobhernandez@example.com', 28, '753 Willow St'),
       (17, 'Nicholas', 'Moore', 'nicholasmoore@example.com', 40, '951 Oak St'),
       (18, 'Anthony', 'Martin', 'anthonymartin@example.com', 24, '753 Pine St'),
       (19, 'Joshua', 'Jackson', 'joshuajackson@example.com', 27, '369 Birch St'),
       (20, 'Amanda', 'White', 'amandawhite@example.com', 32, '246 Cedar St');


-- Adding 20 more movies
INSERT INTO movies (movie_id, title, release_year, genre)
VALUES (4, 'Pulp Fiction', 1994, 'Crime'),
       (5, 'The Lord of the Rings: The Return of the King', 2003, 'Fantasy'),
       (6, 'The Good, the Bad and the Ugly', 1966, 'Western'),
       (7, 'Forrest Gump', 1994, 'Drama'),
       (8, 'Inception', 2010, 'Sci-Fi'),
       (9, 'The Matrix', 1999, 'Sci-Fi'),
       (10, 'Goodfellas', 1990, 'Crime'),
       (11, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 'Sci-Fi'),
       (12, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'Fantasy'),
       (13, 'One Flew Over the Cuckoo''s Nest', 1975, 'Drama'),
       (14, 'Seven Samurai', 1954, 'Adventure'),
       (15, 'It''s a Wonderful Life', 1946, 'Drama'),
       (16, 'The Silence of the Lambs', 1991, 'Crime');

INSERT INTO movies (movie_id, title, release_year, genre)
VALUES (17, 'The Usual Suspects', 1995, 'Crime'),
       (18, 'Léon: The Professional', 1994, 'Crime'),
       (19, 'Saving Private Ryan', 1998, 'War'),
       (20, 'American Beauty', 1999, 'Drama'),
       (21, 'Interstellar', 2014, 'Sci-Fi'),
       (22, 'Gladiator', 2000, 'Action'),
       (23, 'The Green Mile', 1999, 'Fantasy'),
       (24, 'The Prestige', 2006, 'Mystery'),
       (25, 'The Departed', 2006, 'Crime'),
       (26, 'Whiplash', 2014, 'Drama'),
       (27, 'The Lion King', 1994, 'Animation'),
       (28, 'The Pianist', 2002, 'Biography'),
       (29, 'The Great Dictator', 1940, 'Comedy'),
       (30, 'The Shining', 1980, 'Horror');


INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date)
VALUES (4, 1, 4, '2022-02-01', '2022-02-03'),
       (5, 2, 5, '2022-02-05', '2022-02-08'),
       (6, 3, 6, '2022-02-10', '2022-02-15'),
       (7, 4, 7, '2022-03-01', '2022-03-03'),
       (8, 5, 8, '2022-03-05', '2022-03-08'),
       (9, 6, 9, '2022-03-10', '2022-03-15'),
       (10, 7, 10, '2022-04-01', '2022-04-03'),
       (11, 8, 11, '2022-04-05', '2022-04-08'),
       (12, 9, 12, '2022-04-10', '2022-04-15'),
       (13, 10, 13, '2022-05-01', '2022-05-03'),
       (14, 11, 14, '2022-05-05', '2022-05-08'),
       (15, 12, 15, '2022-05-10', '2022-05-15'),
       (16, 13, 16, '2022-06-01', '2022-06-03'),
       (17, 14, 17, '2022-06-05', '2022-06-08'),
       (18, 15, 18, '2022-06-10', '2022-06-15');

	   INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date)
VALUES (19, 16, 19, '2022-07-01', '2022-07-03'),
       (20, 17, 20, '2022-07-05', '2022-07-08'),
       (21, 18, 21, '2022-07-10', '2022-07-15'),
       (22, 19, 22, '2022-08-01', '2022-08-03'),
       (23, 20, 23, '2022-08-05', '2022-08-08'),
       (24, 1, 24, '2022-08-10', '2022-08-15'),
       (25, 2, 25, '2022-09-01', '2022-09-03'),
       (26, 3, 26, '2022-09-05', '2022-09-08'),
       (27, 4, 27, '2022-09-10', '2022-09-15'),
       (28, 5, 28, '2022-10-01', '2022-10-03');

--To get a list of all movies in the movies table, you can use the following query
SELECT * FROM movies;

--To get a list of all customers in the customers table, you can use the following query
SELECT * FROM customers;

--To get a list of all rentals in the rentals table, you can use the following query
SELECT * FROM rentals;

--To get a count of the number of movies in each genre, you can use the following query
SELECT genre, COUNT(*) as 'Number of Movies'
FROM movies
GROUP BY genre;

--To get a list of the most popular movies among different age groups, you can use the following query

SELECT m.title, COUNT(r.movie_id) as 'Number of Rentals', c.age
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
JOIN customers c ON r.customer_id = c.customer_id
GROUP BY m.title, c.age
ORDER BY COUNT(r.movie_id) DESC;


--To get a list of customers who have rented a movie multiple times, you can use the following query

SELECT c.first_name, c.last_name, COUNT(r.customer_id) as 'Number of Rentals'
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
HAVING COUNT(r.customer_id) > 1;


--To get a list of all movies released after a certain year, you can use the WHERE clause in the following query
SELECT * FROM movies
WHERE release_year > 2000
ORDER BY release_year;

--To get a list of all customers whose last name starts with a certain letter, you can use the LIKE clause in the following query
SELECT * FROM customers
WHERE last_name LIKE 'S%'
ORDER BY last_name;


--To get the top 10 most popular movies by the number of rentals, you can use the ORDER BY and LIMIT clauses in the following query
SELECT Top 10 m.title, COUNT(r.movie_id) as 'Number of Rentals'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY COUNT(r.movie_id) DESC;

SELECT TOP 10 m.title, COUNT(r.movie_id) as 'Number of Rentals'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY COUNT(r.movie_id) DESC;

--top 10 movies by the number of rentals for the year 2022

SELECT Top 10 m.title, COUNT(r.movie_id) as 'Number of Rentals'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
WHERE r.rental_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY m.title
ORDER BY COUNT(r.movie_id) DESC;



--To get a list of all rentals that occurred between two specific dates, you can use the WHERE clause in the following query
SELECT * FROM rentals
WHERE rental_date BETWEEN '2022-01-01' AND '2022-03-31'
ORDER BY rental_date;

--Complex queries

--To get a list of all customers who have rented a movie in a certain genre, you can use the following query

SELECT c.first_name, c.last_name, m.genre
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE m.genre = 'Sci-Fi'
GROUP BY c.first_name, c.last_name, m.genre
ORDER BY c.last_name;

--COUNT function to return the number of occurrences of the genre 'Sci-Fi' for each customer
SELECT c.first_name, c.last_name, COUNT(m.genre) as genre_count
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE m.genre = 'Sci-Fi'
GROUP BY c.first_name, c.last_name
ORDER BY genre_count DESC;

--MAX function to return the genre for each customer
SELECT c.first_name, c.last_name, MAX(m.genre) as genre
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE m.genre = 'Sci-Fi'
GROUP BY c.first_name, c.last_name
ORDER BY genre;


--To get a list of movies that have not been rented, you can use the following query
SELECT title
FROM movies
WHERE movie_id NOT IN (SELECT movie_id FROM rentals)

--To get the total number of rentals, the number of unique customers who rented, and the number of unique movies rented for each month of the year, you can use the following query
SELECT DATEPART(month, rental_date) AS month, COUNT(DISTINCT rental_id) AS rentals, COUNT(DISTINCT customer_id) AS customers, COUNT(DISTINCT movie_id) AS movies
FROM rentals
GROUP BY DATEPART(month, rental_date)
ORDER BY DATEPART(month, rental_date);

SELECT DATEADD(month, DATEDIFF(month, 0, rental_date), 0)  AS month, COUNT(DISTINCT rental_id) AS rentals, COUNT(DISTINCT customer_id) AS customers, COUNT(DISTINCT movie_id) AS movies
FROM rentals
GROUP BY DATEADD(month, DATEDIFF(month, 0, rental_date), 0) 
ORDER BY DATEADD(month, DATEDIFF(month, 0, rental_date), 0) ;

	

--To get the list of movies rented by a customer, you can use the following query

SELECT  c.first_name, c.last_name, m.title
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE c.first_name = 'John' AND c.last_name = 'Doe'
ORDER BY m.title;

--To get the list of movies rented by a customer and their rental count, you can use the following query

SELECT m.title, COUNT(r.movie_id) as 'Number of Rentals'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
JOIN customers c ON r.customer_id = c.customer_id
WHERE c.first_name = 'John' AND c.last_name = 'Doe'
GROUP BY m.title
ORDER BY COUNT(r.movie_id) DESC

--Advanced functions

--To get a list of customers who have rented at least one movie in each genre, you can use the following query

WITH genre_counts AS (
  SELECT customer_id, genre, COUNT(DISTINCT genre) AS genre_count
  FROM movies m
  JOIN rentals r ON m.movie_id = r.movie_id
  GROUP BY customer_id, genre
)
SELECT c.first_name, c.last_name
FROM customers c
WHERE (SELECT COUNT(DISTINCT genre) FROM genre_counts WHERE customer_id = c.customer_id) = (SELECT COUNT(DISTINCT genre) FROM movies);


--To get the average rental duration for each genre of movie, you can use the following query

WITH duration AS (
  SELECT genre, DATEDIFF(day, rental_date, return_date) AS rental_duration
  FROM movies m
  JOIN rentals r ON m.movie_id = r.movie_id
)
SELECT genre, AVG(rental_duration) AS avg_duration
FROM duration
GROUP BY genre
ORDER BY avg_duration DESC;


SELECT m.genre, AVG(DATEDIFF(day, r.rental_date, r.return_date)) as 'Average Rental Duration (in days)'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
GROUP BY m.genre
ORDER BY AVG(DATEDIFF(day, r.rental_date, r.return_date)) DESC;


--To get the top 5 customers who have rented the most movies overall, you can use the following query

WITH customer_rentals AS (
  SELECT Top 5 customer_id, COUNT(*) AS rental_count
  FROM rentals
  GROUP BY customer_id
)
SELECT c.first_name, c.last_name, rental_count
FROM customer_rentals cr
JOIN customers c ON cr.customer_id = c.customer_id
ORDER BY rental_count DESC;

--To get the percentage of movies rented in each genre, you can use the following query

WITH genre_counts AS (
  SELECT genre, COUNT(*) AS genre_count
  FROM movies
  JOIN rentals ON movies.movie_id = rentals.movie_id
  GROUP BY genre
)
SELECT genre, genre_count, genre_count * 100.0 / (SELECT SUM(genre_count) FROM genre_counts) AS percentage
FROM genre_counts
ORDER BY percentage DESC;


--To get the number of movies rented by customers of each age group, you can use the following query

WITH age_groups AS (
  SELECT CASE
    WHEN age < 20 THEN 'Under 20'
    WHEN age >= 20 AND age < 30 THEN '20s'
    WHEN age >= 30 AND age < 40 THEN '30s'
    WHEN age >= 40 AND age < 50 THEN '40s'
    WHEN age >= 50 THEN '50+'
    END AS age_group
  FROM customers
)
SELECT age_groups.age_group, COUNT(DISTINCT rentals.movie_id) AS 'Number of Movies Rented'
FROM age_groups
JOIN customers ON age_groups.age_group = CASE
    WHEN customers.age < 20 THEN 'Under 20'
    WHEN customers.age >= 20 AND customers.age < 30 THEN '20s'
    WHEN customers.age >= 30 AND customers.age < 40 THEN '30s'
    WHEN customers.age >= 40 AND customers.age < 50 THEN '40s'
    WHEN customers.age >= 50 THEN '50+'
    END
JOIN rentals ON customers.customer_id = rentals.customer_id
GROUP BY age_groups.age_group
ORDER BY COUNT(DISTINCT rentals.movie_id) DESC;

--CTE & Use of ROW_NUMBER() function along with a subquery
WITH cte as (
    SELECT m.title, COUNT(r.movie_id) as 'Number of Rentals', ROW_NUMBER() OVER (ORDER BY COUNT(r.movie_id) DESC) as row_num
    FROM movies m
    JOIN rentals r ON m.movie_id = r.movie_id
    GROUP BY m.title
)
SELECT title, 'Number of Rentals'
FROM cte
WHERE row_num <= 10;

--Updating data
UPDATE movies
SET title = 'New Title'
WHERE movie_id = 1;

select * from movies

--Deleting data
DELETE FROM rentals
WHERE movie_id = 1;

DELETE FROM movies
WHERE movie_id = 1;

--use cascade option to delete constraint from the table where we got error message foreign key
ALTER TABLE rentals
  DROP CONSTRAINT FK__rentals__movie_i__3B75D760;

ALTER TABLE rentals
  ADD CONSTRAINT FK__rentals__movie_i__3B75D760
  FOREIGN KEY (movie_id)
  REFERENCES movies(movie_id)
  ON DELETE CASCADE;

--Add column
ALTER TABLE movies
ADD rental_cost DECIMAL(5, 2) NOT NULL DEFAULT 3.99;
/*DECIMAL(5,2) is a data type in SQL that represents a decimal number with a fixed precision and scale.

In this case, "5" represents the precision and "2" represents the scale.

Precision is the total number of digits in a number, both to the left and right of the decimal point. So, in this case, the precision of the number is 5 digits.
Scale is the number of digits to the right of the decimal point. In this case, the scale of the number is 2 digits.
Therefore, DECIMAL(5,2) can store numbers with up to 5 digits in total, with 2 digits after the decimal point.
*/
--Data validation
ALTER TABLE movies
ADD CONSTRAINT title_not_null CHECK (title IS NOT NULL);

--Integrity constraints
ALTER TABLE rentals
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id);


--Create a view in the Movie_rental database
CREATE VIEW top_rentals AS
SELECT top 10 m.title, COUNT(r.movie_id) as 'Number of Rentals'
FROM movies m
JOIN rentals r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY COUNT(r.movie_id) DESC
;
--Exec
SELECT * FROM top_rentals;

CREATE VIEW customer_rentals AS
SELECT c.first_name, c.last_name, COUNT(r.customer_id) AS 'Number of Rentals', SUM(DATEDIFF(day, r.rental_date, r.return_date)) AS 'Total Rental Days'
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name;
--Exec
SELECT * FROM customer_rentals ORDER BY 'Number of Rentals' DESC;

--Drop View
drop view customer_rentals

--Functions
--Scalar function
CREATE FUNCTION rental_price (@movie_id INT)
RETURNS DECIMAL(5, 2)
AS
BEGIN
   DECLARE @cost DECIMAL(5, 2)
   SELECT @cost = rental_cost FROM movies WHERE movie_id = @movie_id
   RETURN @cost
END
--Exec
select * from movies

--Table valued function     
CREATE FUNCTION get_top_movies (@num_movies INT)
RETURNS @top_movies TABLE (title VARCHAR(255), num_rentals INT)
AS
BEGIN
    INSERT INTO @top_movies
    SELECT TOP (@num_movies) m.title, COUNT(r.movie_id) as 'num_rentals'
    FROM movies m
    JOIN rentals r ON m.movie_id = r.movie_id
    GROUP BY m.title
    ORDER BY COUNT(r.movie_id) DESC
    RETURN
END
--Exec
SELECT * FROM get_top_movies(5);

--Stored Procedure
CREATE PROCEDURE update_movie_rental_cost (@movie_id INT, @new_cost DECIMAL(5, 2))
AS
BEGIN
    UPDATE movies
    SET rental_cost = @new_cost
    WHERE movie_id = @movie_id

    SELECT title, rental_cost FROM movies
    WHERE movie_id = @movie_id
END
--Exec
EXEC update_movie_rental_cost @movie_id = 2, @new_cost = 4.99;
--Check/Verify
Select * from movies

-- Backup Database
BACKUP DATABASE movie_rental
TO DISK = 'D:\movie_rental.bak'

--Restore Database
RESTORE DATABASE movie_rental
FROM DISK = 'D:\movie_rental.bak'
WITH REPLACE

