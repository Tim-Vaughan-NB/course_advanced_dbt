{% macro lag_over_column(
    column_name,
    first_partition_by,
    order_by,
    coalesce_value,
    new_column_name,
    second_partition_by=None
) %}
    COALESCE(LAG({{ column_name }}) OVER (
                PARTITION BY {{ first_partition_by }}
                {% if second_partition_by is not none %}, {{ second_partition_by }}{% endif %}
                ORDER BY {{ order_by }}
            ),
            {{ coalesce_value }}
    ) AS {{ new_column_name }}
{% endmacro %}
