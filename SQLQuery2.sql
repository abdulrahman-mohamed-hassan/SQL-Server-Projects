create database cinema;

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
);

create table reserved_seat(
id int identity(1,1) primary key,
booking_id int,
seat_id int,
);

create table seats(
id int identity(1,1) primary key,
row char(1),
number int,
booking_id int,
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
);

create table films(
id int identity(1,1) primary key,
name varchar(45),
length_min int,
);

