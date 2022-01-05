

  create or replace table `dbt-fundamentals-337218`.`dbt_jbauserman`.`fct_orders`
  
  
  OPTIONS()
  as (
    SELECT 
      o.order_id
    , o.customer_id
    , SUM(p.amount) as amount
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_orders` o
    LEFT JOIN `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments` p USING (order_id)
GROUP BY 1,2
  );
  