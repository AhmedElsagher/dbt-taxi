{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Commitment__History') }}
  Where ISDELETED =FALSE
