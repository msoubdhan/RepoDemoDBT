
{{ config(materialized='table') }}

select row_number() over (partition by 'u' order by month)
, mix.*
from  {{ ref('mix') }}