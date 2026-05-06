with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'PRODUCTLINES_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        product_line,
        text_description

    from source

)

select * from renamed