-- 512. Game Play Analysis II

SELECT player_id, device_id
FROM Activity
WHERE (player_id, event_date) IN 
    (
        SELECT player_id, MIN(event_date) AS event_date
        FROM Activity
        GROUP BY 1
    );
