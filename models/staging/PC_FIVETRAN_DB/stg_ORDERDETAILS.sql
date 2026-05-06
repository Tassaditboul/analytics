with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'ORDERDETAILS_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        order_number,
        product_code,
        quantity_ordered,
        price_each,
        order_line_number

    from source

)

select * from renamed