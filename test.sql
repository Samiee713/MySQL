USE test_school;

DROP TABLE IF EXISTS student;

CREATE TABLE student (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  age INT,
  grade VARCHAR(5)
);

INSERT INTO student (name, age, grade) VALUES
('Smriti', 20, 'A'),
('Sandesh', 21, 'B'),
('Cherry', 19, 'A+'),
('Ravi', 22, 'B+');

SELECT * FROM student;
