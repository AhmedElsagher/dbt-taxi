{{ config(materialized='table',schema='staging') }}


select *  
  from {{ source('raw','Pricebook2') }}
  Where ISDELETED =FALSE
