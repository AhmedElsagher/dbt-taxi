{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','ContactHistory') }}
  Where ISDELETED =FALSE
