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
filter on first name and last name to limti the amount of data return 
and focus the filtering on a single person
*/
-- select statement to filter Mayumi Schueller
--SELECT concat(first_name,' ',last_name) AS emp
--FROM "public"."employees"
--WHERE emp LIKE 'Mayumi Shueller'
 --WHERE first_name = 'Mayumi'  AND last_name = 'Schueller'


-- SELECT first_name,last_name,hire_date
-- FROM public.employees
-- WHERE first_name='Georgi' And last_name='Facello' AND hire_date = '1986-06-26'
--     OR first_name='Bezalel' AND last_name='Simmel'

-- SELECT count(1)
-- FROM "public"."customers"
-- WHERE gender = 'F' AND (state = 'OR' OR state = 'NY') 

-- SELECT count(1)
-- from public.customers
-- WHERE NOT age = '55'

-- SELECT customerid
-- FROM public.customers
-- WHERE age > '44' AND income = '100000'

/*
Exercises 
https://github.com/mobinni/Complete-SQL-Database-Bootcamp-Zero-to-Mastery/blob/master/SQL%20Deep%20Dive/Comparison%20Operators/questions.sql
*/
--1.
-- SELECT count(1)
-- FROM public.customers
-- WHERE gender = 'F' AND state = 'OR'
--2.
-- SELECT customerid
-- FROM public.customers
-- WHERE age > '44' AND income >= '100000'
--3.
-- SELECT customerid
-- FROM public.customers
-- WHERE (age > 30 AND age < 50) AND income < 50000
--4.
-- SELECT avg(income)
-- FROM public.customers
-- WHERE (age > 20 AND age < 50)