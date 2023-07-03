-- 16A <->> 16B <->> 14
DROP TABLE IF EXISTS Export, Details, Storage


CREATE TABLE Storage(
	id int not null identity(0, 1),
	name varchar(20) not null,
	constraint storage_pk primary key(id)
)
CREATE TABLE Details(
	storage_id int not null,
	det_id int not null,
	ed_izm varchar(5) default 'רע',
	count int check(count>=0),
	operation_date date not null,
	constraint det_pk primary key(storage_id, det_id),
	constraint storage_fk foreign key(storage_id)
	references Storage(id)
	on delete cascade on update cascade
)
CREATE TABLE Export(
	storage_id int not null,
	doc_id int not null,
	customer_id int not null,
	det_id int not null,
	ed_izm varchar(5) default 'רע',
	count int check(count>=0),
	export_date date not null,
	constraint export_pk primary key(storage_id, doc_id),
	constraint export_fk foreign key(storage_id, det_id)
	references Details(storage_id, det_id)
	on delete cascade on update cascade
)
ALTER TABLE Export DROP CONSTRAINT export_fk;
ALTER TABLE Details DROP CONSTRAINT det_pk;
ALTER TABLE Export ALTER COLUMN det_id bigint not null;
ALTER TABLE Details ALTER COLUMN det_id bigint not null;
ALTER TABLE Details ADD CONSTRAINT
det_pk primary key(storage_id, det_id)
ALTER TABLE Export ADD CONSTRAINT
export_fk foreign key(storage_id, det_id)
	references Details(storage_id, det_id)
	on delete cascade on update cascade;
