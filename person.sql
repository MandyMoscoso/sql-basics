-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE 	person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  age int,
  height FLOAT,
  city varchar(255),
  favourite_color varchar(100)
  );

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO 	person (name, age, height, city, favourite_color)
VALUES ('Melon Usk', 69, 180, 'New York City', 'blue'),
        ('John Friedrice', 42, 150, 'Los Angeles', 'purple'),
        ('Jean Boba', 17, 160, 'Shanghai', 'black'),
        ('Anne Chili', 19, 172,'Cancun', 'yellow'),
        ('Karen Manager', 39,155,'San Jose', 'white');

-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height desc;

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ;

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age desc;


-- Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age>30;
-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age <> 27;
-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favourite_color <> 'red';
-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favourite_color <> 'red'  AND favourite_color <> 'blue';
-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favourite_color <> 'orange'  OR favourite_color <> 'green';
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favourite_color IN ('orange', 'green', 'blue');
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favourite_color IN ('yellow', 'purple');