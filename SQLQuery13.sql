SELECT TOP 10
    title,
    DATALENGTH(title) AS title_length
FROM Netflix
WHERE type = 'Movie'
ORDER BY title_length DESC;
