{% snapshot snap_orders_checks %}

  {{
    config(
          strategy='check',
          unique_key='id',
          check_cols=['user_id','order_date', 'status'],
          invalidate_hard_deletes=True 
           )
 }}

 select * from {{source('source_table_name','raw_orders')}}  limit 10

{% endsnapshot %}


