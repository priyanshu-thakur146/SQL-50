SELECT ROUND(
    COUNT(DISTINCT a.player_id) /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) as fraction 
FROM Activity AS a
JOIN Activity AS b
    ON a.player_id = b.player_id
WHERE (b.player_id, b.event_date) IN (
    SELECT player_id, MIN(event_date)
    FROM Activity
    GROUP BY player_id
)
AND DATEDIFF(a.event_date, b.event_date) = 1;