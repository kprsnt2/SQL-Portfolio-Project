# SQL-Portfolio-Project
Movie Rental database
Here's a sample template for a database documentation for the Movie_rental project:
Database Design
•	The Movie_rental database has three main tables: movies, customers, and rentals.
•	The movies table stores information on the movies available for rent, including the movie title, genre, and release date.
•	The customers table stores information on the customers, including their name, address, and age.
•	The rentals table stores information on the rentals, including the customer ID, movie ID, rental date, and return date.
•	The movies and customers tables have a primary key movie_id and customer_id, respectively.
•	The rentals table has a foreign key movie_id and customer_id that references the primary key of movies and customers table, respectively.
Data Dictionary
•	Table: movies
•	movie_id: INT (Primary Key)
•	title: VARCHAR(255)
•	genre: VARCHAR(255)
•	release_date: DATE
•	Table: customers
•	customer_id: INT (Primary Key)
•	first_name: VARCHAR(255)
•	last_name: VARCHAR(255)
•	address: VARCHAR(255)
•	age: INT
•	Table: rentals
•	rental_id: INT (Primary Key)
•	customer_id: INT (Foreign Key references customers.customer_id)
•	movie_id: INT (Foreign Key references movies.movie_id)
•	rental_date: DATE
•	return_date: DATE
