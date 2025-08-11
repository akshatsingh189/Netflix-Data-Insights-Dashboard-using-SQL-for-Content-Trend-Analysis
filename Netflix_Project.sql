-- Netflix Project
CREATE TABLE projectt(
show_id	VARCHAR(10),
typee VARCHAR(10),
title VARCHAR(150),
director VARCHAR(250),	
casts VARCHAR(1000),
country	VARCHAR(150),
date_added VARCHAR(50),
release_year INT,	
rating VARCHAR(10),
duration VARCHAR(15),
listed_in VARCHAR(100),
descriptions VARCHAR(250)
);

SELECT * FROM projectt;

SELECT COUNT(*) as total_content FROM projectt;

SELECT DISTINCT typee FROM projectt;

--1ST QUESTION
SELECT typee,
COUNT (*) as total_content
FROM projectt
GROUP BY typee;

SELECT
STRING_TO_ARRAY(country,',') as new_country
FROM projectt;

--2ND QUESTION
SELECT typee,
rating,
COUNT(*)
FROM projectt
GROUP BY 1,2
ORDER BY 1,3 ASC;

--3RD QUESTION
SELECT *
FROM projectt
WHERE (release_year=2020 AND typee = 'Movie');

--4TH QUESTION
SELECT
UNNEST(STRING_TO_ARRAY(country,','))as new_country,
COUNT(show_id) as total_content
FROM projectt
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

--5TH QUESTION
SELECT * FROM projectt
WHERE
typee ='Movie'
AND
duration=(SELECT MAX(duration) FROM projectt)

--6TH QUESTION
SELECT * FROM projectt
WHERE release_year<=((SELECT MAX(release_year) FROM projectt) - 5)
ORDER BY release_year DESC;

SELECT * FROM projectt
WHERE 
TO_DATE(date_added,'Month DD, YYYY') >=CURRENT_DATE - INTERVAL '5 years'

--7TH QUESTION
SELECT
UNNEST(STRING_TO_ARRAY(director,','))as new_director,
COUNT(show_id) as total_content
FROM projectt
GROUP BY 1
ORDER BY 2 DESC;

SELECT
UNNEST(STRING_TO_ARRAY(director,','))as new_director,
COUNT(show_id) as total_content
FROM projectt
WHERE director='Rajiv Chilaka'
GROUP BY 1
ORDER BY 2 DESC;

SELECT *
FROM projectt
WHERE director LIKE '%Rajiv Chilaka%'

SELECT *
FROM projectt
WHERE director ILIKE '%Rajiv Chilaka%'
-- FOR CASE SENSITIVE 

SELECT *
FROM projectt
WHERE director = 'Rajiv Chilaka'

--8TH QUESTION
SELECT * FROM projectt
WHERE typee = 'TV Show'
AND
SPLIT_PART(duration, ' ', 1)::numeric>5

--9TH QUESTION
SELECT
UNNEST(STRING_TO_ARRAY(listed_in,','))as genre,
COUNT(show_id)
FROM projectt
GROUP BY 1
ORDER BY 2 DESC;

--10TH QUESTION
SELECT
UNNEST(STRING_TO_ARRAY(country,','))as new_country,
COUNT(show_id)
FROM projectt
WHERE country='India'
GROUP BY 1
ORDER BY 2 DESC;

SELECT *
FROM projectt
WHERE country='India'

SELECT 
EXTRACT( YEAR FROM TO_DATE(date_added,'Month DD, YYYY')) as year,
COUNT (*) as yearly_content,
ROUND(
COUNT (*)::numeric/(SELECT COUNT(*) FROM projectt WHERE country='India')::numeric *100
,2) as average_content_per_year
FROM projectt
WHERE country='India'
GROUP BY 1

--11TH QUESTION
SELECT * FROM projectt
WHERE
typee ='Movie'
AND
listed_in ILIKE '%Documentaries%'

--12TH QUESTION
SELECT * FROM projectt
WHERE
director IS NULL

--13TH QUESTION
SELECT * FROM projectt
WHERE
typee ='Movie'
AND
casts ILIKE '%Salman Khan%'
AND
release_year > 2014


SELECT * FROM projectt
WHERE
typee ='Movie'
AND
casts ILIKE '%Salman Khan%'
AND
release_year > EXTRACT(YEAR FROM CURRENT_DATE) -10

--14TH QUESTION
SELECT
UNNEST(STRING_TO_ARRAY(casts,','))as actors,
COUNT(show_id) total_movies_performed
FROM projectt
WHERE country ILIKE '%India'
GROUP BY actors
ORDER BY total_movies_performed DESC
LIMIT 10

SELECT
show_id, casts,
UNNEST(STRING_TO_ARRAY(casts,','))
FROM projectt


--15TH QUESTION

SELECT * FROM projectt
WHERE 
descriptions ILIKE '%kill'
OR
descriptions ILIKE '%violence'



