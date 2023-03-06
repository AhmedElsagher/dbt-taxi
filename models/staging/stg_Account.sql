{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Account') }}
  Where ISDELETED =FALSE
