{{ config(materialized='table',
          transient=false)
}}
    select
    id ,
    first_name,
    last_name
    from {{source('source_table_name','raw_customerdata')}} 