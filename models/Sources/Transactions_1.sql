{{ config(materialized='view') }}

SELECT
	"Customer Code" AS customer_code,
	"SKU Code" AS sku_code,
	"Quantity" AS quantity,
	"Ordering Date" AS ordering_date,
	"Delivery Date" AS delivery_date,
	" Days For Delivery " AS days_for_delivery,
	"Day" AS day,
	"Month" AS month,
	"Year" AS year,
	"Calendar Day" AS calendar_day,
	'1' AS file_name
FROM
    {{source('Cocacola','transactions_a')}}