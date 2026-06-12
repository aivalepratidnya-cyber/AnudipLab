mysql> create database j_oins;
Query OK, 1 row affected (0.03 sec)

mysql> use j_oins;
Database changed
mysql> create table department(department_id int not null primary key, department_name varchar(30) not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employeeID int primary key not null, employee_name varchar(30) not null, department_ID int , foreign key(department_ID) references department(department_ID));
Query OK, 0 rows affected (0.07 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employeeID    | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_ID | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'Mansvi',1),(2,'Sarvesh',2),(3,'Pratidnya',1),(4,'Aaradhaya',null),(5,'Priti',4);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+---------------+---------------+
| employeeID | employee_name | department_ID |
+------------+---------------+---------------+
|          1 | Mansvi        |             1 |
|          2 | Sarvesh       |             2 |
|          3 | Pratidnya     |             1 |
|          4 | Aaradhaya     |          NULL |
|          5 | Priti         |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mansvi        | HR              |
| Pratidnya     | HR              |
| Sarvesh       | IT              |
| Priti         | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mansvi        | HR              |
| Sarvesh       | IT              |
| Pratidnya     | HR              |
| Aaradhaya     | NULL            |
| Priti         | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+------------+---------------+---------------+
| employeeID | employee_name | department_ID |
+------------+---------------+---------------+
|          1 | Mansvi        |             1 |
|          2 | Sarvesh       |             2 |
|          3 | Pratidnya     |             1 |
|          4 | Aaradhaya     |          NULL |
|          5 | Priti         |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mansvi        | HR              |
| Sarvesh       | IT              |
| Pratidnya     | HR              |
| Aaradhaya     | NULL            |
| Priti         | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mansvi        | HR              |
| Pratidnya     | HR              |
| Sarvesh       | IT              |
| NULL          | Finance         |
| Priti         | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mansvi        | Marketing       |
| Mansvi        | Finance         |
| Mansvi        | IT              |
| Mansvi        | HR              |
| Sarvesh       | Marketing       |
| Sarvesh       | Finance         |
| Sarvesh       | IT              |
| Sarvesh       | HR              |
| Pratidnya     | Marketing       |
| Pratidnya     | Finance         |
| Pratidnya     | IT              |
| Pratidnya     | HR              |
| Aaradhaya     | Marketing       |
| Aaradhaya     | Finance         |
| Aaradhaya     | IT              |
| Aaradhaya     | HR              |
| Priti         | Marketing       |
| Priti         | Finance         |
| Priti         | IT              |
| Priti         | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)

mysql>