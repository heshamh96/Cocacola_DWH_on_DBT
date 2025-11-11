{{ config(materialized='table'
,docs={'node_color':'blue'}
,tags=['TRGT','DWH']
) }}

SELECT
	customer_code,
	sku_code,
	quantity,
	{{extract_year_month('ordering_date')}} as ordering_date,
	delivery_date,
	days_for_delivery,
	day,
	month,
	year,
	calendar_day,
	price,
	total_cost,
	margin,
	file_name
FROM
    {{ref('stg_fact_transactions')}}
