WITH customer_orders AS (
    SELECT
          customer_id
        , MIN(order_date) as first_order_date
        , MAX(order_date) as most_recent_order_date
        , COUNT(order_id) as number_of_orders
        , SUM(CASE WHEN status = 'success' THEN amount ELSE 0 END) as lifetime_value
    FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`fct_orders`
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
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_customers` c
    LEFT JOIN customer_orders co USING (customer_id)