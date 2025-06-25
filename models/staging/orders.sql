{{ config(materialized='view') }}

WITH tb1 as(
    select id as order_id,
    order_date,
    user_id

    from {{source('source_table_name','raw_orders')}})
select * from tb1