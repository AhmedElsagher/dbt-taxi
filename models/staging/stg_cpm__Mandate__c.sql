{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','cpm__Mandate__c') }}
  Where ISDELETED =FALSE
