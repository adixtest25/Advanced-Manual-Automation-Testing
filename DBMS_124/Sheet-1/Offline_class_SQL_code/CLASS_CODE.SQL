--  HOW TO OPEN A TABLE 
USE SQL_STORE;
SELECT * 
FROM CUSTOMERS;

-- HOW TO WRITE A SPECIFIC COLUMN NAME 
USE SQL_STORE;
SELECT 
	FIRST_NAME,
	LAST_NAME,
    PHONE,
    CITY
FROM CUSTOMERS;

-- --------------------------------------------------------------------------
 
--  CONDITIONALS USING (WHERE KEYWORD)

USE SQL_HR;
SELECT *
FROM EMPLOYEES
WHERE OFFICE_ID < 5;

-- I WANT SPECIFIC USER NAME 
USE SQL_HR;
SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME = "PRACHI";

-- ------------------------------------------------------------------------
 
-- ARITHMETIC OPERATORS (+, -, *, /,%)

USE SQL_STORE;
SELECT *,
       POINTS/2 AS "NEW POINTS"
FROM CUSTOMERS;

-- INCREMENT IN SALARY BY 5000
USE SQL_HR;
SELECT * ,
       SALARY + 5000 AS "BONUS SALARY"
FROM EMPLOYEES;

-- DECREMENT IN SALARY BY 1500 
USE SQL_HR;
SELECT * ,
       SALARY - 1500 AS "DECREMENT SALARY"
FROM EMPLOYEES;

-- MULTIPLY 2x SALARY  
USE SQL_HR;
SELECT * , SALARY * 2 AS "HIGH PERFORMERS SALARY"
FROM EMPLOYEES
WHERE SALARY > 60000;

-- INCREASE SO.. PERCENTAGE IN SALARY 
-- NOTE [(INCREASE 20% --> SALARY * 1.20) , (INCREASE 30% --> SALARY * 1.30 ),(INCREASE 2% -->SALARY *  1.02),(INCREASE 100% --> SALARY * 2.00),(INCREASE 210% --> SALARY * 3.00)]  

-- INCREASE BY 150% IN SALARY 
USE SQL_HR;
SELECT * , 
       SALARY * 2.50 AS "NEW SALARY" 
FROM EMPLOYEES; 

-- ------------------------------------------------------------------------------

-- LOGICAL OPERATORS (AND, OR, ,NOT ,IN ) 

-- AND  (BOTH THE VALUE SHOULD BECOME TRUE )
USE SQL_STORE;
SELECT *
FROM CUSTOMERS
WHERE POINTS < 2000 AND CUSTOMER_ID < 5;

-- OR (EITHER ONE OF THE VALUE SHOULD BE TRUE)
USE SQL_STORE;
SELECT *
FROM CUSTOMERS
WHERE POINTS < 2000 OR CUSTOMER_ID < 5; 

-- When you need to filter using multiple values 
USE SQL_STORE;
SELECT *
FROM CUSTOMERS
WHERE CUSTOMER_ID IN (5, 7, 10);

-- ----------------------------------------------------------------------------- 
 -- COMPARATOR OPERATORS (>, <, >=, <=, [!=, <>]) 
 
 -- > (Greater Than)
-- Checks if the left value is strictly greater than the right value.
SELECT * FROM employees WHERE salary > 50000;

-- < (Less Than)
-- Returns rows where the left value is strictly less than the right value.
SELECT * FROM products WHERE price < 100;

-- >= (Greater Than or Equal To)
-- True when the left value is greater than or equal to the right value.
SELECT * FROM students WHERE marks >= 75;

-- <= (Less Than or Equal To)
-- True when the left value is less than or equal to the right value.

SELECT * FROM orders WHERE quantity <= 10;

-- != or <> (Not Equal To)

-- Both mean the same thing in SQL.
-- Used to filter out values that do NOT match the given value.
SELECT * FROM users WHERE status != 'inactive';
-- or
SELECT * FROM users WHERE status <> 'inactive';

-- ---------------------------------------------------------------------------

