

  create or replace view `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_customers`
  OPTIONS()
  as select
    id as customer_id,
    first_name,
    last_name
from `dbt-tutorial`.`jaffle_shop`.`customers`;

