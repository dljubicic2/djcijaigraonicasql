create database djecijaigraonica;
use djecijaigraonica;

create table skupina (
	id int not null primary key identity (1,1),
	djete int not null,
	naziv varchar(50) null
);
create table teta (
	id int not null primary key identity (1,1),
	ime varchar(50) null,
	prezime varchar(50) null,
	oib char(11) null
);
create table djete (
	id int not null primary key identity (1,1),
	ime varchar(50) null,
	prezime varchar(50) null,
	dob int null
);
create table skupinadjete  (
	skupina int not null,
	djete int not null
);

-- veze izme?u tablica

alter table skupina add foreign key (djete) references djete (id);
alter table skupinadjete add foreign key (skupina) references skupina (id);
alter table skupinadjete add foreign key (djete) references djete (id);

-- insert u tablicu

insert into djete (ime,prezime,dob)
values ('Ante','Antic',6),
('Marija','Maric',5),
('Anita','Antic',7);

insert into skupina (djete,naziv)
values (1,'Zvrk'),
(2,'Bubamara'),
(3,'Leptirica');

insert into teta (ime,prezime,oib)
values ('Marija','Maric',123789991),
('Silvija','Silvic',5556799012),
('Ana','Anic',14500967845);

insert into skupinadjete (skupina,djete)
values (1,1),
(2,2),
(3,3);

-- update tablice

update skupina set djete=2
where id=3;

update djete set ime='Mara'
where id=1;

update teta set oib=1237890017
where id=2;

-- delete tablice

delete skupina set naziv where id=3;

delete teta set ime where id=1;

delete skupinadjete set djete where id=2;