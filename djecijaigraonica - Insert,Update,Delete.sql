use djecijaigraonica;

select * from skupinadjete;

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

select * from teta;

update skupina set djete=2
where id=3;

update djete set ime='Mara'
where id=1;

update teta set oib=1237890017
where id=2;

delete skupina set naziv where id=3;

delete teta set ime where id=1;

delete skupinadjete set djete where id=2;