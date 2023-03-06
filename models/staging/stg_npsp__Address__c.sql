{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','npsp__Address__c') }}
  Where ISDELETED =FALSE
