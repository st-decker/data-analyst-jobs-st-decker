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