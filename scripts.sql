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