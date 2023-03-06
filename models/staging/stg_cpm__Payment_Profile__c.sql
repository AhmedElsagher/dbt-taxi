{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','cpm__Payment_Profile__c') }}
  Where ISDELETED =FALSE
