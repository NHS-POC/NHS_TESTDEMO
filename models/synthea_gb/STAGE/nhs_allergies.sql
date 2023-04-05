with source_data as (
    select
        START as ALLERGY_START,
        CODE as ALLERGY_CODE,
        SYSTEM as ALLERGY_SYSTEM,
        DESCRIPTION1 as ALLERGY_SPECIFICATION,
        CATEGORY as ALLERGY_CATEGORY,
        TYPE as ALLERGY_TYPE,
        REACTION1 as ALLERGY_REACTION,
        DESCRIPTION as ALLERGY_DESCRIPTION,
        SEVERITY1 as ALLERGY_SEVERITY
    from
        {{ ref('allergies')}}
        
)

select *
from source_data