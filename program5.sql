mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ sudo mysql
[sudo] password for mca: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.45-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> ^C
mysql> ^Csert into employee(emp_no,emp_name,design,dept_id,salary,joining_date)values(120,'rahul','clerk',null,15000,'2005-06-10');
mysql> USE database_name;
ERROR 1049 (42000): Unknown database 'database_name'
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| college_db         |
| details            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.01 sec)

mysql> USE college_db;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE FindGreatest(
    ->     IN num1 INT,
    ->     IN num2 INT,
    ->     IN num3 INT
    -> )
    -> BEGIN
    ->     DECLARE greatest INT;
    -> 
    ->     IF num1 >= num2 AND num1 >= num3 THEN
    ->         SET greatest = num1;
    ->     ELSEIF num2 >= num1 AND num2 >= num3 THEN
    ->         SET greatest = num2;
    ->     ELSE
    ->         SET greatest = num3;
    ->     END IF;
    -> 
    ->     SELECT greatest AS Greatest_Number;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL FindGreatest(10, 25, 15);
+-----------------+
| Greatest_Number |
+-----------------+
|              25 |
+-----------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CALL FindGreatest(35, 25, 15);
+-----------------+
| Greatest_Number |
+-----------------+
|              35 |
+-----------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE FindFactorial(
    ->     IN num INT
    -> )
    -> BEGIN
    ->     DECLARE i INT DEFAULT 1;
    ->     DECLARE fact BIGINT DEFAULT 1;
    -> 
    ->     IF num < 0 THEN
    ->         SELECT 'Factorial not defined for negative numbers' AS Message;
    ->     ELSE
    ->         WHILE i <= num DO
    ->             SET fact = fact * i;
    ->             SET i = i + 1;
    ->         END WHILE;
    -> 
    ->         SELECT fact AS Factorial;
    ->     END IF;
    -> END //
