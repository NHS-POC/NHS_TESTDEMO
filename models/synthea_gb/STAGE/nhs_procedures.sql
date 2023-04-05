with source_data as (
    select
        CODE as PROCEDURE_CODE,
        DESCRIPTION as PROCEDURE_DESCRIPTION,
        BASE_COST as PROCEDURE_BASE_COST,
        REASONCODE as PROCEDURE_REASON_CODE,
        REASONDESCRIPTION as PROCEDURE_REASON_DESCRIPTION
    from
        {{ ref('procedures')}}
        
)

select *
from source_data