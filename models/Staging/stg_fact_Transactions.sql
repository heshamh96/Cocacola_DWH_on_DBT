
{{ config(materialized='view'
,docs={'node_color':'Orange'}
,tags=['STG']
) }}

select a.* 
,Price
,Total_Cost
,Margin

from (

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
	Calendar_Day,
	file_name
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
	Calendar_Day,
	file_name
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
	Calendar_Day,
	file_name
FROM
{{ref('Transactions_3')}}
) as a join {{ref('Packs_DB')}} b on a.SKU_Code=b.SKU_Code 