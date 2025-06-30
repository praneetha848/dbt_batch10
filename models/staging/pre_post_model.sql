{{ config(
    materialized="incremental",
    incremental_strategy="append",
    pre_hook="TRUNCATE TABLE {{ this }}"
)}}
    
select * from {{source('source_table_name','raw_orders')}} 