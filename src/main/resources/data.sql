-- Courses
INSERT INTO course (id, name) VALUES (1, 'Mathematics');
INSERT INTO course (id, name) VALUES (2, 'Physics');
INSERT INTO course (id, name) VALUES (3, 'Chemistry');
INSERT INTO course (id, name) VALUES (4, 'Biology');
INSERT INTO course (id, name) VALUES (5, 'Computer Science');
INSERT INTO course (id, name) VALUES (6, 'English Literature');
INSERT INTO course (id, name) VALUES (7, 'History');
INSERT INTO course (id, name) VALUES (8, 'Economics');
INSERT INTO course (id, name) VALUES (9, 'Philosophy');
INSERT INTO course (id, name) VALUES (10, 'Statistics');

-- Students
INSERT INTO student (id, name, email) VALUES (1, 'Alice Johnson', 'alice@example.com');
INSERT INTO student (id, name, email) VALUES (2, 'Bob Smith', 'bob@example.com');
INSERT INTO student (id, name, email) VALUES (3, 'Charlie Brown', 'charlie@example.com');
INSERT INTO student (id, name, email) VALUES (4, 'Diana Prince', 'diana@example.com');
INSERT INTO student (id, name, email) VALUES (5, 'Ethan Hunt', 'ethan@example.com');
INSERT INTO student (id, name, email) VALUES (6, 'Fiona Glenanne', 'fiona@example.com');
INSERT INTO student (id, name, email) VALUES (7, 'George Miller', 'george@example.com');
INSERT INTO student (id, name, email) VALUES (8, 'Hannah Baker', 'hannah@example.com');
INSERT INTO student (id, name, email) VALUES (9, 'Ian Malcolm', 'ian@example.com');
INSERT INTO student (id, name, email) VALUES (10, 'Jasmine Khan', 'jasmine@example.com');

-- Mapping students to courses
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (1, 2);
INSERT INTO student_course (student_id, course_id) VALUES (2, 2);
INSERT INTO student_course (student_id, course_id) VALUES (2, 3);
INSERT INTO student_course (student_id, course_id) VALUES (3, 4);
INSERT INTO student_course (student_id, course_id) VALUES (3, 1);
INSERT INTO student_course (student_id, course_id) VALUES (4, 5);
INSERT INTO student_course (student_id, course_id) VALUES (4, 6);
INSERT INTO student_course (student_id, course_id) VALUES (5, 5);
INSERT INTO student_course (student_id, course_id) VALUES (6, 7);
INSERT INTO student_course (student_id, course_id) VALUES (7, 8);
INSERT INTO student_course (student_id, course_id) VALUES (8, 9);
INSERT INTO student_course (student_id, course_id) VALUES (9, 10);
INSERT INTO student_course (student_id, course_id) VALUES (10, 3);
INSERT INTO student_course (student_id, course_id) VALUES (10, 6);
