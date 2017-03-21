# Intro to SQL

### Domain Model Seamless - Post Lecture Challenge

+ A user logs on with email and password
+ A user browses Restaurants in their area
+ A user views a restaurants's Menu
+ A user adds Items from the Menus into
+ A user creates an Order

### Instructions 

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)

## Challenges

1. How would you return all of the rows in the artists table?
  ```SQL
  SELECT artists.* FROM artists;
  ```
2. How would you select the artist with the name "Black Sabbath"
  ```SQL
  SELECT * FROM artists WHERE name = 'Black Sabbath';
  ```
3. How would you create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

  ```sql
  CREATE TABLE IF NOT EXISTS fans (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT );
  ```

4. How would you alter the fans table to have a artist_id column type integer?

  ```sql
  ALTER TABLE fans ADD COLUMN (artist_id INTEGER);
  ```
5. How would you add yourself as a fan of the Black Eyed Peas? **169**
  ```sql
  INSERT INTO fans (name, artist_id) VALUES ('Ian', 169);
  ```

6. Visit http://www.mess.be/inickgenwuname.php and generate a Wu-Tang name for yourself. How would you update your name to be your wu-tang name?
   ```sql
   INSERT INTO fans (name, artist_id) VALUES ('Ian', 169);
   UPDATE fans SET name = 'Foolish Pupil' WHERE name='Ian';

   INSERT INTO fans(name, artist_id) VALUES ('sylvee lee', 169);
   UPDATE fans SET name = 'Amazing Commander' WHERE name = 'Sylvee Lee';

   INSERT INTO fans (name, artist_id) VALUES ('Peter K', 169);
   UPDATE fans SET name = 'Respected Swami' WHERE name = 'Peter K';

   INSERT INTO fans (name, artist_id) VALUES ('Curtis', 169);
   UPDATE fans SET name = 'E-ratic Bandit' WHERE name = 'Curtis';

   INSERT INTO fans (name, artist_id) VALUES ('Charlie',169);
   UPDATE fans SET name = 'Irate Leader' WHERE name = 'Charlie';

   INSERT INTO fans (name, artist_id) VALUES ("Dave", 169);
   UPDATE fans SET name =  "Amazing Magician" WHERE name = "Dave";

   INSERT INTO fans (name, artist_id) VALUES ("Pete", 119);
   UPDATE fans SET name = 'Gentlemen Warrior' WHERE name = "Pete";

   INSERT INTO fans (name, artist_id) VALUES ("Duncan", 169);
   UPDATE fans SET name = 'Wicked Genius' WHERE name = "Duncan";

   INSERT INTO fans (name, artist_id) VALUES ('Sarah', 169);
   UPDATE fans SET name = 'X-cessive Bastard' WHERE name = 'Sarah';

   INSERT INTO fans (name, artist_id) VALUES ('Ethan', 169);
   UPDATE fans SET name = 'Master Mastermind' WHERE name='Ethan';

   INSERT INTO fans (name, artist_id) VALUES ("Robbie", 169);
   UPDATE fans SET name = "Thunderous Knight" WHERE name = "Robbie";

   INSERT INTO fans (name, artist_id) VALUES ('Scott', 169);
   UPDATE fans SET name = 'Vizual Specialist' WHERE name = 'Scott';

   INSERT INTO fans (name, artist_id) VALUES ('Sammy', 169);
   UPDATE fans SET name = 'X-pert Watcher' WHERE name = 'Sammy';

   INSERT INTO fans (name, artist_id) VALUES ('Meryl', 169);
   UPDATE fans SET name = 'Amateur Desperado' WHERE name = 'Meryl';

   INSERT INTO fans (name, artist_id) VALUES ('Anna', 169);
   UPDATE fans SET name = 'Zexy Dominator' WHERE name = 'Anna';

   INSERT INTO fans (name, artist_id) VALUES ('Naz', 50);
   UPDATE fans SET name = 'X-Pert Overlord' WHERE name = 'Naz';

   INSERT INTO fans (name, artist_id) VALUES ('Liz', 169);
   UPDATE fans SET name = 'E-ratic Madman' WHERE name = 'Liz';

   INSERT INTO fans (name, artist_id) VALUES ('Chris', 169);
   UPDATE fans SET name = 'Fearless Specialist' WHERE name = 'Chris';

   ```

7. How would you return students that are not fans of the black eyed peas.
  ```sql
  SELECT * FROM fans
  WHERE artist_id IS NOT 169
  ```


8. I want to return the names of the artists and their number of rock tracks
 who play Rock music
and have move than 30 tracks in order of the number of rock tracks that they have
from greatest to least
