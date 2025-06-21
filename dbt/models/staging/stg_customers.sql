select 
    id as customer_id,
    name as customer_name,
    customer_email,
    customer_since,
    birth_year,
    gender
from {{ source('raw_data', 'customers') }}

    