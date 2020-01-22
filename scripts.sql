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
--70
/*SELECT COUNT(company)
SELECT company, AVG(star_rating) AS avg_rate
	FROM data_analyst_jobs
  	WHERE company IS NOT NULL
  	GROUP BY company  
  	HAVING SUM (review_count) > 5000) as test;*/
	
--Q10
--correct answer below
/*SELECT company, AVG(star_rating) AS avg_rate
	FROM data_analyst_jobs
  	WHERE company IS NOT NULL
  	GROUP BY company  
  	HAVING SUM(review_count) > 5000
	ORDER BY avg_rate DESC;*/
	
--Mircosoft, 4.2 rounded
/*SELECT company, AVG(star_rating) AS avg_rate
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company, review_count
ORDER BY avg_rate DESC;*/

--Q11
--774
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'*/

--Q12
--4
--Tableau
/*
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Anal%';*/