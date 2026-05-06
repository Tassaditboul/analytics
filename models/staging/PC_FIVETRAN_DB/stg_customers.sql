with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'CUSTOMERS_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        customer_number,
        customer_name,
        contact_last_name,
        contact_first_name,
        phone,
        address_line_1,
        address_line_2,
        city,
        state,
        postal_code,
        country,
        sales_rep_employee_number,
        credit_limit

    from source

)

select * from renamed