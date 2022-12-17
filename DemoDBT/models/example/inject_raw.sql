{{ config(materialized='table') }}


with inject_raw ("first_name", "last_name")
as ( values 
          ('Christophe' , 'Vincent' )     
        , ('Romain'     , 'Sylvain' )
        , ('Rodolphe'   , 'Stéphane' )        
        , ('Rodrigue'   , 'Vincent' )        
        , ('Champ'      , 'Dujardin' )      
        , ('Lionel'     , 'Philippe' )      
        , ('Alpa'       , 'Cino' )    
     )
  select * 
  from inject_raw
