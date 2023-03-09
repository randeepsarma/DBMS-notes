
create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL CHECK (price>0)
);

create table person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country VARCHAR(50) NOT NULL,
    car_uid UUID REFERENCES car(car_uid),
    UNIQUE(car_uid),
    UNIQUE(email)
);


insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Bentley', 'Azure', '13270.82');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Nissan', 'Cube', '14409.88');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Mitsubishi', 'Tredia', '13946.98');

insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country) values (uuid_generate_v4(),'Neville', 'Lopes', 'nlopesv@unicef.org', 'Male', '2022-12-14', 'China');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country) values (uuid_generate_v4(),'Hakeem', 'Keddie', 'hkeddiew@lulu.com', 'Male', '2022-04-24', 'Indonesia');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country) values (uuid_generate_v4(),'Ted', 'Storey', 'tstoreyx@miitbeian.gov.cn', 'Genderqueer', '2022-10-15', 'China');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country) values (uuid_generate_v4(),'Laverne', 'Magarrell', 'lmagarrelly@tinypic.com', 'Female', '2023-02-07', 'Indonesia');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country) values (uuid_generate_v4(),'Frederic', 'Kunkler', 'fkunklerz@ycombinator.com', 'Male', '2022-04-25', 'Colombia');

