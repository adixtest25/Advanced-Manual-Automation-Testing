-- WAQTF ANY 4 IMPORTANT COLUMNS FROM CORPORATES TABLE UNDER SQL_INVENTORY DATABASE
USE SQL_INVENTORY;
SELECT 
	COLLEAGUE_ID,
    POSITION,
    REPORTING_ID,
    SALARY
FROM CORPORATES;


-- WAQTF CUSTOMERS HAVING POINTS GREATER THAN 2000 IN CUSTOMERS TB UNDER SQL_STORE DB
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS > 2000;


-- WAQTF EMPLOYEES TABLE FROM HR DB AND GIVE AN INCREMENT OF 5K TO EVERYBODY AND CALL IT DIWALI_BONUS
USE SQL_HR;
SELECT * ,
	   SALARY + 5000 AS "DIWALI BONUS"
FROM EMPLOYEES;

-- WAQTF INVOICE_TOTAL GREATER THAN 150 AND CLIENT_ID > 2 IN INVOICES TB UNDER INVOICING DB
USE SQL_INVOICING;
SELECT * 
FROM INVOICES 
WHERE (INVOICE_TOTAL > 150 ) AND (CLIENT_ID > 2);

-- WAQTF ONLY THOSE OFFICE_ID WHICH BELONG TO MAHARASHTRA AND GUJARAT STATES IN OFFICES TB UNDER HR DB
USE SQL_HR;
SELECT OFFICE_ID
FROM OFFICES
WHERE STATE IN ("MH","GH");

-- FETCH ONLY 1,2,3,4,6,7,8,9,11,12 ID's FROM OFFICES TB UNDER HR DB
USE SQL_HR;
SELECT * 
FROM OFFICES
WHERE NOT OFFICE_ID IN (5,10);

-- WAQTF NULL ENTRIES IN REPORTS_TO COLUMN OF EMP TB UNDER HR DB
USE SQL_HR;
SELECT * 
FROM EMPLOYEES
WHERE REPORTS_TO IS NULL;


-- WAQTF ALL OFFICE_ID EXCEPT 2 IN EMP TB UNDER HR DB (USE COMP OPERATOR)
USE SQL_HR;
SELECT * 
FROM EMPLOYEES
WHERE OFFICE_ID != 2;

-- WAQTF ONLY THOSE EMPLOYEES EARNING SALARY ABOVE 1L BUT YOU HAVE TO COMPULSORILY USE 'NOT' ALSO IN EMP TB UNDER HR DB
USE SQL_HR;
SELECT * 
FROM EMPLOYEES
WHERE NOT (SALARY < 100000);

-- WAQT GIVE AN INCREMENT OF 25% TO ONLY THOSE EMPLOYEES REPORTING TO OFFICE_ID 1, 2 IN EMP_NEW TB UNDER HR DB
USE SQL_HR;
SELECT * ,
		SALARY * 1.25 AS "INCREMENT SALARY"
FROM EMPLOYEES
WHERE OFFICE_ID IN (1,2);


-- WAQTF DISTINCT CLIENT_ID's FROM INVOICES TB UNDER INV DB
USE SQL_INVOICING;
SELECT DISTINCT CLIENT_ID
FROM CLIENTS;

-- WAQTF CUST EARNING POINTS BETW 500 AND 1500 IN CUST TB UNDER STORE DB
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS BETWEEN 500 AND 1500;

-- WAQTF CUST HAVING 0 AT ANY POSITION EXCEPT FIRST IN PHONE NUMBER FIELD IN CUST TB UNDER STORE DB
-- USE SQL_STORE;
-- SELECT * 
-- FROM CUSTOMERS 
-- WHERE PHONE REGEXP "^[1-9][0-9]*0[0-9]*$"; 
-- FOR EXAMPLE: 12304545,1003440,

-- ANS (TYP1)
SELECT *
FROM CUSTOMERS
WHERE PHONE REGEXP '^[1-9]' AND PHONE REGEXP 0;

-- ANS (TYP2)
SELECT * 
FROM CUSTOMERS 
WHERE PHONE NOT LIKE "0%" AND PHONE LIKE "%0%";


