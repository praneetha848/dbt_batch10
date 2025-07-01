{{ config( materialized='table')  }}

with
emp_data as (
     select emp_id as id,
            firstname as name, 
            salary,
            tax_amount,
            ({{calculate_amount('salary','tax_amount')}}) as total_amount
            from 
             {{source('source_table_name','emp_sal')}} 
)
select * from emp_data