Query OK, 0 rows affected (0.03 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL FindFactorial(5);
+-----------+
| Factorial |
+-----------+
|       120 |
+-----------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> 0.
    -> ^C
mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE FindGrade(
    ->     IN mark INT
    -> )
    -> BEGIN
    ->     IF mark >= 90 THEN
    ->         SELECT 'Grade A' AS Grade;
    ->     ELSEIF mark >= 80 AND mark < 90 THEN
    ->         SELECT 'Grade B' AS Grade;
    ->     ELSEIF mark >= 70 AND mark < 80 THEN
    ->         SELECT 'Grade C' AS Grade;
    ->     ELSEIF mark >= 60 AND mark < 70 THEN
    ->         SELECT 'Grade D' AS Grade;
    ->     ELSE
    ->         SELECT 'Grade F' AS Grade;
    ->     END IF;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL FindGrade(85);
+---------+
| Grade   |
+---------+
| Grade B |
+---------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE ReverseNumber(
    ->     IN num INT
    -> )
    -> BEGIN
    ->     DECLARE rev INT DEFAULT 0;
    ->     DECLARE rem INT;
    -> 
    ->     WHILE num > 0 DO
    ->         SET rem = num % 10;
    ->         SET rev = rev * 10 + rem;
    ->         SET num = FLOOR(num / 10);
    ->     END WHILE;
    -> 
    ->     SELECT rev AS Reversed_Number;
    -> END //
Query OK, 0 rows affected (0.03 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL ReverseNumber(1234);
+-----------------+
| Reversed_Number |
+-----------------+
|            4321 |
+-----------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE SumOfSeries(
    ->     IN n INT
    -> )
    -> BEGIN
    ->     DECLARE i INT DEFAULT 1;
    ->     DECLARE total INT DEFAULT 0;
    -> 
    ->     WHILE i <= n DO
    ->         SET total = total + i;
    ->         SET i = i + 1;
    ->     END WHILE;
    -> 
    ->     SELECT total AS Sum_of_Series;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL SumOfSeries(5);
+---------------+
| Sum_of_Series |
+---------------+
|            15 |
+---------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE account (
    ->     account_id INT PRIMARY KEY,
    ->     balance INT
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> 
mysql> INSERT INTO account VALUES (100, 10000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO account VALUES (101, 4000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO account VALUES (102, 15000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO account VALUES (103, 1000);
Query OK, 1 row affected (0.00 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE WithdrawAmount(
    ->     IN p_account_id INT,
    ->     IN p_amount INT
    -> )
    -> BEGIN
    ->     DECLARE current_balance INT;
    -> 
    ->     -- Check if account exists
    ->     SELECT balance INTO current_balance
    ->     FROM account
    ->     WHERE account_id = p_account_id;
    -> 
    ->     -- If account not found
    ->     IF current_balance IS NULL THEN
    ->         SELECT 'Account does not exist' AS Message;
    -> 
    ->     -- If balance after withdrawal is less than 1000
    ->     ELSEIF (current_balance - p_amount) < 1000 THEN
    ->         SELECT 'Withdrawal denied. Minimum balance of 1000 must be maintained.' AS Message;
    -> 
    ->     -- Otherwise allow withdrawal
    ->     ELSE
    ->         UPDATE account
    ->         SET balance = balance - p_amount
    ->         WHERE account_id = p_account_id;
    -> 
    ->         SELECT 'Withdrawal successful' AS Message;
    ->     END IF;
    -> 
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL WithdrawAmount(101, 2000);
+-----------------------+
| Message               |
+-----------------------+
| Withdrawal successful |
+-----------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL WithdrawAmount(103, 500);
+----------------------------------------------------------------+
| Message                                                        |
+----------------------------------------------------------------+
| Withdrawal denied. Minimum balance of 1000 must be maintained. |
+----------------------------------------------------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CALL WithdrawAmount(999, 1000);
+------------------------+
| Message                |
+------------------------+
| Account does not exist |
+------------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE FUNCTION SumOfDigits(num INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE sum INT DEFAULT 0;
    ->     DECLARE rem INT;
    -> 
    ->     WHILE num > 0 DO
    ->         SET rem = num % 10;
    ->         SET sum = sum + rem;
    ->         SET num = FLOOR(num / 10);
    ->     END WHILE;
    -> 
    ->     RETURN sum;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> DELIMITER ;
mysql> SELECT SumOfDigits(1234) AS Result;
+--------+
| Result |
+--------+
|     10 |
+--------+
1 row in set (0.01 sec)

mysql> CREATE TABLE employee (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     salary INT
    -> );

mysql> CREATE TABLE employee2 (     emp_id INT PRIMARY KEY,     emp_name VARCHAR(50),     salary INT );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO employee2 VALUES (1, 'Anu', 25000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO employee2 VALUES (2, 'Rahul', 30000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO employee VALUES (3, 'Meera', 28000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO employee VALUES (3, 'Meera', 28000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO employee2 VALUES (3, 'Meera', 28000);
Query OK, 1 row affected (0.02 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE FUNCTION GetSalary(p_emp_id INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE emp_salary INT;
    -> 
    ->     SELECT salary INTO emp_salary
    ->     FROM employee
    ->     WHERE emp_id = p_emp_id;
    -> 
    ->     RETURN emp_salary;
    -> END //
ERROR 1304 (42000): FUNCTION GetSalary already exists
mysql> 
mysql> INSERT INTO employee2 VALUES (2, 'Rahul', 30000);DELIMITER //
ERROR 1062 (23000): Duplicate entry '2' for key 'employee2.PRIMARY'
mysql> 
mysql> CREATE FUNCTION GetSalary(p_emp_id INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE emp_salary INT;
    -> 
    ->     SELECT salary INTO emp_salary
    ->     FROM employee
    ->     WHERE emp_id = p_emp_id;
    -> 
    ->     RETURN emp_salary;
    -> END //
ERROR 1304 (42000): FUNCTION GetSalary already exists
mysql> 
mysql> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'END' at line 1
mysql> DELIMITER;
    -> ^C
mysql> DELIMITER //
mysql> mysql> 
    -> mysql> CREATE FUNCTION GetSalary(p_emp_id INT)
    ->     -> RETURNS INT
    ->     -> DETERMINISTIC
    ->     -> BEGIN
    ->     ->     DECLARE emp_salary INT;
    ->     -> 
    ->     ->     SELECT salary INTO emp_salary
    ->     ->     FROM employee
    -> ^C
mysql> DELIMITER //
mysql> 
mysql> CREATE FUNCTION GetSalary2(p_emp_id INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE emp_salary INT;
    -> 
    ->     SELECT salary INTO emp_salary
    ->     FROM employee2
    ->     WHERE emp_id = p_emp_id;
    -> 
    ->     RETURN emp_salary;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> DELIMITER ;
mysql> SELECT GetSalary2(2) AS Salary;
+--------+
| Salary |
+--------+
|  30000 |
+--------+
1 row in set (0.01 sec)

mysql> SELECT GetSalary2(2) AS Salary;
+--------+
| Salary |
+--------+
|  30000 |
+--------+
1 row in set (0.00 sec)

mysql> SELECT GetSalary2(3) AS Salary;
+--------+
| Salary |
+--------+
|  28000 |
+--------+
1 row in set (0.00 sec)

mysql> 

