select
    transaction_id,
    transaction_date,
    transaction_time,
    sales_outlet_id,
    staff_id,
    customer_id,
    instore_yn,
    order_number,          
    line_item_id,
    product_id,
    quantity,
    line_item_amount,
    unit_price,
    promo_item_yn,
    quantity * unit_price as total_price
from {{ source('raw_data', 'sales') }}
