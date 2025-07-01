{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source('source_table_name','raw_orders')}}  