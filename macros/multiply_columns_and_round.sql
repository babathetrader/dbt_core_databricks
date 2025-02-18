{% macro multiply_columns_and_round(col1, col2, round_value=2) %}
    round({{ col1 }} * {{ col2 }}, {{ round_value }})
{% endmacro %}
