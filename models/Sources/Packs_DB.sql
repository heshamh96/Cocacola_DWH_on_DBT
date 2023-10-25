

{{ config(materialized='view') }}



SELECT
	SKU_Code,
	Pack,
	Number_of_units,
	Volume,
	Pack_type,
	Flavor,
	Flavor_Category,
	Unit_case_conversion,
	Price,
	Total_Cost,
	Margin,
	Rep_commission,
	Sup_Commission,
	RSM_Commission
FROM
	{{source('Cocacola','Packs_DB')}}