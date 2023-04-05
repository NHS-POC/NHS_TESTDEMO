with source_data as (
    select
        Id as PROVIDER_ID,
        ORGANIZATION as PROVIDER_ORGANIZATION,
        NAME as PROVIDER_NAME,
        GENDER as PROVIDER_GENDER,
        SPECIALITY as PROVIDER_SPECIALITY
    from
        {{ ref('providers')}}

)

select *
from source_data