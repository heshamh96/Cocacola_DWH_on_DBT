


{{ config(materialized='view') }}

SELECT
	Customer_Code,
	SKU_Code,
	Quantity,
	Ordering_Date,
	Delivery_Date,
	Days_For_Delivery,
	[Day],
	[Month],
	[Year],
	Calendar_Day
FROM

    {{source('Cocacola','Transactions_1')}}