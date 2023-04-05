with source_data as (
    select
        DATE as IMMUNIZATION_DATE,
        CODE as IMMUNIZATION_CODE,
        DESCRIPTION as IMMUNIZATION_DESCRIPTION,
        BASE_COST as IMMUNIZATION_BASE_COST
    from
        {{ ref('immunizations')}}
        
)

select *
from source_data