with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'PAYMENTS_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        customer_number,
        check_number,
        payment_date,
        amount

    from source

)

select * from renamed