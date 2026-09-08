create catalog if not exists brightlearn;
create schema if not exists brightlearn.students;
create table if not exists brightlearn.students.profiles(
  student_id int, 
  name string, 
  age int, 
  gender string, 
  province string, 
  city string,  
  registration_date date
);

--load information 
INSERT INTO brightlearn.students.profiles VALUES
(1, 'Thandeka Ngetu', 22, 'Female', 'Gauteng', 'Soweto', '2026-02-01'), 
(2, 'Mpho Zuma', 30, 'Male', 'Limpopo', 'Makhado', '2026-06-01'), 
(3, 'Marcus Johnson',23, 'Male', 'Western Cape', 'Cape Town', '2026-08-01'), 
(4, 'Fatima Ahmed', 28, 'Female', 'Eastern Cape', 'Port Elizabeth', '2026-09-01'), 
(5, 'Sipho Mabunda', 25, 'Male', 'KwaZulu-Natal', 'Durban', '2026-10-01');

SELECT* FROM brightlearn.students.profiles;
--drop table brightlearn.students.profiles;
INSERT INTO brightlearn.students.profiles VALUES
(6, 'Thabo Makhathini', 27, 'Male', 'Mpumalanga', 'Nelspruit', '2026-01-01'), 
(7, 'Naledi Mokgotho', 29, 'Female', 'North West', 'Johannesburg', '2026-03-01'), 
(8, 'Zanele Ndlovu', 24, 'Female', 'Gauteng', 'Johannesburg', '2026-05-01'), 
(9, 'Thabo Makhathini', 27, 'Male', 'Mpumalanga', 'Nelspruit', '2026-01-01'), 
(10, 'Naledi Mokgotho', 29, 'Female', 'North West', 'Johannesburg', '2026-03-01'), 
(11, 'Zanele Ndlovu', 24, 'Female', 'Gauteng', 'Johannesburg', '2026-05-01');

SELECT* FROM brightlearn.students.profiles;
ALTER TABLE brightlearn.students.profiles ADD COLUMN (phone_number INT);

--Manual updata a specific student record using their ID
UPDATE brightlearn.students.profiles 
SET phone_number = 0795807538--SET PHONE NUMBER VALUE
WHERE student_id=1;

UPDATE brightlearn.students.profiles
SET phone_number = 0795807538--SET PHONE NUMBER VALUE
WHERE student_id=1;

SELECT* FROM brightlearn.students.profiles;
-- TO DELETE THE TABEL 
--DROP TABLE brightlearn.students.profiles;
