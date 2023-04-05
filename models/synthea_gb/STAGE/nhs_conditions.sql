with source_data as (
    select
        CAST(NEWID() AS varchar(36)) as CONDITION_CODE,
        CAST("DESCRIPTION" AS varchar(380)) as CONDITION_DESCRIPTION
    from
        {{ ref('conditions')}}
        
)

select *
from source_data