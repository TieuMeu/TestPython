SELECT c.customer_name,ROUND(SUM(i.total_price), 6) AS amount_spent
FROM customer c
JOIN invoice i ON c.id = i.customer_id
GROUP BY c.id, c.customer_name
HAVING SUM(i.total_price) <= 0.25 * (
        SELECT SUM(total_price) / COUNT(DISTINCT customer_id)
        FROM invoice )
ORDER BY amount_spent DESC;

-- FAIL