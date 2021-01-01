SELECT
    customer_id,
    SUM(lifetime_value) AS lifetime_value
FROM {{ ref('dim_customers') }}
GROUP BY 1
HAVING NOT lifetime_value >= 0 OR NULL