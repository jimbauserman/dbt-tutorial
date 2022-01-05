SELECT 
      o.order_id
    , o.customer_id
    , o.order_date
    , o.status
    , SUM(p.amount) as amount
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_orders` o
    LEFT JOIN `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments` p USING (order_id)
GROUP BY 1,2,3,4