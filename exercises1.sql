-- Employees
--.1
--SELECT avg(salary)
--FROM public.salaries

--2.
--SELECT max(birth_date)
--SELECT birth_date
--FROM public.employees

--France
--1.
--SELECT count(1)
--FROM public.towns

-- World
--1.
-- SELECT count(1)
-- FROM "public"."countrylanguage"
-- WHERE isofficial = true

--2.
--SELECT avg(lifeexpectancy)
--FROM public.country

--3.
-- SELECT avg(population)
-- FROM public.city
-- WHERE countrycode = 'NLD'

/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
-- SELECT concat(firstname,' ',lastname),income
-- FROM  "public"."customers"
-- WHERE income > 50000 AND (age < 30 OR age > 50) 
-- and (country = 'Japan' OR country = 'Australia')

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/
-- SELECT SUM(totalamount)
-- FROM public.orders
-- WHERE EXTRACT(MONTH FROM orderdate) = '06'

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* 1. Question: 
* Assuming a students minimum age for the class is 15, what is the average age of a student?
*/
-- SELECT AVG(COALESCE(age, 15)) from "Student"  ;
/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
-- SELECT COALESCE(lastName,'nameless') AS lastname ,COALESCE(name,'nameless') AS firstname from "Student";

/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
-- SELECT COALESCE(address2,'No Address')  AS address
-- SELECT address2
-- FROM"public"."customers" 


/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

-- SELECT *
-- FROM public.customers
-- WHERE address2 IS NOT null;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

-- SELECT coalesce(lastName, 'Empty') AS lastName 
-- from public.customers
-- where (age IS NOT null);


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- SELECT concat(firstname,' ',lastname)
-- from public.customers
-- WHERE income < 50000  AND (age between 30 AND 50)

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
-- select avg(income)
-- from public.customers
-- where age BETWEEN 20 and 50

/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/
-- 
-- SELECT count(1)
-- FROM public.orders
-- WHERE customerid in (7888,1082,12808,9623)

/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/
-- Select Count(1)
-- from public.city
-- WHERE district in ('Zuid-Holland','Noord-Brabant','Utrecht')


/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
-- SELECT  first_name,EXTRACT (YEAR FROM AGE(birth_date)) as "age" 
-- FROM public.employees
-- WHERE first_name LIKE 'M%'


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
-- SELECT count(1)
-- FROM public.employees
-- WHERE first_name ilike 'A%r'

/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/
-- SELECT *
-- FROM public.customers
-- select count(1)
-- from public.customers
-- where zip::text like '%2%'

-- show timezone
