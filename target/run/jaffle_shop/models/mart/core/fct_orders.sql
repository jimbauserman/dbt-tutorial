

  create or replace table `dbt-fundamentals-337218`.`dbt_jbauserman`.`fct_orders`
  
  
  OPTIONS()
  as (
    SELECT 
      o.order_id
    , o.customer_id
    , o.order_date
    , o.status
    , SUM(CASE WHEN p.payment_status = 'success' THEN p.amount ELSE 0 END) as amount
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_orders` o
    LEFT JOIN `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments` p USING (order_id)
GROUP BY 1,2,3,4
  );
  