-- UC1--

create database AddressBook;
use AddressBook;

-- UC2--

create table contacts 
(
id int not null auto_increment primary key,
first_name varchar(20) not null,
last_name varchar(20),
address varchar(30) not null,
city varchar(15) not null,
state varchar(15) not null,
zip int not null,
phonenumber long not null,
email varchar(30) not null
);

desc contact;

-- UC3--

insert into contacts
(first_name,last_name,address,city,state,zip,phonenumber,email)
values
('Ragul','kanna','sankari','salem','tamilnadu',637301,9500744651,'ragul@gmail.com'),
('vishnu','varathan','ayyanagar','tirupur','tamilnadu',641604,9626458465,'vishnu@gmail.com');

select * from contacts;

-- UC4--

update contacts
set first_name='gokul',last_name='murugan'
where id=2;

select * from contacts;

-- UC5--

delete from contacts
where first_name='gokul';

select * from contacts;

-- UC6--

select first_name, last_name from contacts
where city='salem';

-- UC7--

select count(city) from contacts;
select count(state) from contacts;
 
 -- UC8--
 
 select * from contacts
 order by city;
 
 -- UC9--
 alter table contacts
 add type varchar(10) not null;
 
UPDATE contacts
set type='friend'
WHERE first_name='Ragul';

UPDATE contacts
set type='family'
WHERE first_name='vishnu';

select * from contacts
where type='friend';

-- UC10--

select count(type) from contacts
where type='family';

-- UC11--