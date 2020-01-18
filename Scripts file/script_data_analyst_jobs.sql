--Q1
--1793
/*SELECT COUNT(*)
FROM data_analyst_jobs;*/

--Q2
--ExxonMobil
/*SELECT company
FROM data_analyst_jobs
LIMIT 10;*/

--Q3
--21, 27
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY';*/

--Q4
--3
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;*/

--Q5
--151
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;*/

--Q6
--NE
/*SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;*/

--Q7
--881
/*SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;*/

--Q8
--230
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/

--Q9 double check, think of using HAVING
--40
--Real answer is 70, see bottom code
/*SELECT COUNT (DISTINCT company), AVG(star_rating) AS avg_rate
FROM data_analyst_jobs
WHERE review_count > 5000;*/

-- SELECT COUNT(DISTINCT company) AS count, AVG(star_rating) AS avg_rate
-- FROM data_analyst_jobs
-- WHERE review_count > 5000
SELECT COUNT(company)
FROM (SELECT company, AVG(star_rating) AS avg_rate
	FROM data_analyst_jobs
  	WHERE company IS NOT NULL
  	GROUP BY company  
  	HAVING SUM (review_count) > 5000) as test;


--Q10
--Mircosoft, 4.2 rounded
/*SELECT company, AVG(star_rating) AS avg_rate
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company, review_count
ORDER BY avg_rate DESC;*/

--Q11
--1636
/*SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'*/

--1669
/*SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'*/


--Q12
--4
--Tableau
/*SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Anal%';*/

