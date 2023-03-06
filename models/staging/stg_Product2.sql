{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Product2') }}
  Where ISDELETED =FALSE
