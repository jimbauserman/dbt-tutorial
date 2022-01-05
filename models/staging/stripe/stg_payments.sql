SELECT 
      id as payment_id
    , orderid as order_id
    , status as payment_status
    , amount / 100.0 as amount
    , created as payment_created
FROM {{ source('stripe', 'payments') }}