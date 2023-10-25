
{{ config(materialized='table') }}


SELECT
	Customer_Code,
	Customer_name,
	Customer_Channel_type,
	Customer_coordinates_X,
	Customer_coordinates_y,
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
	{{ref('Customer_1')}}



    union



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
	{{ref('Customer_2')}}
