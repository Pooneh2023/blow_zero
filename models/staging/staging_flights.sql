{{ config(materialized='view') }}
    
    WITH flights AS (
        SELECT * 
        FROM {{source('flights_data', 'flights_05_07')}}
        --WHERE DATE_PART('month', flight_date) = 1 
    )
    SELECT * FROM flights