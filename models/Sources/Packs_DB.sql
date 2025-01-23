

{{ config(materialized='view') }}



SELECT
"SKU Code" as sku_code,
	"Pack" as pack,
	"Number of units"as number_of_units,
	"Volume" as volume,
	"Pack type" as pack_type,
	"Flavor" as flavor,
	"Flavor Category" as flavor_category,
	"Unit case conversion" as unit_case_conversion,
	" Price " as price,
	" Total Cost " as total_cost,
	" Margin " as margin,
	"Rep commission" as rep_commission,
	"Sup Commission" as sup_commission,
	"RSM Commission" as rsm_commission

	
FROM
	{{source('Cocacola','packs')}}