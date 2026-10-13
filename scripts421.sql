-- Возраст студента не может быть меньше 16 лет
ALTER TABLE student
ADD CONSTRAINT student_age_check CHECK (age >= 16);

-- Имена студентов должны быть уникальными и не равными нулю
ALTER TABLE student
ALTER COLUMN name SET NOT NULL;

ALTER TABLE student
ADD CONSTRAINT student_name_unique UNIQUE (name);

-- Пара “значение названия” - “цвет факультета” должна быть уникальной
ALTER TABLE faculty
ADD CONSTRAINT faculty_name_color_unique UNIQUE (name, color);

-- 4. Возраст студента (по умолчанию) — 20 лет
ALTER TABLE student
ALTER COLUMN age SET DEFAULT 20;