{% macro rolling_aggregation_n_periods(
    column_name
    , first_partition_by
    , order_by='created_at'
    , periods=7
    , agg_func='avg'
    , second_partition_by=None
    ) %}
    {{ agg_func }}( {{ column_name }} ) OVER (
        PARTITION BY
        {% if second_partition_by is not none %}
            {{ first_partition_by }}, {{ second_partition_by }}
        {% else %}
            {{ first_partition_by }}
        {% endif %}
        ORDER BY {{ order_by }}
        ROWS BETWEEN {{ periods - 1 }} PRECEDING AND CURRENT ROW
    ) AS avg_{{ periods }}_periods_{{ column_name }}
{% endmacro %}
