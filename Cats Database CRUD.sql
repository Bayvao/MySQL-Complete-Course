CREATE DATABASE My_SQL_Bootcamp;

USE My_SQL_Bootcamp;

CREATE TABLE cats 
( 
	cat_id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(100), 
	breed VARCHAR(100), 
	age INT, 
	PRIMARY KEY (cat_id) 
); 

DESC cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
SELECT * FROM cats;

SELECT name FROM cats;

SELECT age FROM cats;

SELECT name, age FROM cats;

SELECT cat_id, name, age FROM cats;

SELECT age, breed, name, cat_id FROM cats;

SELECT cat_id, name, age, breed FROM cats;

SELECT * FROM cats WHERE age = 4;

SELECT * from cats WHERE name='egg';

SELECT  cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT name, age FROM cats where breed='tabby';

SELECT cat_id, age FROM cats where cat_id=age;

SELECT cat_id AS id, name FROM cats;
 
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

UPDATE cats SET age=14 WHERE name='Misty';

select * from cats where age=14;

SELECT * FROM cats WHERE name='Jackson';
 
UPDATE cats SET name='Jack' WHERE name='Jackson';
 
SELECT * FROM cats WHERE name='Jackson';
 
SELECT * FROM cats WHERE name='Jack';
 
SELECT * FROM cats WHERE name='Ringo';
 
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
 
SELECT * FROM cats WHERE name='Ringo';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE breed='Maine Coon';
 
UPDATE cats SET age=12 WHERE breed='Maine Coon';
 
SELECT * FROM cats WHERE breed='Maine Coon';

DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE name='egg';
 
DELETE FROM cats WHERE name='egg';
 
SELECT * FROM cats;

DELETE FROM cats where age=4;

DELETE FROM cats where cat_id=age;
 
DELETE FROM cats;

