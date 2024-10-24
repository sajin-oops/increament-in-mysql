mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| test               |
| world              |
+--------------------+
7 rows in set (0.10 sec)

mysql> use test;
Database changed

mysql> show tables;
+----------------+
| Tables_in_test |
+----------------+
| namde          |
| name           |
| orders         |
| sajin          |
| student        |
+----------------+
5 rows in set (0.07 sec)

mysql> desc orders;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| order_id     | int           | YES  |     | NULL    |       |
| customer_id  | int           | YES  |     | NULL    |       |
| order_amount | decimal(10,2) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select * from orders;
+----------+-------------+--------------+
| order_id | customer_id | order_amount |
+----------+-------------+--------------+
|        1 |           1 |      1000.00 |
|        2 |           2 |       500.00 |
|        3 |           1 |       750.00 |
|        4 |           3 |       300.00 |
|        5 |           2 |      1200.00 |
+----------+-------------+--------------+
5 rows in set (0.01 sec)


--TO INCREASE 5% IN ORDER_AMOUNT COLUMN

mysql> update orders set order_amount = order_amount * 1.05;
Query OK, 5 rows affected (0.04 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from orders;
+----------+-------------+--------------+
| order_id | customer_id | order_amount |
+----------+-------------+--------------+
|        1 |           1 |      1050.00 |
|        2 |           2 |       525.00 |
|        3 |           1 |       787.50 |
|        4 |           3 |       315.00 |
|        5 |           2 |      1260.00 |
+----------+-------------+--------------+
5 rows in set (0.00 sec)