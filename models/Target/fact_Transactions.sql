
{{ config(materialized='table') }}


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

    {{ref('Transactions_1')}}

    union

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

    {{ref('Transactions_2')}}


    union


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
{{ref('Transactions_3')}}