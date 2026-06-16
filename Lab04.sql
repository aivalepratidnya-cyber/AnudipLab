/*

Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.



*/



mysql> use student_managementsystem;
Database changed
mysql> create table student (StudentID int Primary key,FirstName varchar(50),LastName varchar(50));
Query OK, 0 rows affected (0.11 sec)

mysql> CREATE TABLE Course
    -> (
    ->     CourseId INT PRIMARY KEY,
    ->     CourseName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Enrollment
    -> (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentId),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseId)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO Student VALUES
    -> (1, 'John', 'Smith'),
    -> (2, 'Mary', 'Johnson'),
    -> (3, 'David', 'Brown');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Course VALUES
    -> (101, 'Database Systems'),
    -> (102, 'Programming Fundamentals'),
    -> (103, 'Web Development');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Enrollment VALUES
    -> (1, 1, 101),
    -> (2, 1, 102),
    -> (3, 2, 103),
    -> (4, 3, 101);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT
    ->     S.StudentId,
    ->     S.FirstName,
    ->     S.LastName,
    ->     C.CourseId,
    ->     C.CourseName
    -> FROM Student S
    -> INNER JOIN Enrollment E
    ->     ON S.StudentId = E.StudentID
    -> INNER JOIN Course C
    ->     ON E.CourseID = C.CourseId;
+-----------+-----------+----------+----------+--------------------------+
| StudentId | FirstName | LastName | CourseId | CourseName               |
+-----------+-----------+----------+----------+--------------------------+
|         1 | John      | Smith    |      101 | Database Systems         |
|         1 | John      | Smith    |      102 | Programming Fundamentals |
|         2 | Mary      | Johnson  |      103 | Web Development          |
|         3 | David     | Brown    |      101 | Database Systems         |
+-----------+-----------+----------+----------+--------------------------+
4 rows in set (0.02 sec)

mysql> SELECT
    ->     S.StudentId,
    ->     S.FirstName,
    ->     S.LastName,
    ->     C.CourseId,
    ->     C.CourseName
    -> FROM Student S
    -> CROSS JOIN Course C;
+-----------+-----------+----------+----------+--------------------------+
| StudentId | FirstName | LastName | CourseId | CourseName               |
+-----------+-----------+----------+----------+--------------------------+
|         3 | David     | Brown    |      101 | Database Systems         |
|         2 | Mary      | Johnson  |      101 | Database Systems         |
|         1 | John      | Smith    |      101 | Database Systems         |
|         3 | David     | Brown    |      102 | Programming Fundamentals |
|         2 | Mary      | Johnson  |      102 | Programming Fundamentals |
|         1 | John      | Smith    |      102 | Programming Fundamentals |
|         3 | David     | Brown    |      103 | Web Development          |
|         2 | Mary      | Johnson  |      103 | Web Development          |
|         1 | John      | Smith    |      103 | Web Development          |
+-----------+-----------+----------+----------+--------------------------+
9 rows in set (0.01 sec)

mysql>