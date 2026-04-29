create database assigment1;

create table customers(
id int identity(1,1) primary key,
first_name varchar(45),
last_name varchar(45),
email varchar(45)
);

create table bookings(
id int identity(1,1) primary key,
screening_id int,
customer_id int,
foreign key (customer_id) references customers(id),
foreign key (screening_id) references screenings(id)
);

create table reserved_seat(
id int identity(1,1) primary key,
booking_id int,
seat_id int,
foreign key (booking_id) references bookings(id),
foreign key (seat_id) references seats(id),
);

create table seats(
id int identity(1,1) primary key,
row char(1),
number int,
booking_id int,
foreign key (booking_id) references bookings(id),
);

create table rooms(
id int identity(1,1) primary key,
name varchar(45),
no_seats int,
);

create table screenings(
id int identity(1,1) primary key,
film_id int,
room_id int,
start_time datetime,
foreign key (film_id) references films(id),
foreign key (room_id) references rooms(id)
);

create table films(
id int identity(1,1) primary key,
name varchar(45),
length_min int,
);

