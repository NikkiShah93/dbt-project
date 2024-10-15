{% macro date_logic(column_name) %}
    CASE 
        WHEN {{ column_name }} >= TO_DATE('2024-06-30', 'YYYY-MM-DD')
            THEN 'NEW_SYSTEM'
        ELSE 'OLD SYSTEM'
    END
{% endmacro %}