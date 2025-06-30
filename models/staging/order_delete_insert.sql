{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert"
         
) }}

select * from {{source('source_table_name','raw_orders')}} 