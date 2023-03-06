{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Opportunity') }}
  Where ISDELETED =FALSE
