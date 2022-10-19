
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with contact as (

    select
        id as customer_id,
        name as customer_name

    from admins

)
select *
from contact