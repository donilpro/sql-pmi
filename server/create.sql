CREATE TABLE Jobs(
	id int not null primary key identity(0, 1),
	name varchar(20) not null
)
CREATE TABLE Details(
	id int not null primary key,
	type varchar(20) not null,
	name varchar(20) not null,
	ed_izm varchar(5) default '��',
	price decimal(13,2) check(price>0),
	norm int check(norm>0)
)
CREATE TABLE Normals(
	det_id int not null,
	op_num int not null,
	job_id int not null,
	rank int check(rank>0),
	job_num int not null,
	prep_time int check(prep_time>=0),
	unit_time int check(unit_time>=0),
	constraint pk primary key(det_id, op_num),
	constraint norms_job_id foreign key(job_id)
	references Jobs(id)
	on delete cascade on update cascade,
	constraint norms_det_id foreign key(det_id)
	references Details(id)
)
SELECT * FROM Normals

--ALTER TABLE Normals
--ADD primary key (op_num)

DROP TABLE dbo.Normals
--DROP TABLE Details
--DROP TABLE Jobs


