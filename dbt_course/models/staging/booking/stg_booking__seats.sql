{{
  config(
    materialized = 'view',
    )
}}
SELECT 
    aircraft_code, 
    seat_no, 
    fare_conditions
FROM 
    {{ source('staging', 'seats') }}