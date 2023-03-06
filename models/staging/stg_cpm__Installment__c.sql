{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','cpm__Installment__c') }}
  Where ISDELETED =FALSE
