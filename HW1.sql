CREATE database homework1;
use homework1;


create table specialization (
    specialization_id int auto_increment,
    graduate_year int,
    name varchar(100),
    primary key (specialization_id)

);



create table course (
    course_id int auto_increment,
    course_name varchar(200),
    duration int,
    primary key (course_id)

);

CREATE table student (
    student_id int auto_increment,
    first_name varchar(255),
    birth date,
    specialization int,
    course int,
    primary key (student_id),
    foreign key (specialization) references specialization(specialization_id),
    foreign key (course) references course(course_id)
);

create table teacher (
    teacher_id int auto_increment,
    teacher_name varchar(250),
    teacher_course int,
    primary key (teacher_id),
    foreign key (teacher_course) references course(course_id)

);

create table grade (
    grade_id int auto_increment,
    grade_value int,
    student_id int,
    course_id int,
    primary key (grade_id),
    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(course_id)
);

insert into specialization (graduate_year, name) values
(2024, 'Computer Science'),
(2025, 'Business Administration'),
(2023, 'Mechanical Engineering'),
(2024, 'Electrical Engineering'),
(2026, 'Data Science'),
(2025, 'Marketing'),
(2023, 'Psychology'),
(2024, 'Chemistry'),
(2025, 'Physics'),
(2026, 'Mathematics'),
(2023, 'Biology'),
(2024, 'Economics'),
(2025, 'Political Science'),
(2023, 'History'),
(2024, 'Sociology'),
(2025, 'Law'),
(2026, 'Architecture'),
(2023, 'Design'),
(2024, 'Art'),
(2025, 'Music'),
(2026, 'Philosophy'),
(2023, 'Linguistics'),
(2024, 'Anthropology'),
(2025, 'Education'),
(2026, 'Finance'),
(2023, 'Environmental Science'),
(2024, 'Geology'),
(2025, 'Agriculture'),
(2026, 'Journalism'),
(2023, 'International Relations');


insert into course (course_name, duration) values
('Introduction to Programming', 6),
('Advanced Economics', 5),
('Marketing Strategies', 4),
('Data Structures', 6),
('Thermodynamics', 5),
('Digital Marketing', 4),
('Organic Chemistry', 5),
('Linear Algebra', 6),
('Physics I', 5),
('Project Management', 4),
('Operating Systems', 6),
('Database Design', 5),
('History of Art', 4),
('Business Law', 5),
('Philosophy 101', 4),
('Machine Learning', 6),
('Web Development', 5),
('Political Science', 4),
('Cybersecurity Basics', 6),
('Music Theory', 5),
('Environmental Studies', 4),
('Journalism Ethics', 5),
('Media Communication', 4),
('Sociology of Education', 5),
('Financial Accounting', 6),
('Quantum Physics', 5),
('International Law', 4),
('Psychology of Learning', 5),
('French Language', 4),
('Game Theory', 6);

insert into student (first_name, birth, specialization, course) values
('John Doe', '2000-01-15', 1, 1),
('Jane Smith', '1999-03-22', 2, 2),
('Alex Johnson', '2001-07-12', 3, 3),
('Emily Davis', '1998-11-05', 4, 4),
('Michael Brown', '2000-02-17', 5, 5),
('Sarah Miller', '2001-06-20', 6, 6),
('James Wilson', '1999-12-25', 7, 7),
('Olivia Anderson', '2000-08-09', 8, 8),
('William Thomas', '2001-03-30', 9, 9),
('Sophia Martinez', '1999-10-12', 10, 10),
('Benjamin Harris', '1998-09-18', 11, 11),
('Isabella Clark', '2001-05-11', 12, 12),
('Lucas Lewis', '2000-04-03', 13, 13),
('Mia Walker', '1999-01-28', 14, 14),
('Henry Young', '2001-07-07', 15, 15),
('Ava King', '2000-06-02', 16, 16),
('Ethan Wright', '1999-12-13', 17, 17),
('Charlotte Scott', '2001-08-16', 18, 18),
('Daniel Green', '1998-11-27', 19, 19),
('Amelia Baker', '2000-02-08', 20, 20),
('Matthew Hall', '2001-03-22', 21, 21),
('Harper Allen', '1999-09-14', 22, 22),
('Elijah Collins', '1998-05-25', 23, 23),
('Abigail Robinson', '2001-07-13', 24, 24),
('Aiden Stewart', '2000-10-10', 25, 25),
('Ella Adams', '1999-04-07', 26, 26),
('Logan Gonzalez', '2000-01-01', 27, 27),
('Lily Nelson', '2001-02-17', 28, 28),
('Mason Carter', '1999-11-08', 29, 29),
('Zoe Ramirez', '1998-12-22', 30, 30);


