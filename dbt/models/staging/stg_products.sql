select 
    id as product_id,
    product as product_name,
    product_category,
    unit_of_measure
from {{ source('raw_data', 'products') }}