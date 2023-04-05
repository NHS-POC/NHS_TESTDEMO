with source_data as (
    select
        CODE as MEDICATION_CODE,
        DESCRIPTION as MEDICATION_DESCRIPTION,
        BASE_COST as MEDICATION_BASE_COST,
        DISPENSES as MEDICATION_DISPENSES,
        TOTALCOST as MEDICATION_TOTAL_COST,
        REASONCODE as MEDICATION_REASON_CODE,
        REASONDESCRIPTION as MEDICATION_REASON_DESCRIPTION
    from
        {{ ref('medications')}}
        
)

select *
from source_data