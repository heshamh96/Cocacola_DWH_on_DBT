{{config (
    store_failures = true
    ,severity = "warn"
    ,schema='failed_tests'

)}}




select * 
from 
{{ref('fact_Transactions')}}
where file_name=3