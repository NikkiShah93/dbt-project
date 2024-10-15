{% macro format_dates(column_name) %}
    CASE 
        WHEN {{ column_name }} LIKE '20%-%' THEN {{ column_name }}
        ELSE TO_CHAR({{ column_name }}, 'YYYY-MM-DD')
    END
{% endmacro %}