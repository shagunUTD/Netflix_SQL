SELECT TOP 10
    CAST(country AS varchar(max)) AS country,
    COUNT(*) AS content_count
FROM Netflix
WHERE country IS NOT NULL
GROUP BY CAST(country AS varchar(max))
ORDER BY content_count DESC;
