
drop table INSTRUCTOR;
create table INSTRUCTOR (
    ins_id INT PRIMARY KEY NOT NULL, 
    lastname varchar(60) NOT NULL,
    firstname varchar(60) NOT NULL,
    city varchar(50),
    country char(2)
);
select * from INSTRUCTOR;
insert into INSTRUCTOR (
    ins_id, lastname, firstname, city, country
)
values (
    1, 'Ahuja', 'Rav', 'Toronto', 'CA'
);
select * from INSTRUCTOR;
insert into INSTRUCTOR  (ins_id, lastname, firstname, city, country)
    values (
        2, 'Chong', 'Raul', 'Toronto', 'CA'
    ), (3, 'Vasudevan', 'Hima', 'Chicago', 'US');
select * from INSTRUCTOR;
select firstname, lastname, country from INSTRUCTOR 
    where city='Toronto';
update INSTRUCTOR 
    set city='Markham'
    where ins_id=1;
select * from INSTRUCTOR;
delete  from INSTRUCTOR where ins_id=2;
select * from INSTRUCTOR;
