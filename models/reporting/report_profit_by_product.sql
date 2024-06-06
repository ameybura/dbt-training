select 
    productid,
    category,
    productname,
    subcategory,
    sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by 
    productid,
    category,
    productname,
    subcategory
