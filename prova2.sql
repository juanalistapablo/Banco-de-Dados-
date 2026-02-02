/* 1 Snapchat*/
SELECT
    a.age_bucket,
    (t1.time_open / (t1.time_send + t1.time_open)) * 100.0 AS open_perc,
    (t1.time_send / (t1.time_send + t1.time_open)) * 100.0 AS send_perc
FROM (
    SELECT 
        user_id,
        MAX(CASE WHEN activity_type = 'open' THEN time_spent END) AS time_open,
        MAX(CASE WHEN activity_type = 'send' THEN time_spent END) AS time_send
    FROM activities
    WHERE activity_type IN ('open', 'send')
    GROUP BY user_id
) t1
JOIN age_breakdown a 
ON t1.user_id = a.user_id;

/* 2  Prova da Entrevista de SQL da Advent Health Hospitals Orlando */

SELECT
count(policy_holder_id) policy_holder_count
FROM
(SELECT 
policy_holder_id,
count(case_id) 
FROM callers
GROUP BY policy_holder_id
HAVING count(case_id) >= 3)t1
/* 3 Prova da Entrevista de SQL da Meta*/
SELECT 
    app_id,
    100.0 * COUNT(IF(event_type = 'click', 1, NULL)) / 
    IF(COUNT(IF(event_type = 'impression', 1, NULL)) = 0, NULL, COUNT(IF(event_type = 'impression', 1, NULL))) AS ctr
FROM events
WHERE timestamp >= '2022-01-01' AND timestamp <= '2022-12-31'
GROUP BY app_id;
