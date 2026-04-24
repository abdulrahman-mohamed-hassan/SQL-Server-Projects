--lap4--
--Alter statments--
create database test99;
use test99;

-- how to add primary key to table addresses--
Alter table addresses
alter column id int not null;

Alter table addresses
add primary key(id);

Alter table people
alter column id int not null;

Alter table people
add primary key (id);
--how to add a relationship between table add , table people--
alter table people
add constraint FK_peopleAddress
foreign key (address_id) references addresses(id);
--how to drop relationship--
alter table people
drop constraint FK_PeopleAddress;

-- difference between drop and truncate--
-- drop means removing the whole table from database
-- truncate means removing the whole table from database and
-- create it again--

-- use the previous database--
-- how to enter records into tables--


