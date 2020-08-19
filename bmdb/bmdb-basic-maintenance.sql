/* Let's test the maintenance sql 
We should test in the order of:
-select (read)
-insert (create)
-udpate (update)
delete (delete)
*/

select * from movie;

insert into movie values
   
    (10, 'Dummy Movie', 2020, 'G', 'Test Director');
    
    update movie 
      set title = 'Dummy Movie 2'
      where id = 10;
      
      delete from movie
       where id = 10;
