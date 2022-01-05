

  create or replace view `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_orders`
  OPTIONS()
  as select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from dbt-tutorial.jaffle_shop.orders;

