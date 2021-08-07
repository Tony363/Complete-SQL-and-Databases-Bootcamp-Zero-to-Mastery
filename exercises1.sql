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
-- SELECT COALESCE(lastName,'nameless') AS lastname ,COALESCE(name,'nameless') as firstname from "Student";