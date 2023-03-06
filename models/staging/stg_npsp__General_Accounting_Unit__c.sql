{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','npsp__General_Accounting_Unit__c') }}
  Where ISDELETED =FALSE
