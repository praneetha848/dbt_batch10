select
    order_id,
    Count(*) as duplicate_count
from {{ ref('orders' )}}
group by order_id
having count(*) > 1