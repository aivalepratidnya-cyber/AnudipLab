/*
Database Schema: Consider a simple database with one tables: BankAccount 

Table: Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

*/


mysql> create database bankaccount;
Query OK, 1 row affected (0.04 sec)

mysql> use bankaccount;
Database changed
mysql> CREATE TABLE BankAccount (
    ->     account_id INT PRIMARY KEY,
    ->     account_holder_name VARCHAR(100),
    ->     account_balance DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES
    -> (101, 'Rakesh Bhosle', 45000),
    -> (102, 'Priti Patil', 25000),
    -> (103, 'Ajit Kumar', 35000),
    -> (104, 'Sorab Joshi', 50000),
    -> (105, 'Ranveer Mehta', 28000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rakesh Bhosle       |        45000.00 |
|        102 | Priti Patil         |        25000.00 |
|        103 | Ajit Kumar          |        35000.00 |
|        104 | Sorab Joshi         |        50000.00 |
|        105 | Ranveer Mehta       |        28000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.01 sec)

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rakesh Bhosle       |        45000.00 |
| Priti Patil         |        25000.00 |
| Ajit Kumar          |        35000.00 |
| Sorab Joshi         |        50000.00 |
| Ranveer Mehta       |        28000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rakesh Bhosle       |        45000.00 |
| Ajit Kumar          |        35000.00 |
| Sorab Joshi         |        50000.00 |
+---------------------+-----------------+
3 rows in set (0.01 sec)

mysql> UPDATE BankAccount
    -> SET account_balance = 60000
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0