{{
    config(
        materialized='table'
    )
}}

select * from 
{{ source('globaltmart', 'customers') }} 