SELECT TOP 10
    genre,
    COUNT(*) AS count
FROM (
    SELECT
        value AS genre
    FROM Netflix
    CROSS APPLY STRING_SPLIT(CAST(listed_in AS nvarchar(max)), ',')
) AS genres
GROUP BY genre
ORDER BY count DESC;
