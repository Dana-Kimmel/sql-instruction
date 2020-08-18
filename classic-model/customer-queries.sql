select * from customers;

-- select by primary key
select * from customers
 where customerNumber = 131;
 
 -- count function
 select count(*) from customers;
 
 -- count with an alias
select count(*) as row_count
 from customers;  
 
  -- count with an alias, shorthand
select count(*) row_count
 from customers ;  
 
 -- sum function
 select sum(creditlimit)
  from customers;
  
  -- average & format function
  select format (avg(creditlimit),2)
   from customers;
   
     
  select concat('$',format(avg(creditlimit),2)) as avg_credit_limit
   from customers;
   -- group by: average , format and concat format function by country
     select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
   from customers
   group by country
   order by avg(creditlimit) desc;
   
   -- group by, having: average , format and concat format function by country where avg is > 0
     select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
   from customers
   group by country
   having avg(creditlimit) > 0
   order by avg(creditlimit) desc; 
   
   -- max credit limit
   select max(creditlimit)
    from customers;
    
    -- min credit limit
   select min(creditlimit)
    from customers;
   
   
   
   --