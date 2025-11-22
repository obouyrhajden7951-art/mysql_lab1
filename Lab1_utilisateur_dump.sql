Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 26
Server version: 8.0.44 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE testdb
    ->   CHARACTER SET utf8mb4
    ->   COLLATE utf8mb4_unicode_ci;
Query OK, 1 row affected (0.01 sec)

mysql> USE testdb;
Database changed
mysql> CREATE TABLE utilisateur (
    ->   id    INT AUTO_INCREMENT PRIMARY KEY,
    ->   nom   VARCHAR(50) NOT NULL,
    ->   email VARCHAR(100) NOT NULL UNIQUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.16 sec)

mysql> INSERT INTO utilisateur (id, nom, email) VALUES
    -> (1, 'Alice Dupont', 'alice@example.com'),
    -> (2, 'Bob', 'bob@example.com'),
    -> (5, 'Charlie', 'charlie@example.com'),
    -> (6, 'Diana', 'diana@example.com');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM utilisateur;
+----+--------------+---------------------+
| id | nom          | email               |
+----+--------------+---------------------+
|  1 | Alice Dupont | alice@example.com   |
|  2 | Bob          | bob@example.com     |
|  5 | Charlie      | charlie@example.com |
|  6 | Diana        | diana@example.com   |
+----+--------------+---------------------+
4 rows in set (0.00 sec)

mysql> SELECT COUNT(*) AS total FROM utilisateur;
+-------+
| total |
+-------+
|     4 |
+-------+
1 row in set (0.01 sec)

mysql>