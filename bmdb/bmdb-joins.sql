select * from credit;
select * from movie;

-- inner join: data in common between 2 tables
select m.id, title, c.id 
role from movie as m
  join credit as c
    on m.id = c.MovieID;

-- inner join: data in common between 3 tables, practice
select m.title, a.firstname, a.lastname, a.gender
  from movie as m
  join credit as c
    on c.MovieID = m.id
    join actor as a
     on c.actorid = a.id;
     
    
    -- inner join credit - actor 
    select * from credit c
     join actor a 
      on c.ActorID = a.ID;
      
      -- outer (left)  join, all movies and actors assigned
      select * from movie
       left join credit
        on movie.id = credit.MovieID;
        
        
        -- practice join
        select g.name, m.title, m.rating
        from genre as g 
        join moviegenre as mg 
        on g.id = mg.genreid
        join movie as m
        on mg.movieid = m.id;
        
        select * from genre;
    