-- WAQTF CUST HAVING 'M' ANYWHERE IN FIRST_NAME FIELD IN CUST TB UNDER STORE DB
-- ANS (TYP-1)
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE FIRST_NAME LIKE "%M%";

-- ANS (TYP-2)
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE FIRST_NAME REGEXP "M";



-- WAQTF EMPLOYEES HAVING EITHER 'BH' AS THE STARTING TWO LETTERS OR 'GH' AS THE END TWO LETTERS IN LAST NAME COLUMN OF EMP TB UNDER HR DB (USE REGEXP)
USE SQL_HR;
SELECT * 
FROM EMPLOYEES
WHERE LAST_NAME REGEXP "^BH|GH$";


-- WAQT FETCH CUSTOMERS (STORE DB)EARNING POINTS UNDER 2K AND REARRANGE THE OUTPUT IN DESC ORDER
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS > 2000 
ORDER BY POINTS DESC;




-- WAQTF COSTLIEST 3 INVOICE TOTAL IN INV TB UNDER INVOICING DB
USE SQL_INVOICING;
SELECT INVOICE_TOTAL
FROM INVOICES
ORDER BY INVOICE_TOTAL DESC
LIMIT 3;





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 45 questions total (15 easy) + 15(medium) + 15(Hard) 


-- (EASY - 15 )
-- Use sql_store: select all columns from customers. 
USE SQL_STORE;
SELECT *
FROM CUSTOMERS;

-- Use sql_store: select first_name, last_name, city from customers.
USE SQL_STORE;
SELECT 
	FIRST_NAME,
    LAST_NAME,
    CITY
FROM CUSTOMERS;

-- Use sql_hr: select all employees where office_id < 5.
USE SQL_HR;
SELECT * 
FROM EMPLOYEES 
WHERE OFFICE_ID < 5;

-- Use sql_hr: select employee rows where first_name = 'Prachi'.
USE SQL_HR;
SELECT * 
FROM EMPLOYEES
WHERE FIRST_NAME = "PRACHI";


-- Use sql_store: show customers with points < 1000.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS < 1000;

-- Use sql_store: show products with quantity_in_stock >= 70.
USE SQL_STORE;
SELECT * 
FROM PRODUCTS
WHERE QUANTITY_IN_STOCK >=70;


-- Use sql_store: select *, points/2 AS new_points from customers.

USE SQL_STORE;
SELECT *,
	POINTS/2 AS "NEW POINTS"
FROM CUSTOMERS;


-- For every employee, display their salary plus an additional 5000.

USE SQL_HR;
SELECT *,
	SALARY + 5000 AS "5K INCREMENT"
FROM EMPLOYEES;

-- Show employees who earn more than 60000 and display their salary doubled.
USE SQL_HR;
SELECT *,
	SALARY * 2 AS "DOUBLED SALARY"
FROM EMPLOYEES
WHERE SALARY > 60000;

-- Get customer records whose IDs are 1, 5, or 10.

USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE CUSTOMER_ID IN (1,5,10);

-- Fetch all invoices that have received any payment.
USE SQL_INVOICING;
SELECT * 
FROM INVOICES
WHERE PAYMENT_TOTAL != 0;

-- Show the top five customers ranked by highest points.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
ORDER BY POINTS DESC 
LIMIT 5;

-- Display all products stored in the inventory database.
USE SQL_INVENTORY;
SELECT * 
FROM PRODUCTS;

-- Retrieve customers whose last name begins with M.

USE SQL_STORE;
SELECT * 
FROM CUSTOMERS 
WHERE LAST_NAME REGEXP "^M";


-- Show invoices created within the year 2019.
USE SQL_INVOICING;
SELECT * 
FROM INVOICES 
WHERE INVOICE_DATE BETWEEN "2019-01-01" AND "2019-12-31";


-- ----------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------------------
-- (MEDIUM 15) 


-- Display the unique last names of all employees.
USE SQL_HR;
SELECT DISTINCT LAST_NAME
FROM EMPLOYEES;

-- Get all customers whose phone numbers begin with the digit 7.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS 
WHERE PHONE REGEXP "^7";


-- List customers whose last names end with the letter “y”.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS 
WHERE LAST_NAME REGEXP "Y$";

