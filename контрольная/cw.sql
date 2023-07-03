-- 15 <->> 14 <<-> 02
--DROP TABLE IF EXISTS Products, Customers, Details

CREATE TABLE Customers(
	id int not null identity(0, 1),
	name varchar(20) not null,
	adress varchar(20) not null,
	constraint customers_pk primary key(id)
)
CREATE TABLE Details(
	id int not null,
	type varchar(20) not null,
	name varchar(20) not null,
	ed_izm varchar(20) default 'רע',
	price int check(price>=0)
	constraint details_pk primary key(id)
)
CREATE TABLE Products(
	id_storages int not null,
	id_documents int not null,
	id_customers int not null,
	id_details int not null,
	ed_izm varchar(20) default 'רע',
	count int check(count>=0),
	export_date date not null
	constraint products_pk primary key(id_storages, id_documents),
	constraint products_fk_customers foreign key(id_customers)
	references Customers(id)
	on delete cascade on update cascade,
	constraint products_fk_details foreign key(id_details)
	references Details(id)
	on delete cascade on update cascade
)
ALTER TABLE Products DROP CONSTRAINT products_fk_details;
ALTER TABLE Details DROP CONSTRAINT details_pk;
ALTER TABLE Products ALTER COLUMN id_details bigint not null;
ALTER TABLE Details ALTER COLUMN id bigint not null;
ALTER TABLE Details ADD 
	constraint details_pk primary key(id);
ALTER TABLE Products ADD 
	constraint products_fk_details foreign key(id_details)
	references Details(id)
	on delete cascade on update cascade;