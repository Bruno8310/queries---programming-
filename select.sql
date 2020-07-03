# 1.Query the existence of 1 course
select * from course where id = 1;

# 2.Query the presence of both 1 and 2 courses
select * from course where id = 1 or id = 2;

# 3.Query the student number and student name and average score of students whose average score is 60 or higher.
select studentId, name, avg(score) from student_course, student where student.id = student_course.studentId group by studentId;

# 4.Query the SQL statement of student information that does not have grades in the student_course table

select id, name, age, sex from student  left outer join student_course on student.id = student_course.studentId where courseId is null;

# 5.Query all SQL with grades

select studentName, name, score from (select name as studentName, courseId, score from student_course, student where student_course.studentId = student.id) as student_course1, course where course.id = student_course1.courseId;

# 6.Inquire about the information of classmates who have numbered 1 and also studied the course numbered 2

select id, name, age, sex, courseId from student inner join student_course on student.id = student_course.studentId where courseId = 1 or courseId = 2;

# 7.Retrieve 1 student score with less than 60 scores in descending order

select id, name, age, sex from(select * from student_course where courseId = 1 and score < 60) as student_course2, student where student.id = student_course2.studentId;

# 8.Query the average grade of each course. The results are ranked in descending order of average grade. When the average grades are the same, they are sorted in ascending order by course number.

select avg(score), courseId from student_course, course where course.id = student_course.courseId group by courseId order by avg(score) desc, courseId asc;

# 9.Query the name and score of a student whose course name is "Math" and whose score is less than 60
select studentName, score from course inner join (select name as studentName, courseId, score from student_course, student where student_course.studentId = student.id ) as student_course1 on course.id = student_course1.courseId where name = 'Math' and score < 60;
