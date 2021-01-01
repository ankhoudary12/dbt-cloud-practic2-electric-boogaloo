SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    p.amount
FROM {{ ref('stg_orders' ) }} o
LEFT JOIN {{ ref('stg_payments') }} p USING(order_id)

