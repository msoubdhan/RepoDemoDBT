{{ config(materialized='table') }}



select src.*
, inject_raw.*
from       {{ ref('src') }}
cross join {{ ref('inject_raw') }} 