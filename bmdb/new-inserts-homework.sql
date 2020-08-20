select * from movie;

insert into movie values
 (10,'The Goonies', 1985, 'PG', 'Richard Donner'),
 (11,'The Princess Bride', 1987, 'PG', 'Rob Reiner'),
 (12,'A Fish Called Wanda', 1988, 'R', 'Charles Chricton'),
 (13,'The Naked Gun', 1988, 'PG-13', 'David Zucker'),
 (14,'Coming to America', 1988, 'R', 'John Landis');
 
 select * from actor;

insert into actor values 
 (5, 'Eddie', 'Murphy', 'M', '1961-04-03'),
 (6, 'Leslie', 'Nielson', 'M', '1926-02-11'),
 (7, 'John', 'Cleese', 'M', '1939-10-27'),
 (8, 'Cary', 'Elwes', 'M', '1962-10-26'),
 (9, 'Sean', 'Astin', 'M', '1971-02-25');
 
 select * from credit ;
 
 insert into credit values
 (5, 5, 14, 'Prince Akeem'),
 (6, 6, 13, 'Frank Drebin'),
 (7, 7, 12, 'Archie Leach'),
 (8, 8, 11, 'Westly'),
 (9, 9, 10, 'Mikey');