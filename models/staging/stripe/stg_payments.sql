SELECT 
      id as payment_id
    , orderid as order_id
    , status as payment_status
    , amount
    , created as payment_created
FROM dbt-tutorial.stripe.payment