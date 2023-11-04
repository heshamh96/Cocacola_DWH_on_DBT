
{{ config(materialized='table'
,docs={'node_color':'blue'}
) }}



SELECT distinct pack , flavor from {{ref('Packs_DB')}}  