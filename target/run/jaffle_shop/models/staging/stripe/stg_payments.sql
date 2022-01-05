

  create or replace view `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments`
  OPTIONS()
  as SELECT 
      id as payment_id
    , orderid as order_id
    , status as payment_status
    , amount / 100.0 as amount
    , created as payment_created
FROM dbt-tutorial.stripe.payment;

