create function get_prod_count(price_start int, price_end int)
returns int
language plpgsql
as
$$
declare
   film_count integer;
begin

   select price 
   into film_count
   from product 
   where price> price_start  and price<price_end;   
    return film_count;
end;
$$;