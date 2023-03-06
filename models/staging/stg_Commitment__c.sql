{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Commitment__c') }}
  Where ISDELETED =FALSE
