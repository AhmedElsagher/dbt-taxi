{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','npe03__Recurring_Donation__History') }}
  Where ISDELETED =FALSE