insert into teacher (teacher_name, teacher_course) values
('Dr. Alan Baker', 1),
('Prof. Emma Collins', 2),
('Dr. Liam Scott', 3),
('Prof. Emily Watson', 4),
('Dr. Noah Davis', 5),
('Prof. Olivia Evans', 6),
('Dr. Lucas Adams', 7),
('Prof. Ava Johnson', 8),
('Dr. William Moore', 9),
('Prof. Sophia White', 10),
('Dr. James Harris', 11),
('Prof. Mia Martin', 12),
('Dr. Benjamin Turner', 13),
('Prof. Amelia Thompson', 14),
('Dr. Ethan Young', 15),
('Prof. Harper Williams', 16),
('Dr. Daniel Brown', 17),
('Prof. Isabella Lewis', 18),
('Dr. Henry Walker', 19),
('Prof. Abigail Clark', 20),
('Dr. Charlotte Wright', 21),
('Prof. Elijah Allen', 22),
('Dr. Matthew Green', 23),
('Prof. Zoe Hall', 24),
('Dr. Logan Miller', 25),
('Prof. Mason King', 26),
('Dr. Ella Garcia', 27),
('Prof. Lily Rodriguez', 28),
('Dr. Aiden Martinez', 29),
('Prof. Sarah Taylor', 30);


insert into grade (grade_value, student_id, course_id) values
(85, 1, 1),
(92, 2, 2),
(78, 3, 3),
(88, 4, 4),
(91, 5, 5),
(95, 6, 6),
(73, 7, 7),
(82, 8, 8),
(89, 9, 9),
(94, 10, 10),
(76, 11, 11),
(84, 12, 12),
(90, 13, 13),
(87, 14, 14),
(96, 15, 15),
(74, 16, 16),
(81, 17, 17),
(86, 18, 18),
(93, 19, 19),
(77, 20, 20),
(80, 21, 21),
(79, 22, 22),
(83, 23, 23),
(88, 24, 24),
(92, 25, 25),
(85, 26, 26),
(94, 27, 27),
(89, 28, 28),
(91, 29, 29),
(97, 30, 30);

select
    student.first_name,
    specialization.name,
    course.course_name,
    teacher.teacher_name,
    grade.grade_value
from student
join course  on course.course_id = student.course
join specialization  on student.specialization = specialization.specialization_id
join teacher on course.course_id = teacher.teacher_course
join grade  on course.course_id = grade.course_id
where grade.grade_value > 80
group by student.first_name, specialization.name, course.course_name, teacher.teacher_name, grade.grade_value
having  avg(grade.grade_value) > 85
order by grade.grade_value desc;


#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------

#---------------------------------------------------------------





with StudentGrades as (

    select
        student.first_name,
        specialization.name,
        course.course_name,
        teacher.teacher_name,
        grade.grade_value
    from student

    join specialization ON student.specialization = specialization.specialization_id
    join course ON student.course = course.course_id
    join teacher ON teacher.teacher_course = course.course_id
    join grade ON grade.course_id = course.course_id
    where grade.grade_value > 80
)
select
    first_name,
    name,
    course_name,
    teacher_name,
    grade_value
from StudentGrades
group by first_name, name, course_name, teacher_name, grade_value
having avg(grade_value) > 85
order by avg(grade_value) desc;


#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#---------------------------------------------------------------
#------------------------------------------------------------------
