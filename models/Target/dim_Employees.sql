
{{ config(materialized='incremental'
,unique_key = 'id'
,incremental_strategy = 'delete+insert'
,docs={'node_color':'blue'}
,tags=['TRGT','DWH']

) }}







with pure_inserts as (

select id
,name
,age
,title

from  {{ref('Employees')}}
--****************
{% if is_incremental() %}

  --this filter will only be applied on an incremental run
  where id > (select max(id) from {{this}}) or (select count(*) from {{this}})=0

{% endif %}
--****************
)

--======================
{% if is_incremental() %}
,
Updates as (


select src.id
,src.name
,src.age
,src.title
from  {{ref('Employees')}} src join {{this}} trgt on src.id=trgt.id



where src.age<>trgt.age or src.title<>trgt.title




)
{% endif %}

--======================


select * from pure_inserts


--&&&&&&&&&&&&&&&&&&&&&&&&&&&
{% if is_incremental() %}
union all
select * from Updates
{% endif %}
--&&&&&&&&&&&&&&&&&&&&&&&&&&&&