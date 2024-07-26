
nitt@OptiPlex:~$ sudo mysql
[sudo] password for nitt:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.37-0ubuntu0.22.04.3 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT YEAR('2024-07-25') AS Year;
+------+
| Year |
+------+
| 2024 |
+------+
1 row in set (0.00 sec)

mysql> SELECT STR_TO_DATE('2024-07-25', '%Y-%m-%d') AS ValidDate;
+------------+
| ValidDate  |
+------------+
| 2024-07-25 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT table_schema AS `Database`,
     ->        SUM(data_length + index_length) / 1024 / 1024 AS `Size (MB)`
     -> FROM information_schema.tables
     -> GROUP BY table_schema;
+--------------------+------------+
| Database           | Size (MB)  |
+--------------------+------------+
| mysql              | 2.59375000 |
| information_schema | 0.00000000 |
| performance_schema | 0.00000000 |
| sys                | 0.01562500 |
| yuvraj             | 0.12500000 |
+--------------------+------------+
5 rows in set (0.01 sec)

mysql> SELECT CURRENT_TIME() AS `Current Time`;
+--------------+
| Current Time |
+--------------+
| 21:39:17     |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD('2024-07-25', INTERVAL 1 DAY) AS `Next Day`;
+------------+
| Next Day   |
+------------+
| 2024-07-26 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT CURRENT_DATE() AS `Database Date`;
+---------------+
| Database Date |
+---------------+
| 2024-07-25    |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT DATABASE() AS `Current Database`;
+------------------+
| Current Database |
+------------------+
| NULL             |
+------------------+
1 row in set (0.00 sec)

mysql> SELECT USER() AS `Current User`;
+----------------+
| Current User   |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT VERSION() AS `MySQL Version`;
+-------------------------+
| MySQL Version           |
+-------------------------+
| 8.0.37-0ubuntu0.22.04.3 |
+-------------------------+
1 row in set (0.00 sec)

mysql> SELECT 10 | 5 AS `Bitwise OR`,
     ->        10 ^ 5 AS `Bitwise XOR`,
     ->        10 & 5 AS `Bitwise AND`;
+------------+-------------+-------------+
| Bitwise OR | Bitwise XOR | Bitwise AND |
+------------+-------------+-------------+
|         15 |          15 |           0 |
+------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT DATEDIFF('2024-07-25', '2024-07-20') AS `Date Difference  
(Days)`;
+------------------------+
| Date Difference (Days) |
+------------------------+
|                      5 |
+------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 1 DAY) AS `Tomorrow`;
+------------+
| Tomorrow   |
+------------+
| 2024-07-26 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(NOW(), INTERVAL 2 HOUR + 5000 MINUTE) AS `New Date`;
ERROR 1064 (42000): You have an error in your SQL syntax; check the  
manual that corresponds to your MySQL server version for the right  
syntax to use near '+ 5000 MINUTE) AS `New Date`' at line 1
mysql> SELECT FLOOR(5.7) AS `Floor`,
     ->        CEILING(5.7) AS `Ceil`,
     ->        POWER(2, 3) AS `Power`,
     ->        LOG(10) AS `Logarithm`,
     ->        10 % 3 AS `Modulus`,
     ->        ROUND(5.7) AS `Rounded`,
     ->        TRUNCATE(5.7, 0) AS `Truncated`;
+-------+------+-------+-------------------+---------+---------+-----------+
| Floor | Ceil | Power | Logarithm         | Modulus | Rounded | Truncated |
+-------+------+-------+-------------------+---------+---------+-----------+
|     5 |    6 |     8 | 2.302585092994046 |       1 |       6 |         5 |
+-------+------+-------+-------------------+---------+---------+-----------+
1 row in set (0.00 sec)

mysql> SELECT *
     -> FROM employees
     -> WHERE first_name REGEXP '^[A-Za-z]+$';
ERROR 1046 (3D000): No database selected
mysql> SELECT IF('hello' = 'world', 'yes', 'no') AS `Comparison`;
+------------+
| Comparison |
+------------+
| no         |
+------------+
1 row in set (0.00 sec)

mysql> SELECT marks,
     ->        IF(marks >= 90, 'A',
     ->           IF(marks >= 80, 'B',
     ->              IF(marks >= 70, 'C',
     ->                 IF(marks >= 60, 'D', 'F')
     ->              )
     ->           )
     ->        ) AS `Grade`
     -> FROM student_marks;
ERROR 1046 (3D000): No database selected
mysql> SELECT marks,
     ->        IF(marks >= 90, 'A',
     ->           IF(marks >= 80, 'B',
     ->              IF(marks >= 70, 'C',
     ->                 IF(marks >= 60, 'D', 'F')
     ->              )
     ->           )
     ->        ) AS `Grade`
     -> FROM student_marks;
ERROR 1046 (3D000): No database selected
mysql> SELECT IFNULL(10 / NULLIF(0, 0), 'Expression is NULL') AS `Result`;
+--------------------+
| Result             |
+--------------------+
| Expression is NULL |
+--------------------+
1 row in set (0.00 sec)

mysql>

