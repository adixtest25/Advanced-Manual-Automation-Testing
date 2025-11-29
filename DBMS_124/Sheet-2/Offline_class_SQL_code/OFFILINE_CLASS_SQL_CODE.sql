
-- (INNER JOIN)
 
-- EXAMPLE - 1  
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID;

-- EXAMPLE - 2 
USE SQL_HR;
SELECT * 
FROM EMPLOYEES EMP
INNER JOIN OFFICES O 
ON EMP.OFFICE_ID = O.OFFICE_ID;


-- INNER JOIN (FETCHES ONLY ONLY COMMON ENTRIES FROM BOTH THE TABLE)
USE SQL_STORE;
SELECT *
FROM CUSTOMERS C 
INNER JOIN ORDERS O 
   ON C.CUSTOMER_ID = O.CUSTOMER_ID;

USE SQL_STORE;
SELECT 
  C.customer_id,
  C.first_name,
  C.phone,
  O.order_id,
  O.order_date,
  O.shipped_date
FROM CUSTOMERS C 
JOIN ORDERS O 
   ON C.CUSTOMER_ID = O.CUSTOMER_ID;
-- --------------------------------------------------------------------------------------

-- JOINING TABLES ACROSS DATABASES 

SELECT * 
FROM SQL_INVENTORY.PRODUCTS PR1
JOIN SQL_STORE.PRODUCTS PR2
ON  PR1.PRODUCT_ID = PR2.PRODUCT_ID; 

SELECT * 
FROM SQL_INVENTORY.PRODUCTS PR1
JOIN SQL_STORE.ORDER_ITEMS PR2
ON  PR1.PRODUCT_ID = PR2.PRODUCT_ID; 

-- -----------------------------------------------------------------------------------
-- NATURAL JOIN (TABLES GETS JOIN WITHOUT SPECIFYING THE COMMON COLUMN)
-- IF THERE IS NO COMMON COLUMN THEN THE OUTPUT IS OF CROSS JOIN 

USE SQL_STORE;
SELECT * 
FROM CUSTOMERS 
NATURAL JOIN ORDERS; 

-- ------------------------------------------------------------------------------------
-- CROSS JOIN (ALL THE ROWS FROM THE 1ST TB GETS MAPPED IN FRONT OF ALL THE ROWS OF THE 2ND TB) 
USE SQL_HR;
SELECT *
FROM employees
CROSS JOIN OFFICES;

-- --------------------------------------------------------------------------------------------------------------
-- INNER JOINING MULTIPLE TABLES
USE SQL_STORE;
SELECT *
FROM CUSTOMERS C 
JOIN ORDERS O 
   ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI 
   ON O.ORDER_ID = OI.ORDER_ID 
JOIN PRODUCTS P 
   ON OI.PRODUCT_ID = P.PRODUCT_ID
JOIN SHIPPERS S 
   ON O.SHIPPER_ID = S.SHIPPER_ID
JOIN ORDER_ITEM_NOTES OIN 
   ON O.ORDER_ID = OIN.ORDER_ID;

-- ---------------------------------------------------------------------------------------------------------------------


-- COMPOUND JOIN (USED WHEN THE TABLES CONTAIN 2 COMMON COLUMNS)
USE SQL_STORE;
SELECT * 
FROM ORDER_ITEM_NOTES OIN
JOIN ORDER_ITEMS OI 
ON OIN.ORDER_ID = OI.ORDER_ID AND OIN.PRODUCT_ID = OIN.PRODUCT_ID; 


-- ---------------------------------------------------------------------------------------------------------------------------

-- SELF INNER JOIN (TO JOIN A TABLE WITH ITSELF)

-- SELF INNER JOIN (TO JOIN A TABLE WITH ITSELF)
USE SQL_HR;
SELECT *
--    E2.employee_id,
--    E2.first_name AS EMPLOYEES,
--    E1.first_name AS MANAGER-- 
FROM EMPLOYEES_NEW E1
JOIN EMPLOYEES_NEW E2
   ON E1.EMPLOYEE_ID = E2.REPORTS_TO;


