{% snapshot snap_orders_check %}
 {{
    config(
        strategy='check',
        unique_key='id',
        check_cols=['user_id','order_date'],
         )
 }}
    select * from {{source('source_table_name','raw_orders')}}  limit 10

{% endsnapshot %}