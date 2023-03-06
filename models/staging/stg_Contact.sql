{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Contact') }}
  Where ISDELETED =FALSE
