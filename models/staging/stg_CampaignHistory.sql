{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','CampaignHistory') }}
  Where ISDELETED =FALSE
