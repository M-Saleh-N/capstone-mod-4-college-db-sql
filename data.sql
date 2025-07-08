INSERT INTO departments (name) VALUES
('Computer Science'),
('Mathematics'),
('Physics'),
('Literature'),
('History');

INSERT INTO students (name, email, dob) VALUES
('Esha Patel', 'esha.patel@example.com', '2002-01-15'),
('Vansh Patel', 'vansh.patel@example.com', '2001-09-22'),
('Tilak Patel', 'tilak.patel@example.com', '2000-05-18'),
('Ansh Patel', 'ansh.patel@example.com', '2002-03-10'),
('Saleh Mohamed', 'saleh.mohamed@example.com', '2001-07-25'),
('Natasha Karanja', 'natasha.karanja@example.com', '2000-11-30'),
('George Mwangi', 'george.mwangi@example.com', '2003-01-05'),
('Lucy Njeri', 'lucy.njeri@example.com', '2002-06-12'),
('Ahmed Ali', 'ahmed.ali@example.com', '2001-08-08'),
('Faith Wanjiru', 'faith.wanjiru@example.com', '2000-04-02');

INSERT INTO instructors (name, dept_id) VALUES
('Dr. Smith', 1),
('Prof. Alice', 2),
('Dr. Lee', 3),
('Mr. Kinyua', 4),
('Ms. Wambui', 5),
('Dr. Hassan', 1),
('Prof. Muriuki', 2),
('Dr. Kariuki', 3),
('Mrs. Mwende', 4),
('Prof. Omondi', 5);

INSERT INTO courses (title, dept_id, instructor_id) VALUES
('Intro to Programming', 1, 1),
('Data Structures', 1, 6),
('Calculus I', 2, 2),
('Linear Algebra', 2, 7),
('Classical Mechanics', 3, 3),
('Quantum Physics', 3, 8),
('English Literature', 4, 4),
('Modern Poetry', 4, 9),
('World History', 5, 5),
('Kenyan Politics', 5, 10);

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 3, 'A'),
(2, 4, 'B'),
(3, 5, 'C'),
(3, 6, 'A'),
(4, 7, 'B'),
(5, 8, 'A'),
(6, 9, 'C'),
(7, 10, 'B'),
(8, 1, 'A'),
(9, 2, 'C'),
(10, 3, 'B'),
(4, 4, 'A'),
(5, 5, 'B');
