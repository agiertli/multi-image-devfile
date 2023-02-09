DROP TABLE IF EXISTS employees;

CREATE TABLE employees
(
 email_address varchar(100) NOT NULL,
  id varchar(11) NOT NULL ,
 first_name varchar(100) DEFAULT NULL,
 last_name varchar(100) DEFAULT NULL,
 PRIMARY KEY (id)
);