SELECT 
    ticket_no, 
    flight_id, 
    fare_conditions
FROM 
    {{ source('staging', 'ticket_flights') }}