-- Retrieve customers who have fewer than 2000 points and also have IDs below 5
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS < 2000 AND 
      CUSTOMER_ID < 5;
      
-- Retrieve customers who either have fewer than 2000 points or have IDs below 5.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS
WHERE POINTS < 2000 OR
      CUSTOMER_ID < 5;

-- From order items, show all entries where the quantity purchased is more than 5.

USE SQL_STORE;
SELECT * 
FROM ORDER_ITEMS
WHERE QUANTITY > 5;

-- Display all products whose name includes the word “Plate”.
USE SQL_STORE;
SELECT * 
FROM PRODUCTS 
-- WHERE NAME LIKE "%PLATE%";
WHERE NAME REGEXP "^.*PLATE.*$";

-- For every employee, show their salary after increasing it by 150%.
USE SQL_HR;
SELECT SALARY, 
		SALARY * 2.5 AS "NEW SALARY"
FROM EMPLOYEES;



-- Find products whose names contain two consecutive vowels (like “aa”, “ee”, etc.).

USE SQL_STORE;
SELECT * 
FROM PRODUCTS 
-- WHERE NAME LIKE "%AA%" OR 
--            NAME LIKE "%EE%" OR 
--            NAME LIKE "%II%" OR 
--            NAME LIKE "%OO%" OR 
--            NAME LIKE "%UU%" OR 
--            NAME LIKE "%TT%";
--                OR 
-- WHERE NAME REGEXP "^.*AA.*$"; 
WHERE NAME REGEXP "AA" OR NAME REGEXP "EE" OR NAME REGEXP "II" OR NAME REGEXP "OO" OR NAME REGEXP "UU";



-- Show invoices that were paid and list them in order of earliest payment date.
USE SQL_INVOICING;
SELECT * 
FROM INVOICES 
WHERE PAYMENT_TOTAL !=0
ORDER BY PAYMENT_DATE;


-- Group invoices by client and display how many invoices each client has along with their minimum and maximum invoice totals.

USE SQL_INVOICING;
SELECT 
	CLIENT_ID,
    COUNT(INVOICE_ID),
    MIN(INVOICE_TOTAL),
    MAX(INVOICE_TOTAL)
FROM INVOICES
GROUP BY CLIENT_ID;

-- Calculate the total bill amount for each order using quantity and unit price.

USE SQL_STORE;
SELECT 
	ORDER_ID,
    SUM(QUANTITY * UNIT_PRICE) AS "TOTAL_BILL_AMOUNT"
FROM ORDER_ITEMS
GROUP BY ORDER_ID;


-- From the above totals, display only orders where the bill exceeds 90.

USE SQL_STORE;
SELECT 
	ORDER_ID,
    SUM(QUANTITY * UNIT_PRICE) AS "TOTAL_BILL_AMOUNT"
FROM ORDER_ITEMS
GROUP BY ORDER_ID
HAVING TOTAL_BILL_AMOUNT > 90;

-- Retrieve customers whose city name has exactly six characters.
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS 
WHERE CITY LIKE "______";

-- List invoice numbers that contain at least one digit.

USE SQL_INVOICING;
SELECT * 
FROM INVOICES 
WHERE NUMBER REGEXP '[0-9]';

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------


-- HARD (15) 
-- Find all customers whose phone numbers contain at least one “9”.

-- List products whose names begin with any letter from A to F.

-- For each client, calculate their average invoice amount and return only the ones with an average above 150.

-- Show customers whose first names contain only letters and no digits at all.

-- Display employees whose salary ends with two zeros.

-- List product names consisting of three or more separate words.

-- Show orders that have been shipped and sort them from most recent to oldest.

-- Display payments greater than 50 made using the payment method labeled as “1”.

-- List orders whose combined billing total is between 20 and 150.

-- Show corporate employees who joined after January 1, 2023.

-- From customers, show only those whose last names are purely alphabetical and have at least 1000 points.

-- Display customers whose first names are between 4 and 7 characters long.

-- Show invoice numbers that include at least one alphabetical letter.

-- List all order item notes that begin with the word “first” or “second”.

-- For HR data, show office IDs along with how many employees work there, but only return offices that have more than two employees. 


