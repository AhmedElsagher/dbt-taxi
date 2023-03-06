{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Order') }}
  Where ISDELETED =FALSE
