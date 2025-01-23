{{ config(materialized='table'
,docs={'node_color':'blue'}
,tags=['TRGT','DWH']
) }}

SELECT
	customer_code,
	customer_name,
	customer_channel_type,
	customer_coordinates_x,
	customer_coordinates_y,
	number_of_doors,
	route,
	rep_name,
	supervisor_name,
	service_channel,
	depot,
	usm_name,
	region,
	rsm,
	discount
FROM
	{{ref('customer_1')}}
    union
SELECT
	customer_code,
	customer_name,
	customer_channel_type,
	x_axis AS customer_coordinates_x,
	y_axis AS customer_coordinates_y,
	number_of_doors,
	route,
	rep_name,
	supervisor_name,
	service_channel,
	depot,
	usm_name,
	region,
	rsm,
	discount
FROM
	{{ref('customer_2')}}
