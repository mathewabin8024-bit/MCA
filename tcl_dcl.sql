mysql> create table order_details( order_id int, product_name varchar(50 ),order_no int, order_date date);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into order_details values
    -> 
    -> (1,'laptop',234,'2000-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values  (2,'desktop',456,'2001-02-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values  (3,'keyboard',457,'2000-03-02');
Query OK, 1 row affected (0.03 sec)

mysql> insert into order_details values  (4,'mouse',500,'2001-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values  (5,'antivirus',501,'2002-03-02');
Query OK, 1 row affected (0.01 sec)

mysql> comit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'comit' at line 1
mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into order_details values(6,'printer',600,'2003-01-01');
Query OK, 1 row affected (0.00 sec)

mysql> insert into order_details values(7,'scanner',601,'2003-02-02');
Query OK, 1 row affected (0.00 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
|        4 | mouse        |      500 | 2001-03-02 |
|        5 | antivirus    |      501 | 2002-03-02 |
|        6 | printer      |      600 | 2003-01-01 |
|        7 | scanner      |      601 | 2003-02-02 |
+----------+--------------+----------+------------+
7 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.02 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
|        4 | mouse        |      500 | 2001-03-02 |
|        5 | antivirus    |      501 | 2002-03-02 |
+----------+--------------+----------+------------+
5 rows in set (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from order_details where order_id=4;
Query OK, 1 row affected (0.00 sec)

mysql> delete from order_details where order_id=5;
Query OK, 1 row affected (0.00 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
+----------+--------------+----------+------------+
3 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.03 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
+----------+--------------+----------+------------+
3 rows in set (0.00 sec)

mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> savepoint svp_update;
Query OK, 0 rows affected (0.00 sec)

mysql> update order_details
    -> set product_name='gaming keyboard'
    -> where order_no=457;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> insert into order_details values(8,'speaker',700,'2004-01-01');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values(9,'webcam',701,'2004-02-01');
Query OK, 1 row affected (0.00 sec)

mysql> savepoint svp_delete;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from order_details
    -> where product_name='desktop';
Query OK, 1 row affected (0.00 sec)

mysql> select*from order_details;
+----------+-----------------+----------+------------+
| order_id | product_name    | order_no | order_date |
+----------+-----------------+----------+------------+
|        1 | laptop          |      234 | 2000-03-02 |
|        3 | gaming keyboard |      457 | 2000-03-02 |
|        8 | speaker         |      700 | 2004-01-01 |
|        9 | webcam          |      701 | 2004-02-01 |
+----------+-----------------+----------+------------+
4 rows in set (0.00 sec)

mysql> rollback to svp_delete;
Query OK, 0 rows affected (0.00 sec)

mysql> select*from order_details;
+----------+-----------------+----------+------------+
| order_id | product_name    | order_no | order_date |
+----------+-----------------+----------+------------+
|        1 | laptop          |      234 | 2000-03-02 |
|        2 | desktop         |      456 | 2001-02-02 |
|        3 | gaming keyboard |      457 | 2000-03-02 |
|        8 | speaker         |      700 | 2004-01-01 |
|        9 | webcam          |      701 | 2004-02-01 |
+----------+-----------------+----------+------------+
5 rows in set (0.00 sec)

mysql> rollback to svp_update;
Query OK, 0 rows affected (0.02 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
+----------+--------------+----------+------------+
3 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> set autocommit=1;
Query OK, 0 rows affected (0.00 sec)

mysql> select*from order_details;
+----------+--------------+----------+------------+
| order_id | product_name | order_no | order_date |
+----------+--------------+----------+------------+
|        1 | laptop       |      234 | 2000-03-02 |
|        2 | desktop      |      456 | 2001-02-02 |
|        3 | keyboard     |      457 | 2000-03-02 |
+----------+--------------+----------+------------+
3 rows in set (0.00 sec)

mysql> create user user1 identified by 'password123';
Query OK, 0 rows affected (0.04 sec)

mysql> grant all privileges on order_details to user1;
Query OK, 0 rows affected (0.02 sec)

mysql> show grants for user1;
+---------------------------------------------------------------------+
| Grants for user1@%                                                  |
+---------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `user1`@`%`                                   |
| GRANT ALL PRIVILEGES ON `college_db`.`order_details` TO `user1`@`%` |
+---------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> revoke delete on order_details from user1;
Query OK, 0 rows affected (0.01 sec)

mysql> show grants for user1;
+------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for user1@%                                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `user1`@`%`                                                                                                                    |
| GRANT SELECT, INSERT, UPDATE, CREATE, DROP, REFERENCES, INDEX, ALTER, CREATE VIEW, SHOW VIEW, TRIGGER ON `college_db`.`order_details` TO `user1`@`%` |
+------------------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> show tables
    -> ;
+----------------------+
| Tables_in_college_db |
+----------------------+
| department           |
| employee             |
| order_details        |
+----------------------+
3 rows in set (0.00 sec)

