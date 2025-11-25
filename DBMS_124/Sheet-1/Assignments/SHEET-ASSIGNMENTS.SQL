-- 01. Exercise:
-- EXERCISE 1.1: SELECT FIRST_NAME, JOB_TITLE AND SALARY COLUMN FROM EMPLOYEES TABLE OF SQL_HR.
USE SQL_HR;
SELECT 
	FIRST_NAME,
    JOB_TITLE,
    SALARY
FROM EMPLOYEES;

-- EXERCISE 1.2: Use sql_hr dtabase and Write a query to display the employee_id, first_name, last_name, & salary of employees who all report to office_id 1.
USE SQL_HR;
SELECT 
	EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM EMPLOYEES
WHERE OFFICE_ID = 1;

-- 02. Exercise:
-- Write a query to display the products table of sql_store with updated 
-- unit price as 10 times of current price. 

USE SQL_STORE;
SELECT *,
	(UNIT_PRICE * 10) AS "UPDATED_UNIT_PRICE"
FROM PRODUCTS; 

-- 03. EXERCISE:
-- TABLE – Use the products table from sql_store.
-- Question 01: Write a query to display the name, unit price, and a new price with a 10% increased rate.
USE SQL_STORE;
SELECT 
	NAME,
    UNIT_PRICE,
    (UNIT_PRICE*1.1) AS "10% INCREASED RATE"
FROM PRODUCTS;

-- 04. Exercise:
-- Question: WAQT get the orders placed this year from the orders table of the sql_store database. 
-- ( assuming this year is 2019)

USE SQL_STORE;
SELECT *
FROM ORDERS
WHERE ORDER_DATE BETWEEN "2019-01-01" AND "2019-12-31";

-- 05. EXERCISE:
-- Question 01: WAQTD to get the items for order #6 where the total price is greater than 30. 
-- Use the order_items table from sql_store database.



-- 06. EXERCISE:
-- Question 02: WAQTD customers table data where the state is ‘VA’ OR ‘MA’ OR ‘CA’. 

-- 07. Exercise:
-- Question: WAQTD products table records of sql_store, where quantity_in_stock is 38, 49 OR 94.

-- 08. Exercise:
-- Question: Filter the data of customers born between 1/1/1990 and 1/1/2000.
-- Table : sql_store database & customers table.


-- USE CUSTOMERS TABLE OF SQL STORE.
-- 09. EXERCISE: GET THE CUSTOMERS WHOSE PHONE NUMBER ENDS WITH 9.
-- 10. EXERCISE: GET THE CUSTOMERS WHOSE PHONE NUMBER DOES NOT ENDS WITH 9
-- 11. EXERCISE: GET the CUSTOMERS WHOSE last_name STARTS WITH b AND ENDS WITH y
-- 12. EXERCISE: GET THE CUSTOMERS WHOSE last_name CONTAINS CAF or WIDDEL
-- 13. EXERCISE: GET THE CUSTOMERS WHOSE first_name IS OF 5 CHARACTERS.
-- 14. EXERCISE: GET THE CUSTOMERS WHOSE first_name is OF LEAST 5 CHARACTERS.

-- 15. EXERCISE: GET THE CUSTOMERS WHOSE
-- 1. FIRST NAME CONTAINS L OR V
-- 2. FIRST NAME IS ELKA OR AMBUR
-- 3. LAST NAME ENDS WITH  EY OR ON
-- 4. LAST NAME STARTS WITH MY OR CONTAINS SE
-- 5. LAST NAME CONTAINS B FOLLOWED BY R OR U
-- 6. LAST NAME CONTAINS ANY CHARACTER BETWEEEN A TO H  FOLLOWED BY E.

-- 16. EXERCISE: USE ORDERS TABLE OF SQL_STORE DATABASE & GET THE ORDERS THAT ARE NOT SHIPPED.

-- 17. EXERCISE: USE SQL_STORE DATABASE & ORDER_ITEMS TABLE. 
-- CALCULATE THE TOTAL PRICE FOR ORDER_ID 2 AND DISPLAY THE RESULT IN ASCENDING ORDER.

-- 18. EXERCISE: GET THE TOP 3 LOYAL CUSTOMERS BASED ON POINTS FROM THE ‘CUSTOMERS’ TABLE OF SQL_STORE.