-- bmdb genre queries
-- join

select  m.title, g.name
  from movie m
  join moviegenre mg
   on mg.movieID = m.ID
   join genre g
   on g.ID = mg.genreID
   where g.ID = (select id from genre
                 where name = 'action');
                 
     /* 5 table join:
      show all movies, actors and genres
      -movie, title & year, actor fname & lname, genre name
      -5 tables in order: movie, credit, actor, moviegenre, genre
      */
      
      select m.title, m.year, a.firstName, a.lastName, c.role, g.name
       from movie m 
       join credit c 
         on c.movieID = m.ID
       join actor a
        on a.ID = c.actorID
        join moviegenre mg
        on mg.movieID = m.ID
        join genre g
         on g.ID = mg.genreID;
       