-- DISTINCT — Fetches Unique Entries Only Once 
-- DISTINCT is used in SQL to remove duplicate rows from the result set.
-- When DISTINCT is applied to a column (or multiple columns), it returns only unique values, showing each one once, even if it appears many times in the table.

-- To remove duplicates
-- To see unique values

USE SQL_HR;
SELECT DISTINCT LAST_NAME
FROM EMPLOYEES; 

-- BETWEEN 
 
-- column_name BETWEEN value1 AND value2
USE SQL_HR;
SELECT *
FROM EMPLOYEES 
WHERE SALARY BETWEEN 50000 AND 100000;
WHERE SALARY > 50000 AND SALARY < 100000;



-- ---------------------------------------------------------------------
-- LIKE AND REGEXP 

-- LIKE:
--   % → 0 or more chars
--   _ → exactly 1 char
--   Used for simple pattern matching.

-- REGEXP:
--   ^ → start
--   $ → end
--   . → any one char
--   * → 0 or more
--   + → 1 or more
--   [] → set/range
--   [^ ] → NOT
--   {n} → exact count
--   {n,m} → range count
--   Used for advanced pattern matching. 


-- REGEXP (WORKS SIMILAR TO LIKE WITH LESS CODE)
-- 'Y$' - USED TO FETCH LAST LETTER
-- '^B' - USED TO FETCH FIRST LETTER
-- '^BE|^BO' - USED AS A LOGICAL OPERATOR 'OR'
-- '[ZYHBN]' - TO DENOTE A COLLECTION OF LETTERS
-- '[P-T]' - USED TO FETCH A RANGE OF ALPHABETICAL ORDER

-- USE SQL_STORE;
-- SELECT *
-- from customers
-- WHERE LAST_NAME REGEXP '[P-T]';
-- WHERE LAST_NAME REGEXP '[UYHBN]';
-- WHERE LAST_NAME REGEXP '[A|E]Y$';
-- WHERE LAST_NAME REGEXP 'AY$|EY$';
-- WHERE LAST_NAME REGEXP '^B[E|O]';
-- WHERE LAST_NAME REGEXP '^BE|^BO';
-- WHERE LAST_NAME REGEXP '^B';
-- WHERE LAST_NAME REGEXP 'EY$';


-- SOME QUESTIONS 
-- Q1️⃣ — Mobile numbers

-- Get phone numbers that start with 9 and can have any digits after it (0 or more).

-- Use REGEXP.

-- Q2️⃣ — Product codes

-- Get product codes where the first character is a letter (A–Z) and the rest can be anything (0 or more characters).

-- Q3️⃣ — Usernames

-- Get usernames that contain only letters, BUT can be any length (including empty string).

-- (Hint: alphabets + *)

-- Q4️⃣ — Emails

-- Get emails that end with “.com”, no matter what is before.

-- Try doing it with both:

-- LIKE

-- REGEXP

-- Q5️⃣ — Order IDs

-- Get order IDs that contain at least one digit anywhere.

-- (Hint: digit can appear 0 ya zyada but atleast 1)

-- Q6️⃣ — Names

-- Get names that contain zero or more spaces in between words.

-- (Hint: a space is " ")

-- Q7️⃣ — Postal Codes

-- Get postal codes that have exactly 6 digits.

-- Q8️⃣ — Vehicle numbers

-- Get vehicle numbers that start with KA, then any number of characters (0 or more), and end with exactly 4 digits.

-- Q9️⃣ — Strings

-- Get strings that have no digits at all.

-- (Hint: [^0-9] + *) 




-- ORDER BY (TO REARRANGE IN ASC OR DESC ORDER) 
-- BY DEFAULT ASC ORDER HOTA HAI 
USE SQL_HR;
SELECT *
FROM EMPLOYEES 
ORDER BY SALARY DESC;


-- LIMIT (TO LIMIT THE NO OF ROWS)
USE SQL_HR;
SELECT *
FROM EMPLOYEES 
ORDER BY SALARY DESC
LIMIT 3,2;








 

