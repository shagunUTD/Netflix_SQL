SELECT
    YEAR(date_added) AS year,
    COUNT(*) AS content_count
FROM Netflix
GROUP BY YEAR(date_added)
ORDER BY YEAR(date_added);
