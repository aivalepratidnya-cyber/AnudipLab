/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/


mysql> create database student_info;
Query OK, 1 row affected (0.03 sec)

mysql> use student_info;
Database changed
mysql> create table student (stud_id int primary key, FirstName varchar(50), LastName varchar(50),Age int, Phoneno varchar(15),Address varchar(100));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO student (stud_id, FirstName, LastName, Age, Phoneno, Address) VALUES(01, 'Ahana', 'Mishra', 20, '9876543210', 'Dilhi'),(02, 'Pranali', 'Patil', 21, '9876543211', 'Mumbai'),(03, 'Rekha', 'shastri', 19, '9876543212', 'navi mumbai'),(4, 'Sunaina', 'Verma', 22, '9876543213', 'Pune'),(5, 'Karan', 'Prajapati', 20, '9876543214', 'MP');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+-----------+------+------------+-------------+
| stud_id | FirstName | LastName  | Age  | Phoneno    | Address     |
+---------+-----------+-----------+------+------------+-------------+
|       1 | Ahana     | Mishra    |   20 | 9876543210 | Dilhi       |
|       2 | Pranali   | Patil     |   21 | 9876543211 | Mumbai      |
|       3 | Rekha     | shastri   |   19 | 9876543212 | navi mumbai |
|       4 | Sunaina   | Verma     |   22 | 9876543213 | Pune        |
|       5 | Karan     | Prajapati |   20 | 9876543214 | MP          |
+---------+-----------+-----------+------+------------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM student
    -> ORDER BY LastName ASC;
+---------+-----------+-----------+------+------------+-------------+
| stud_id | FirstName | LastName  | Age  | Phoneno    | Address     |
+---------+-----------+-----------+------+------------+-------------+
|       1 | Ahana     | Mishra    |   20 | 9876543210 | Dilhi       |
|       2 | Pranali   | Patil     |   21 | 9876543211 | Mumbai      |
|       5 | Karan     | Prajapati |   20 | 9876543214 | MP          |
|       3 | Rekha     | shastri   |   19 | 9876543212 | navi mumbai |
|       4 | Sunaina   | Verma     |   22 | 9876543213 | Pune        |
+---------+-----------+-----------+------+------------+-------------+
5 rows in set (0.00 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(50)  | YES  |     | NULL    |       |
| LastName  | varchar(50)  | YES  |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Phoneno   | varchar(15)  | YES  |     | NULL    |       |
| Address   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)