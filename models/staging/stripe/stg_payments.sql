-- {{ config(materialized='view') }}
with

source as (
    select * from {{ source('stripe', 'payment')}}
),

staged as (
    select
        id as payment_id,
        orderid as order_id,
        status,
        amount,
        created
    from source
)

select * from staged