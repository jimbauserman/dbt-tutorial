SELECT 
      o.order_id
    , o.customer_id
    , o.order_date
    , o.status
    , SUM(p.amount) as amount
FROM {{ ref('stg_orders') }} o
    LEFT JOIN {{ ref('stg_payments') }} p USING (order_id)
GROUP BY 1,2,3,4