with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'OFFICES_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        office_code,
        city,
        phone,
        address_line_1,
        address_line_2,
        state,
        country,
        postal_code,
        territory

    from source

)

select * from renamed