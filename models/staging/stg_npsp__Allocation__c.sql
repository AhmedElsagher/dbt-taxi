{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','npsp__Allocation__c') }}
  Where ISDELETED =FALSE
