with 

source as (

    select * from {{ source('PC_FIVETRAN_DB', 'EMPLOYEES_202604301513') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        employee_number,
        last_name,
        first_name,
        extension,
        email,
        office_code,
        reports_to,
        job_title

    from source

)

select * from renamed