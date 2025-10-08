CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(200),
    birth_date DATE,
    email VARCHAR(100),
    phone_number INT(12),
    admission_year INT(4)
)

CREATE TABLE discipline (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(2000),
    credits INT(2),
    hours INT(4)
)

CREATE TABLE student_discipline (
  student_id INT,
  discipline_id INT,
  group_number INT(2),
  PRIMARY KEY (student_id, discipline_id),
  CONSTRAINT fk_student FOREIGN KEY(student_id) REFERENCES student(id),
  CONSTRAINT fk_discipline FOREIGN KEY(discipline_id) REFERENCES discipline(id)
)

SELECT s.full_name, s.email
FROM student s
JOIN student_discipline sd ON s.student_id = sd.student_id
JOIN discipline d ON sd.discipline_id = d.discipline_id
WHERE d.name = "Програмування" AND sd.group_number = 5