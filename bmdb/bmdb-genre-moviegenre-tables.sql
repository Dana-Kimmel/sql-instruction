create table Genre (
ID 				Integer 		primary key auto_increment,
name 		varchar(10) 	not null);

insert into genre (Name) VALUES
('Comedy'),
('Sci-Fi'),
('Horror'),
('Romance'),
('Action'),
('Thriller'),
('Drama'),
('Mystery'),
('Crime'),
('Animation'),
('Adventure'),
('Fantasy'),
('Superhero'); 

create table movieGenre (
ID 				Integer 		primary key auto_increment,
movieID         Integer    not null,
genreID         Integer     not null); 

alter table movieGenre
add FOREIGN KEY(genreID) REFERENCES genre(ID),
add  CONSTRAINT mov_gen unique (movieID, genreID);

alter table movieGenre
add Foreign KEY(movieID) REFERENCES genre(ID);

Drop table movieGenre;

create table movieGenre (
ID 				Integer 		primary key auto_increment,
movieID         Integer    not null,
genreID         Integer     not null,
FOREIGN KEY (movieID) references Movie(ID),
FOREIGN KEY (genreID) references Genre(ID),
CONSTRAINT gen_mov unique (movieID, genreID));

insert into movieGenre VALUES
(1,1, 2),
(2,2, 1),
(3,3, 5),
(4,4, 1),
(5,5, 1),
(6,6, 3),
(7,7, 7),
(8,8, 1),
(9,9, 1),
(10,10, 11),
(11,11, 11),
(12,12, 1),
(13,13, 1),
(14,14, 1),
(15,15, 1);