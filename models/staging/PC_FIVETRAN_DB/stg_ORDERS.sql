with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'ORDERS_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        order_number,
        order_date,
        required_date,
        shipped_date,
        status,
        comments,
        customer_number

    from source

)

select * from renamed