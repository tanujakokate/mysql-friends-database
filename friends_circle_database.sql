-- ==========================================================
-- Project Title : Friends Circle Database
-- Author        : Tanuja Kokate
-- Database      : MySQL
-- Description   :
-- This project demonstrates basic SQL operations such as
-- creating a database, creating a table, inserting records,
-- displaying data, renaming a table, adding a column,
-- updating records, dropping a column, and displaying
-- the final table.
-- ==========================================================

-- ==========================================================
-- STEP 1 : Create Database
-- ==========================================================

CREATE DATABASE friends_circle;
-- Select the database
USE friends_circle;



CREATE TABLE friends (
    friend_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    city VARCHAR(30),
    course VARCHAR(40),
    birthday_month VARCHAR(15),
    friendship_score INT
);

SHOW TABLES;

INSERT INTO friends
(first_name, last_name, city, course, birthday_month, friendship_score)
VALUES
('Vaishnavi', 'Kote', 'Shirdi', 'MCA', 'October', 100),
('Sanika', 'Talole', 'Sangamner', 'MSc Chemistry', 'October', 100),
('Sakshi', 'Gavande', 'Sangamner', 'MSc Chemistry', 'June', 95),
('Sakshi', 'Gadekar', 'Sangamner', 'MSc', 'November', 98),
('Prajakta', 'Gunjal', 'Pune', 'Data Science', 'August', 95),
('Rutuja', 'Pandure', 'Pune', 'Data Science', 'May', 95),
('Sneha', 'Sadaphal', 'Shirdi', 'MCA', 'November', 95),
('Tanvi', 'Kokate', 'Sinnar', 'MSc', 'June', 96);


SELECT * FROM friends;

ALTER TABLE friends
RENAME TO best_friends;

SHOW TABLES;

SELECT * FROM best_friends;
ALTER TABLE best_friends
ADD instagram_id VARCHAR(30);

UPDATE best_friends
SET instagram_id = 'vaishnavi_k'
WHERE friend_id = 1;
