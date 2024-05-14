{% macro test_target_var() %}
    {{ log(target.name) }}
    {{ log(target.role) }}
    {{ log(target.schema) }}
{% endmacro %}