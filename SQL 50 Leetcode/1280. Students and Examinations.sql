"""
Table: Students

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+
student_id is the primary key (column with unique values) for this table.
Each row of this table contains the ID and the name of one student in the school.
 

Table: Subjects

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+
subject_name is the primary key (column with unique values) for this table.
Each row of this table contains the name of one subject in the school.
 

Table: Examinations

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+
There is no primary key (column with unique values) for this table. It may contain duplicates.
Each student from the Students table takes every course from the Subjects table.
Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
 

Write a solution to find the number of times each student attended each exam.

Return the result table ordered by student_id and subject_name.

The result format is in the following example.

 

Example 1:

Input: 
Students table:
+------------+--------------+
| student_id | student_name |
+------------+--------------+
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |
+------------+--------------+
Subjects table:
+--------------+
| subject_name |
+--------------+
| Math         |
| Physics      |
| Programming  |
+--------------+
Examinations table:
+------------+--------------+
| student_id | subject_name |
+------------+--------------+
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |
+------------+--------------+
Output: 
+------------+--------------+--------------+----------------+
| student_id | student_name | subject_name | attended_exams |
+------------+--------------+--------------+----------------+
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |
+------------+--------------+--------------+----------------+
Explanation: 
The result table should contain all students and all subjects.
Alice attended the Math exam 3 times, the Physics exam 2 times, and the Programming exam 1 time.
Bob attended the Math exam 1 time, the Programming exam 1 time, and did not attend the Physics exam.
Alex did not attend any exams.
John attended the Math exam 1 time, the Physics exam 1 time, and the Programming exam 1 time.
"""

-- Write your PostgreSQL query statement below
SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.student_id) AS attended_exams
FROM Students  
CROSS JOIN Subjects
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id 
                        AND Subjects.subject_name = Examinations.subject_name 
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name;

"""
Step by Step Process:
Table Joins: We start by joining the Students and Subjects tables to ensure that all combinations of students and subjects are considered. This is achieved using a CROSS JOIN.

SELECT Students.student_id, Students.student_name, Subjects.subject_name
FROM Students  
CROSS JOIN Subjects;
The result of this step creates a temporary table with all possible combinations of students and subjects.

LEFT JOIN with Examinations: Next, we perform a LEFT JOIN with the Examinations table to include information about the exams attended by students. The condition for the join is that both the student ID and subject name must match between the Students and Examinations tables.

SELECT Students.student_id, Students.student_name, Subjects.subject_name
FROM Students  
CROSS JOIN Subjects 
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id 
                      AND Subjects.subject_name = Examinations.subject_name;
This step ensures that we capture all students and subjects, even if there are no corresponding exam records.

Counting Exam Attendances: We use the COUNT function to determine the number of times each student attended each exam. The COUNT function is applied to the Examinations.student_id column.

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.student_id) as attended_exams
FROM Students  
CROSS JOIN Subjects 
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id 
                      AND Subjects.subject_name = Examinations.subject_name;
Now, each row includes the student ID, student name, subject name, and the count of exams attended by that student for each subject.

GROUP BY Clause: To aggregate the counts correctly, we use the GROUP BY clause. We group the results based on the student ID, student name, and subject name.

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.student_id) as attended_exams
FROM Students  
CROSS JOIN Subjects 
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id 
                      AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name;
This ensures that we get a count of attended exams for each student and each subject.

ORDER BY Clause: Finally, we use the ORDER BY clause to sort the result set. We order the rows by student ID and subject name.

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.student_id) as attended_exams
FROM Students  
CROSS JOIN Subjects 
LEFT JOIN Examinations ON Students.student_id = Examinations.student_id 
                      AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name;
The result is a well-organized table showing the number of times each student attended each exam, ordered by student ID and subject name.
"""
