{% macro extract_year_month(some_date) %}


TO_CHAR(TO_DATE({{some_date}}, 'DD-Mon-YY'), 'YYYYMM')
{% endmacro %}