{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Family_Membership_Member__c') }}
  Where ISDELETED =FALSE
