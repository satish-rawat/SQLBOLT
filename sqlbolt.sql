--Exercise 1 - Tasks

SELECT Title FROM movies;
SELECT Director FROM movies;
SELECT Title,Director FROM movies;
SELECT Title,Year FROM movies;
SELECT * FROM movies;

--Exercise 2 - Tasks

SELECT * FROM movies where id = 6;
SELECT * FROM movies where Year BETWEEN 2000 and 2010;
SELECT * FROM movies where Year NOT BETWEEN 2000 and 2010;
SELECT * FROM movies ORDER BY Year LIMIT 5;

--Exercise 3 - Tasks

SELECT * FROM movies WHERE Title like "Toy%";
SELECT * FROM movies WHERE Director == "John Lasseter";
SELECT * FROM movies WHERE Director != "John Lasseter";
SELECT * FROM movies WHERE Title Like "WALL-%";

--Exercise 4 - Tasks

SELECT DISTINCT director FROM movies ORDER BY director;
SELECT * FROM movies ORDER BY year desc limit 4;
SELECT * FROM movies order by title asc limit 5;
SELECT * FROM movies order by title asc limit 5 offset 5;

--Exercise 5 - Tasks

SELECT city, population FROM north_american_cities where country == 'Canada';
SELECT * FROM north_american_cities where country == "United States" order by latitude desc;
SELECT * FROM north_american_cities where longitude < (select longitude from north_american_cities where city ="Chicago") order by longitude asc ;
SELECT * FROM north_american_cities where country == "Mexico" order by population desc limit 2;
SELECT * FROM north_american_cities where country == "United States" order by population desc limit 2 offset 2;

--Exercise 6 - Tasks

SELECT title,domestic_sales,international_sales from boxoffice inner join movies on movies.id = boxoffice.movie_id;
SELECT title,domestic_sales,international_sales from boxoffice inner join movies on movies.id = boxoffice.movie_id where international_sales > domestic_sales;
SELECT title,rating from boxoffice inner join movies on movies.id = boxoffice.movie_id order by rating desc;

--Exercise 7 - Tasks

SELECT distinct building_name FROM buildings left join employees on buildings.building_name = employees.building where building is not null;
SELECT * FROM buildings; 
SELECT DISTINCT building_name, role FROM buildings LEFT JOIN employees ON buildings.building_name = employees.building;

--Exercise 8 - Tasks

SELECT name,role FROM employees where building is null;
SELECT * FROM buildings left join employees on buildings.building_name = employees.building where role is null;

--Exercise 9 - Tasks

SELECT title,(domestic_sales + international_sales)/1000000 as sales FROM movies left join boxoffice on movies.id = boxoffice.movie_id;
SELECT title,rating*10 as "Ratings in percent" FROM movies left join boxoffice on movies.id = boxoffice.movie_id;
SELECT title,year FROM movies left join boxoffice on movies.id = boxoffice.movie_id where year%2 == 0;

--Exercise 10 - Tasks

SELECT name,max(years_employed) FROM employees ;
SELECT role,avg(years_employed) FROM employees group by role ;
SELECT building,sum(years_employed) FROM employees group by building ;

--Exercise 11 - Tasks

SELECT count(role) FROM employees where role == "Artist";
SELECT role,count(role) FROM employees group by role;
SELECT sum(years_employed) FROM employees where role == "Engineer";

--Exercise 12 - Tasks

SELECT director, count(director) FROM movies group by director;
SELECT director, (domestic_sales + international_sales) as sales FROM movies left join boxoffice on movies.id = boxoffice.movie_id group by director;

--Exercise 13 - Tasks

insert into movies values(15, "Toy Story 4", "XYZ", 2019, 95);
insert into boxoffice values(15, 8.7, 340000000, 270000000);

--Exercise 14 - Tasks

update movies set director = "John Lasseter" where title == "A Bug's Life";
update movies set year = 1999 where title == "Toy Story 2";
update movies set director = "Lee Unkrich", title = "Toy Story 3" where title == "Toy Story 8";

--Exercise 15 - Tasks

delete FROM movies where year < 2005;
delete FROM movies where director == "Andrew Stanton";

--Exercise 16 - Tasks

create table Database (Name Text, Version Float, Download_count Int);

--Exercise 17 - Tasks

Alter table movies add Aspect_ratio Float;
Alter table movies add Language Text Default "English";

--Exercise 18 - Tasks

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS boxoffice;