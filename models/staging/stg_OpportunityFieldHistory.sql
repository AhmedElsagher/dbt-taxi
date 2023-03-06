{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','OpportunityFieldHistory') }}
  Where ISDELETED =FALSE
