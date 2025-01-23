
{{ config(materialized='view') }}


SELECT
	Customer_Code,
	Customer_name,
	Customer_Channel_type,
	X_Axis,
	Y_Axis,
	Number_of_Doors,
	Route,
	Rep_name,
	Supervisor_name,
	Service_Channel,
	Depot,
	USM_name,
	Region,
	RSM,
	Discount
FROM
	{{source('Cocacola','customers_db_2')}}