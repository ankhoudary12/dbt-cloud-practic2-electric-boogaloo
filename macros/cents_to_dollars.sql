{%- macro cents_to_dollars(column_name)  -%}

ROUND(1.0 * {{ column_name }} / 100, 2)

{%- endmacro -%}