{{ config(materialized='view') }}


SELECT
"Customer Code" as customer_code,
	"Customer name"as customer_name,
	"Customer Channel type" as customer_channel_type ,
	" Customer coordinates X " customer_coordinates_x,
	" Customer coordinates y " as customer_coordinates_y,
	"Number of Doors" as number_of_doors,
	"Route" as route,
	"Rep name" as rep_name,
	"Supervisor name" as supervisor_name,
	"Service Channel" as service_channel,
	"Depot" as depot,
	"USM name" as usm_name,
	"Region"as region,
	"RSM" as rsm,
	"Discount" as discount
	
	
	
FROM
	{{source('Cocacola','customers_db_1')}}