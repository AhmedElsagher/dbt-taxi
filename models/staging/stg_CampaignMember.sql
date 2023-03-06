{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','CampaignMember') }}
  Where ISDELETED =FALSE
