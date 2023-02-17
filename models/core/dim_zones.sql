{{ config(materialized='table') }}


select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone
  from {{ source('raw','taxi_zone_lookup') }}
