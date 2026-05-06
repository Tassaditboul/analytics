with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'PRODUCTS_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        product_code,
        product_name,
        product_line,
        product_scale,
        product_vendor,
        product_description,
        quantity_in_stock,
        buy_price,
        msrp

    from source

)

select * from renamed