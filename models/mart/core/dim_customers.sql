WITH customer_orders AS (
    SELECT
          customer_id
        , MIN(order_date) as first_order_date
        , MAX(order_date) as most_recent_order_date
        , COUNT(order_id) as number_of_orders
        , SUM(amount) as lifetime_value
    FROM {{ ref('fct_orders') }}
    GROUP BY 1
)

SELECT
      c.customer_id
    , c.first_name
    , c.last_name
    , co.first_order_date
    , co.most_recent_order_date
    , coalesce(co.number_of_orders, 0) as number_of_orders
    , coalesce(co.lifetime_value, 0) as lifetime_value
FROM {{ ref('stg_customers') }} c
    LEFT JOIN customer_orders co USING (customer_id)