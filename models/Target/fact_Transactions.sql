
{{ config(materialized='table'
,docs={'node_color':'blue'}
,tags=['TRGT','DWH']
) }}



SELECT
	Customer_Code,
	SKU_Code,
	Quantity,
	{{extract_year_month('Ordering_Date')}} as Ordering_Date,
	Delivery_Date,
	Days_For_Delivery,
	[Day],
	[Month],
	[Year],
	Calendar_Day,
	Price
	,Total_Cost
	,Margin
	,file_name
FROM

    {{ref('stg_fact_Transactions')}}
