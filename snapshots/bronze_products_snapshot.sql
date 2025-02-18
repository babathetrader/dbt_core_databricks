{% snapshot bronze_products_snapshot %}
    {{
        config(
            target_schema="bronze",
            unique_key="id",
            strategy="timestamp",
            updated_at="created_at",
        )
    }}

    select *
    from {{ source("landing", "products") }}
    -- where 


{% endsnapshot %}
