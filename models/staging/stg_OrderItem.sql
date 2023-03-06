{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','OrderItem') }}
  Where ISDELETED =FALSE
