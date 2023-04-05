with source_data as (
    select
        {{ dbt.safe_cast("DATE", api.Column.translate_type("string"))}}  as OBSERVATION_DATE,
        {{ dbt.safe_cast("CATEGORY", api.Column.translate_type("string"))}} as OBSERVATION_CATEGORY,
        {{ dbt.safe_cast("CODE", api.Column.translate_type("string"))}} as OBSERVATION_CODE,
        {{ dbt.safe_cast("DESCRIPTION", api.Column.translate_type("string"))}} as OBSERVATION_DESCRIPTION,
        {{ dbt.safe_cast("VALUE", api.Column.translate_type("string"))}} as OBSERVATION_VALUE,
        {{ dbt.safe_cast("UNITS",api.Column.translate_type("string"))}} as OBSERVATION_UNITS,
        {{ dbt.safe_cast("TYPE",api.Column.translate_type("string"))}} as OBSERVATION_TYPE
    from
        {{ ref('observations')}}
        
)

select *
from source_data