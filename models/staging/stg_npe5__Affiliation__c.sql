{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','npe5__Affiliation__c') }}
  Where ISDELETED =FALSE
