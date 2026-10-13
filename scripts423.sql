-- Получить имена и возраст всех студентов вместе с названиями факультетов
SELECT s.name, s.age, f.name AS faculty_name
FROM student s
JOIN faculty f ON s.faculty_id = f.id;

-- Получить только студентов, у которых есть аватарки
SELECT s.*
FROM student s
JOIN avatar a ON s.id = a.student_id;