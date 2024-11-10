SELECT 
    aircraft_code, 
    model
FROM 
    {{ source('staging', 'aircrafts') }}