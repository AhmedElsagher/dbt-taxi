{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','cpm__Payment__c') }}
  Where ISDELETED =FALSE
