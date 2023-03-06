{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Campaign') }}
  Where ISDELETED =FALSE
