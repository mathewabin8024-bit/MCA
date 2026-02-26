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

mysql> show database
    -> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database
show database' at line 1
mysql> show database show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database show databases' at line 1
mysql> show database show databases
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database show databases' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| details            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> create table employee(emp_id int(10),emp_name varchar(20),design varchar(20
    -> create table employee(emp_id int(10),emp_name varchar(20),design varchar(20
[1]+  Stopped                 sudo mysql
mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ ^C
mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ create table employee(emp_id int(10),emp_name varchar(20),design varchar(20),dept_id int(10),salary int(10),joining_date date);
bash: syntax error near unexpected token `('
mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ 
mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ sude mysql
Command 'sude' not found, did you mean:
  command 'sudo' from deb sudo (1.9.9-1ubuntu2.5)
  command 'sudo' from deb sudo-ldap (1.9.9-1ubuntu2.5)
  command 'sure' from deb python3-sure (2.0.0-1build1)
Try: sudo apt install <deb name>
mca@mca-HP-Pro-Tower-280-G9-E-PCI-Desktop-PC:~$ sudo mysql
[sudo] password for mca: 
Sorry, try again.
[sudo] password for mca: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.45-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create table employee(emp_no varchar(20),emp_name varchar(20 ),design varchar(20),dept_id int(10),salary int(10),joining_date date);
ERROR 1046 (3D000): No database selected
mysql> CREATE DATABASE college_db;
Query OK, 1 row affected (0.01 sec)

mysql> USE college_db;
Database changed
mysql> create table employee(emp_no varchar(20),emp_name varchar(20 ),design varchar(20),dept_id int(10),salary int(10),joining_date date);
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> create table department(dept_id int(10),dept_name varchar(20));
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into department values(1,'HR');
Query OK, 1 row affected (0.02 sec)

mysql> insert into department values(2,'IT');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(3,'Finance');
Query OK, 1 row affected (0.03 sec)

mysql> insert into department values(4,'Admin');
Query OK, 1 row affected (0.02 sec)

mysql> insert into department values(5,'Sales');
Query OK, 1 row affected (0.02 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Admin     |
|       5 | Sales     |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> insert into employee1 values(110,'anita','typist',10000,'2000-03-02');
ERROR 1146 (42S02): Table 'college_db.employee1' doesn't exist
mysql> insert into employee values(110,'anita','typist',10000,'2000-03-02');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employee values(110,'anita','typist',1,10000,'2000-03-02');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(111,'veena','analyst',2,20000,'2001-02-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(112,'mariya','manager',3,40000,'2000-03-02');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(113,'geethu','typist',4,30000,'2001-03-02');
Query OK, 1 row affected (0.02 sec)

mysql> DELETE FROM employee;
Query OK, 4 rows affected (0.01 sec)

mysql> insert into employee values(110,'anita','typist',1,10000,'2000-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(111,'veena','analyst',2,28000,'2001-02-02');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values(112,'mariya','manager',1,40000,'2000-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(113,'geethu','typist',2,5000,'2001-03-02');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values(114,'joseph','clerk',3,20000,'2002-03-02');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(115,'alen','manager',3,42000,'2003-03-02');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(116,'anu','analyst',2,30000,'2003-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee
    -> ;
+--------+----------+---------+---------+--------+--------------+
| emp_no | emp_name | design  | dept_id | salary | joining_date |
+--------+----------+---------+---------+--------+--------------+
| 110    | anita    | typist  |       1 |  10000 | 2000-03-02   |
| 111    | veena    | analyst |       2 |  28000 | 2001-02-02   |
| 112    | mariya   | manager |       1 |  40000 | 2000-03-02   |
| 113    | geethu   | typist  |       2 |   5000 | 2001-03-02   |
| 114    | joseph   | clerk   |       3 |  20000 | 2002-03-02   |
| 115    | alen     | manager |       3 |  42000 | 2003-03-02   |
| 116    | anu      | analyst |       2 |  30000 | 2003-03-02   |
+--------+----------+---------+---------+--------+--------------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE employee
    -> ADD PRIMARY KEY (emp_id);
ERROR 1072 (42000): Key column 'emp_id' doesn't exist in table
mysql> ALTER TABLE employee ADD PRIMARY KEY (emp_no);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE department ADD PRIMARY KEY (dept_id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| emp_no       | varchar(20) | NO   | PRI | NULL    |       |
| emp_name     | varchar(20) | YES  |     | NULL    |       |
| design       | varchar(20) | YES  |     | NULL    |       |
| dept_id      | int         | YES  |     | NULL    |       |
| salary       | int         | YES  |     | NULL    |       |
| joining_date | date        | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> ALTER TABLE employee ADD constraint fk_dept foreign key(dept_id)references dapartment(dept_id);
ERROR 1824 (HY000): Failed to open the referenced table 'dapartment'
mysql> ALTER TABLE employee
    -> ADD CONSTRAINT fk_dept
    -> FOREIGN KEY (dept_id)
    -> REFERENCES department(dept_id);
Query OK, 7 rows affected (0.08 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| emp_no       | varchar(20) | NO   | PRI | NULL    |       |
| emp_name     | varchar(20) | YES  |     | NULL    |       |
| design       | varchar(20) | YES  |     | NULL    |       |
| dept_id      | int         | YES  | MUL | NULL    |       |
| salary       | int         | YES  |     | NULL    |       |
| joining_date | date        | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> desc depatment;
ERROR 1146 (42S02): Table 'college_db.depatment' doesn't exist
mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select e.emp_name,d.dept_name from employee e join department d on e.dept_id=dept_id
    -> ;
ERROR 1052 (23000): Column 'dept_id' in on clause is ambiguous
mysql> SELECT e.emp_name, d.dept_name
    -> FROM employee e
    -> JOIN department d
    -> ON e.dept_id = d.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| anita    | HR        |
| veena    | IT        |
| mariya   | HR        |
| geethu   | IT        |
| joseph   | Finance   |
| alen     | Finance   |
| anu      | IT        |
+----------+-----------+
7 rows in set (0.00 sec)

mysql> select d.dept_name from employee e
    -> join department d on 
    -> e.dept_id=d.dept_id
    -> where e.emp_name='geethu';
+-----------+
| dept_name |
+-----------+
| IT        |
+-----------+
1 row in set (0.01 sec)

mysql> select e.salary from employee e
    -> join department d on e.dept_id=d.dept_id
    -> where d.dept_name='HR';
+--------+
| salary |
+--------+
|  10000 |
|  40000 |
+--------+
2 rows in set (0.00 sec)

mysql> SELECT e.*
    -> from employee e
    -> join department d on e.dept_id=d.dept_id
    -> where e.design='Analyst'
    -> and d.dept_name='IT';
+--------+----------+---------+---------+--------+--------------+
| emp_no | emp_name | design  | dept_id | salary | joining_date |
+--------+----------+---------+---------+--------+--------------+
| 111    | veena    | analyst |       2 |  28000 | 2001-02-02   |
| 116    | anu      | analyst |       2 |  30000 | 2003-03-02   |
+--------+----------+---------+---------+--------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT e.emp_name, e.salary
    -> FROM employee e
    -> JOIN department d
    -> ON e.dept_id = d.dept_id
    -> WHERE d.dept_name = 'Finance';
+----------+--------+
| emp_name | salary |
+----------+--------+
| joseph   |  20000 |
| alen     |  42000 |
+----------+--------+
2 rows in set (0.00 sec)

mysql> SELECT e.*
    -> from employee e
    -> join department d on e.dept_id=dept_id
    -> ;
ERROR 1052 (23000): Column 'dept_id' in on clause is ambiguous
mysql> SELECT e.* from employee e join department d on e.dept_id=d.dept_id
    -> where d.dept_name not in ('Finance','HR');
+--------+----------+---------+---------+--------+--------------+
| emp_no | emp_name | design  | dept_id | salary | joining_date |
+--------+----------+---------+---------+--------+--------------+
| 111    | veena    | analyst |       2 |  28000 | 2001-02-02   |
| 113    | geethu   | typist  |       2 |   5000 | 2001-03-02   |
| 116    | anu      | analyst |       2 |  30000 | 2003-03-02   |
+--------+----------+---------+---------+--------+--------------+
3 rows in set (0.00 sec)

mysql> select d.dept_name
    -> from employee e
    -> join department d on e.dept_id=d.dept_id
    -> where e.salary=(select max(salary)
    -> from employee);
+-----------+
| dept_name |
+-----------+
| Finance   |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT d.dept_name, COUNT(e.emp_no) AS emp_count
    -> FROM department d
    -> LEFT JOIN employee e
    -> ON d.dept_id = e.dept_id
    -> GROUP BY d.dept_id, d.dept_name
    -> ORDER BY emp_count ASC
    -> LIMIT 1;
+-----------+-----------+
| dept_name | emp_count |
+-----------+-----------+
| Sales     |         0 |
+-----------+-----------+
1 row in set (0.00 sec)

mysql> SELECT d.dept_name FROM department d  JOIN employee e ON d.dept_id=e.dept_id
    -> group by d.dept_name
    -> having count(*)=(select min(emp_count) from (select count(*) as emp_count from employee group by dept_id)as temp);
+-----------+
| dept_name |
+-----------+
| HR        |
| Finance   |
+-----------+
2 rows in set (0.00 sec)

mysql> select e.emp_name
    -> from employee e
    -> where e.salary>(select avg(salary)
    -> from employee where dept_id=e.dept_id);
+----------+
| emp_name |
+----------+
| veena    |
| mariya   |
| alen     |
| anu      |
+----------+
4 rows in set (0.00 sec)

mysql> select dept_id,count(*)as
    -> number_of_dept_employee
    -> from employee group by dept_id
    -> having count(*)>2;
+---------+-------------------------+
| dept_id | number_of_dept_employee |
+---------+-------------------------+
|       2 |                       3 |
+---------+-------------------------+
1 row in set (0.00 sec)

mysql> select dept_id ,min(salary)as lowest_salary
    -> from employee group by dept_id;
+---------+---------------+
| dept_id | lowest_salary |
+---------+---------------+
|       1 |         10000 |
|       2 |          5000 |
|       3 |         20000 |
+---------+---------------+
3 rows in set (0.00 sec)

mysql> ^C
mysql> select e.dept_id,e.emp_name
    -> from employee e
    -> where e.salary=(select max(salary)from employee where dept_id=e.dept_id);
+---------+----------+
| dept_id | emp_name |
+---------+----------+
|       1 | mariya   |
|       3 | alen     |
|       2 | anu      |
+---------+----------+
3 rows in set (0.00 sec)

mysql> SELECT d.dept_name, SUM(e.salary) AS total_salary
    -> FROM department d
    -> JOIN employee e
    -> ON d.dept_id = e.dept_id
    -> GROUP BY d.dept_id, d.dept_name
    -> ORDER BY total_salary ASC
    -> LIMIT 1;
+-----------+--------------+
| dept_name | total_salary |
+-----------+--------------+
| HR        |        50000 |
+-----------+--------------+
1 row in set (0.00 sec)
mysql> select emp_name
    -> from employee
    -> where year(joining_date)=2000;
+----------+
| emp_name |
+----------+
| anita    |
| mariya   |
+----------+
2 rows in set (0.00 sec)

mysql> select emp_name from employee where month(joining_date)=8;
Empty set (0.00 sec)

