{{
  config(
    materialized = 'view',
    )
}}
SELECT 
    aircraft_code, 
    model
FROM 
    {{ source('staging', 'aircrafts') }}