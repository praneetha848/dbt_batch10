{{ config(materialized='table') }}

WITH tb1 as(
    select
    id ,
    first_name,
    last_name
    from {{source('source_table_name','raw_customerdata')}})
select * from tb1