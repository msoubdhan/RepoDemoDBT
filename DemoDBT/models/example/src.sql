


{{ config(materialized='table') }}

with source_data as (

	select md5(random()::text) as txt
	, DATE '2022-01-01' + (interval '1' month * generate_series(0,21)) as month

)

select *
from source_data

