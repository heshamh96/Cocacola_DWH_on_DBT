{{ config(materialized='view'
,docs={'node_color':'Orange'}
,tags=['STG']
) }}

select a.* 
,price
,total_cost
,margin

from (

SELECT
	customer_code,
	sku_code,
	quantity,
	ordering_date,
	delivery_date,
	days_for_delivery,
	day,
	month,
	year,
	calendar_day,
	'1' AS file_name
FROM
    {{ref('transactions_1')}}

union

    SELECT
	customer_code,
	sku_code,
	quantity,
	ordering_date,
	delivery_date,
	days_for_delivery,
	day,
	month,
	year,
	calendar_day,
	'2' AS file_name
FROM
    {{ref('transactions_2')}}

    union
    
	SELECT
	customer_code,
	sku_code,
	quantity,
	ordering_date,
	delivery_date,
	days_for_delivery,
	day,
	month,
	year,
	calendar_day,
	'3' AS file_name
FROM
    {{ref('transactions_3')}}
) as a join {{ref('packs_db')}} b on a.sku_code=b.sku_code