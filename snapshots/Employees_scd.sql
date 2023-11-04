
{% snapshot Employees_scd  %}


{{
config(
        target_schema='dbo',
        strategy='check',
        unique_key='id',
        check_cols=['age','title']
        )


}}



select
id
,name
,age
,title

from
	{{ref('Employees')}}




{% endsnapshot %}