
create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country VARCHAR(50),
    car_id BIGINT REFERENCES car (id),
    UNIQUE(car_id)
);


insert into car (id, make, model, price) values (1, 'Bentley', 'Azure', '13270.82');
insert into car (id, make, model, price) values (2, 'Nissan', 'Cube', '14409.88');
insert into car (id, make, model, price) values (3, 'Mitsubishi', 'Tredia', '13946.98');

insert into person (first_name, last_name, email, gender, date_of_birth, country) values ('Neville', 'Lopes', 'nlopesv@unicef.org', 'Male', '2022-12-14', 'China');
insert into person (first_name, last_name, email, gender, date_of_birth, country) values ('Hakeem', 'Keddie', 'hkeddiew@lulu.com', 'Male', '2022-04-24', 'Indonesia');
insert into person (first_name, last_name, email, gender, date_of_birth, country) values ('Ted', 'Storey', 'tstoreyx@miitbeian.gov.cn', 'Genderqueer', '2022-10-15', 'China');
insert into person (first_name, last_name, email, gender, date_of_birth, country) values ('Laverne', 'Magarrell', 'lmagarrelly@tinypic.com', 'Female', '2023-02-07', 'Indonesia');
insert into person (first_name, last_name, email, gender, date_of_birth, country) values ('Frederic', 'Kunkler', 'fkunklerz@ycombinator.com', 'Male', '2022-04-25', 'Colombia');

