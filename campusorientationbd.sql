-- function to generate ra

create or replace function generate_ra() 
   returns char(8) as
$$
begin
   return concat('a', floor(random()* (9999999-1000000 + 1) + 1000000));
end;
$$ language plpgsql;

-- create tables

create table person(
	id char(36) not null default gen_random_uuid(),
	ra char(8) not null unique default generate_ra(),
	name varchar(255) not null,
	password varchar(255)
);


create table study(
	idstudent char(36) not null,
	idcourse char(36) not null
);

create table course(
	id char(36) not null default gen_random_uuid(),
	name varchar(255) not null,
	description text,
	idteacher char(36)
);

create table class(
	idcourse char(36) not null,
	datetimestart timestamptz not null,
	datetimeend timestamptz not null,
	classroom varchar(11),
	description text
);

-- primary and foreign key alter table

alter table person add constraint person_pk primary key (id);
alter table study add constraint study_pk primary key (idstudent, idcourse);
alter table course add constraint course_pk primary key (id);
alter table class add constraint class_pk primary key (idcourse, datetimestart, datetimeend);

alter table study add constraint study_student_fk foreign key (idstudent) references person(id);
alter table study add constraint study_course_fk foreign key (idcourse) references course(id);
alter table course add constraint teaches_course_fk foreign key (idteacher) references person(id);

alter table class add constraint class_fk foreign key (idcourse) references course(id);

-- backup tables

create table backupperson(
	id char(36) not null,
	ra char(8) not null,
	name varchar(255) not null,
	password varchar(255) not null,
	backuptime timestamptz not null,
	currentuser varchar(255) not null
);

create table backupclass(
	idcourse char(36) not null,
	datetimestart timestamptz not null,
	datetimeend timestamptz not null,
	classroom varchar(11),
	description text,
	backuptime timestamptz not null,
	currentuser varchar(255) not null
);


-- trigger backup Person
create or replace function BackupPerson() returns trigger as $$
begin
	insert into backupperson values (old.id, old.ra, old.name, old.password, current_timestamp, current_user);
return new;
end; $$ LANGUAGE plpgsql;


create trigger backupperson before delete on person 
for each row execute procedure BackupPerson();


-- trigger backup Class
create or replace function BackupClass() returns trigger as $$
begin
	insert into backupclass values (old.idcourse, old.datetimestart, old.datetimeend, old.classroom, old.description
								   , current_timestamp, current_user);
return new;
end; $$ LANGUAGE plpgsql;


create trigger backupclass before delete on class 
for each row execute procedure BackupClass();


-- indexes
create index indexnameperson on person(name);
create index indexnamebackupperson on backupperson(name);
create index indexcourse on course(name);
create index indexclass on class(classroom);
create index indexnamebackupclass on backupclass(classroom);

-- View

create view completeclass as 
select cl.datetimestart, cl.datetimeend, cl.classroom, co.name as coursename, cl.description, t.name as nameteacher
from class cl
inner join course co on co.id = cl.idcourse
inner join person t on t.id = co.idteacher;


-- trigger insert view

create or replace function InsertCompleteClass() returns trigger as $$
declare personguid char(36);
declare courseguid char(36);
begin
	if (select min(id) from person where name = new.nameteacher) is not null then
		personguid := (select min(id) from person where name = new.nameteacher);
	else
		personguid := gen_random_uuid();
		insert into person values (personguid, generate_ra(), new.nameteacher);
	end if;
	
	if (select min(id) from course where name = new.coursename) is not null then
		courseguid := (select min(id) from course where name = new.coursename);
	else
		courseguid := gen_random_uuid();
		insert into course values (courseguid, new.coursename, null, personguid);
	end if;
	
	insert into class values (courseguid, new.datetimestart, new.datetimeend, new.classroom, new.description);
return new;
end; $$ LANGUAGE plpgsql;


create trigger insertClassView instead of insert on completeclass 
for each row execute procedure InsertCompleteClass();
