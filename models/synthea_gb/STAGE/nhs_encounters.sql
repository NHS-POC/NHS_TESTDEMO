with source_data as (
    select
        Id as ENCOUNTER_ID,
        CODE as ENCOUNTER_CODE,
        DESCRIPTION as ENCOUNTER_DESCRIPTION,
        REASONCODE as ENCOUNTER_REASON_CODE
    from
        {{ ref('encounters')}}

)

select *
from source_data