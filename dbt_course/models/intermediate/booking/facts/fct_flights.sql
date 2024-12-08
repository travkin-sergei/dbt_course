{{
  config(
    materialized = 'incremental',
    unique_key='flight_id',
    incremental_strategy='delete+insert',
    )
}} 
{% set incremental_days = 3000 %} 
select
    flight_id, 
    flight_no, 
    scheduled_departure, 
    scheduled_arrival, 
    departure_airport, 
    arrival_airport, 
    status, 
    aircraft_code, 
    actual_departure, 
    actual_arrival
from
    {{ ref('stg_booking__flights') }}

{% if is_incremental() %}

where 
    scheduled_departure >= current_date - {{ incremental_days }}
    or scheduled_arrival >= current_date - {{ incremental_days }}
    or actual_departure >= current_date - {{ incremental_days }}
    or actual_arrival >= current_date - {{ incremental_days }}

{% endif %}