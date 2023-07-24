CREATE DATABASE store_sales;
USE store_sales;
CREATE TABLE store_sales(month varchar(20) , prod_name varchar(20) , sales int);
INSERT INTO store_sales (month , prod_name , sales)
VALUES  
('JAN' , 'FRUITS', 45000),
('JAN' , 'VEGETABLES', 67000),
('JAN' , 'DAIRY' , 55000),
('FEB' , 'FRUITS' , 42000),
('FEB', 'VEGETABLES',32000),
('FEB', 'DAIRY', 52000),
('MARCH', 'FRUITS',61000),
('MARCH', 'VEGETABLES',43000),
('MARCH', 'DAIRY',92000); 
SELECT*FROM store_sales
