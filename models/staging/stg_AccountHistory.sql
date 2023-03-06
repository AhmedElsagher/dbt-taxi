{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','AccountHistory') }}
  Where ISDELETED =FALSE
