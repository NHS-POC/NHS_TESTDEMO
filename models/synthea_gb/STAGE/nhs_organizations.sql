with source_data as (
    select
        Id as ORGANIZATION_ID,
        NAME as ORGANIZATION_NAME
    from
        {{ ref('organizations')}}

)

select *
from source_data