{{
    config(
        materialized='view'
    )
}}
with raw_data as (
    select * from AIRSTATS.RAW.RAW_AIRPORTS
)
select 
    ID, 
    IDENT, 
    TYPE, 
    NAME, 
    LATITUDE_DEG, 
    LONGITUDE_DEG, 
    ELEVATION_FT, 
    CONTINENT, 
    ISO_COUNTRY, 
    ISO_REGION, 
    MUNICIPALITY, 
    SCHEDULED_SERVICE, 
    GPS_CODE, 
    IATA_CODE, 
    LOCAL_CODE, 
    HOME_LINK, 
    WIKIPEDIA_LINK, 
    KEYWORDS
from raw_data