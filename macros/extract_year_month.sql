{% macro extract_year_month(some_date) %}


convert(varchar(6), {{some_date}} ,112)



{% endmacro %}