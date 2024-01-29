-- For descending order
SELECT TOP 1
    title,
    duration
FROM Netflix
ORDER BY
    CASE WHEN CHARINDEX('h', duration) > 0 THEN CAST(SUBSTRING(duration, 1, CHARINDEX('h', duration) - 1) AS INT) ELSE 0 END DESC,
    CASE WHEN CHARINDEX('m', duration) > 0 THEN CAST(SUBSTRING(duration, CHARINDEX('h', duration) + 1, CHARINDEX('m', duration) - CHARINDEX('h', duration) - 1) AS INT) ELSE 0 END DESC;

-- For ascending order
SELECT TOP 1
    title,
    duration
FROM Netflix
ORDER BY
    CASE WHEN CHARINDEX('h', duration) > 0 THEN CAST(SUBSTRING(duration, 1, CHARINDEX('h', duration) - 1) AS INT) ELSE 0 END ASC,
    CASE WHEN CHARINDEX('m', duration) > 0 THEN CAST(SUBSTRING(duration, CHARINDEX('h', duration) + 1, CHARINDEX('m', duration) - CHARINDEX('h', duration) - 1) AS INT) ELSE 0 END ASC;
