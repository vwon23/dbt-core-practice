-- {{ config(materialized='view') }}

select
    id as payment_id,
    orderid as order_id,
    status,
    amount,
    created
from raw.stripe.payment