-- Count the number of TV shows and movies
SELECT
    type,
    COUNT(*) AS count
FROM Netflix
GROUP BY type;

-- Top 10 directors with the most content
SELECT TOP 10
    director,
    COUNT(*) AS content_count
FROM Netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY content_count DESC;

