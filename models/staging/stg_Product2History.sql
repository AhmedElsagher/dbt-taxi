{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Product2History') }}
  Where ISDELETED =FALSE
