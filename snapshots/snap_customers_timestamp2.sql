{% snapshot snap_customers_timestamp2 %}

{{
     config(
      strategy='timestamp',
      unique_key='id',
      updated_at='updated_at',
      invalidate_hard_deletes=True
      )
}}
select * 
from {{source('source_table_name','customers')}}

{% endsnapshot %}
