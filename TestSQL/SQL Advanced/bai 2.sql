WITH best_scores AS (
  SELECT event_id, participant_name, MAX(score) AS best
  FROM scoretable
  GROUP BY event_id, participant_name
),
ranked AS (
  SELECT event_id, participant_name, best,
         DENSE_RANK() OVER (PARTITION BY event_id ORDER BY best DESC) AS rnk
  FROM best_scores
),
top3 AS (
  SELECT event_id, rnk,
         GROUP_CONCAT(participant_name ORDER BY participant_name) AS names
  FROM ranked
  WHERE rnk <= 3
  GROUP BY event_id, rnk
)
SELECT
  event_id,
  MAX(CASE WHEN rnk = 1 THEN names END) AS first,
  MAX(CASE WHEN rnk = 2 THEN names END) AS second,
  MAX(CASE WHEN rnk = 3 THEN names END) AS third
FROM top3
GROUP BY event_id
ORDER BY event_id;