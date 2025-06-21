with products as(
    select * from {{ ref('stg_products')}}
),
sales as(
    select * from {{ ref('stg_sales')}}
)
select 
    s.transaction_date,
    p.product_name, 
    sum(s.total_price) as total_price
from sales s 
left join products p
on s.product_id = p.product_id
group by 1,2
order by 1