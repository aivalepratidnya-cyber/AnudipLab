/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */



mysql> create database studentmanagementssystem;
Query OK, 1 row affected (0.01 sec)

mysql> use studentmanagementssystem;
Database changed
mysql> create table student(StudentID varchar(10) not null primary key,Name varchar(30) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Student
    -> (StudentID, Name, Age, Address)
    -> VALUES
    -> (1, 'Rahul Sharma', 22, 'Andheri East Mumbai'),
    -> (2, 'Priya Patil', 20, 'Kharghar Navi Mumbai'),
    -> (3, 'Amit Verma', 21, 'Thane West'),
    -> (4, 'Sneha Kulkarni', 22, 'Dombivli East'),
    -> (5, 'Rohan Deshmukh', 20, 'Panvel Navi Mumbai');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+----------------+-----+----------------------+
| StudentID | Name           | Age | Address              |
+-----------+----------------+-----+----------------------+
| 1         | Rahul Sharma   |  22 | Andheri East Mumbai  |
| 2         | Priya Patil    |  20 | Kharghar Navi Mumbai |
| 3         | Amit Verma     |  21 | Thane West           |
| 4         | Sneha Kulkarni |  22 | Dombivli East        |
| 5         | Rohan Deshmukh |  20 | Panvel Navi Mumbai   |
+-----------+----------------+-----+----------------------+
5 rows in set (0.00 sec)

mysql> create table Feedback(FeedbackID varchar(10) not null primary key,StudentID varchar(10) not null,Date datetime not null,InstructorName varchar(30) not null,Feedback varchar(50) not null,foreign key(StudentID) references student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(10) | NO   | PRI | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| Date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(30) | NO   |     | NULL    |       |
| Feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> INSERT INTO Feedback
    -> VALUES
    -> ('101','1','2026-06-08','Kavita Mam','Excellent work.'),
    -> ('102','2','2026-06-08','Rajesh Sir','Good communication skills.'),
    -> ('103','3','2026-06-08','Pooja Mam','Well organized presentation.'),
    -> ('104','4','2026-06-08','Vikram Sir','Very informative session.'),
    -> ('105','5','2026-06-08','Neha Mam','Great effort and participation.');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Feedback;
+------------+-----------+---------------------+----------------+---------------------------------+
| FeedbackID | StudentID | Date                | InstructorName | Feedback                        |
+------------+-----------+---------------------+----------------+---------------------------------+
| 101        | 1         | 2026-06-08 00:00:00 | Kavita Mam     | Excellent work.                 |
| 102        | 2         | 2026-06-08 00:00:00 | Rajesh Sir     | Good communication skills.      |
| 103        | 3         | 2026-06-08 00:00:00 | Pooja Mam      | Well organized presentation.    |
| 104        | 4         | 2026-06-08 00:00:00 | Vikram Sir     | Very informative session.       |
| 105        | 5         | 2026-06-08 00:00:00 | Neha Mam       | Great effort and participation. |
+------------+-----------+---------------------+----------------+---------------------------------+
5 rows in set (0.00 sec)