USE SQL_HR;
SELECT 
  E1.EMPLOYEE_ID,
  E1.FIRST_NAME,
  E1.SALARY,
  E2.FIRST_NAME,
  E2.JOB_TITLE
FROM EMPLOYEES_NEW E1
JOIN EMPLOYEES_NEW E2
   ON E1.REPORTS_TO = E2.EMPLOYEE_ID;
   
   
   
-- --------------------------------------------------------------------------------------------------------------------------------


-- OUTER JOIN (FETCHES ALL THE ROWS FROM THE PREFERRED TB AND ONLY MATCHING ROWS FROM THE OTHER TB)
USE SQL_STORE;
SELECT *
FROM CUSTOMERS C 
RIGHT OUTER JOIN ORDERS O 
   ON C.CUSTOMER_ID = O.CUSTOMER_ID;
   
   
-- ------------------------------------------------------------------------------------------------------------------------------


-- OUTER JOINING MULTP TBS
USE SQL_STORE;
SELECT *
FROM CUSTOMERS C 
LEFT JOIN ORDERS O 
   ON C.CUSTOMER_ID = O.CUSTOMER_ID
LEFT JOIN ORDER_ITEMS OI 
   ON O.ORDER_ID = OI.ORDER_ID 
LEFT JOIN PRODUCTS P 
   ON OI.PRODUCT_ID = P.PRODUCT_ID
LEFT JOIN SHIPPERS S 
   ON O.SHIPPER_ID = S.SHIPPER_ID
LEFT JOIN ORDER_ITEM_NOTES OIN 
   ON O.ORDER_ID = OIN.ORDER_ID;
   
   
   
USE SQL_INVOICING;
  SELECT*
FROM CLIENTS C
 RIGHT JOIN INVOICES I
    ON C.client_id=I.client_id
 RIGHT JOIN PAYMENTS P
    ON I.invoice_id =P.invoice_id;

-- ------------------------------------------------------------------------------------------------------------------------------ 


-- SELF OUTER JOIN
USE SQL_HR;
SELECT 
  E1.EMPLOYEE_ID,
  E1.FIRST_NAME,
  E1.SALARY,
  E2.FIRST_NAME AS MANAGER,
  E2.JOB_TITLE
FROM EMPLOYEES_NEW E1
RIGHT JOIN EMPLOYEES_NEW E2
   ON E1.REPORTS_TO = E2.EMPLOYEE_ID;
   
   

-- ------------------------------------------------------------------------------------------------------------------------------ 

-- IMPLICIT JOIN (TB GETS JOINED W/O SPECIFYING THE WORD 'JOIN')
USE SQL_HR;
SELECT *
FROM EMPLOYEES, OFFICES
WHERE employees.OFFICE_ID = offices.office_id;

-- EXPLICIT JOIN (WE ALWAYS SPECIFY THE WORD 'JOIN')
   

-- ------------------------------------------------------------------------------------------------------------------------------ 


-- USING CLAUSE
USE SQL_STORE;
SELECT *
FROM CUSTOMERS C 
JOIN ORDERS O 
   USING (CUSTOMER_ID);
   

-- ------------------------------------------------------------------------------------------------------------------------------ 

-- UNION (USED TO JOIN QUERIES)
USE SQL_STORE;
SELECT 
   customer_id,
   first_name,
   points,
   'BRONZE CUSTOMERS' AS CATEGORY
FROM CUSTOMERS
WHERE POINTS < 1000
UNION
SELECT 
   customer_id,
   first_name,
   points,
   'SILVER CUSTOMERS' AS CATEGORY
FROM CUSTOMERS
WHERE POINTS BETWEEN 1000 AND 2500
UNION
SELECT 
   customer_id,
   first_name,
   points,
   'GOLD CUSTOMERS' AS CATEGORY
FROM CUSTOMERS
WHERE POINTS > 2500;





















 
 

