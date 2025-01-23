
{% snapshot Employees_scd  %}


{{
config(
        target_schema='public',
        strategy='check',
        unique_key='id',
        check_cols=['age','title'],
        enabled=false
        )


}}



select
id
,name
,age
,title

from
	{{ref('employees')}}




{% endsnapshot %}